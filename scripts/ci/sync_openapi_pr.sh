#!/usr/bin/env bash
# Check for code-generation changes, commit + force-push the sync branch, and
# create or update the corresponding pull request.
#
# Usage (locally):
#   GH_TOKEN=<pat> bash scripts/ci/sync_openapi_pr.sh
set -euo pipefail

BRANCH="task/sync-openapi-spec-$(date +%Y%m%d%H%M%S)"

if git diff --quiet && git diff --cached --quiet \
   && [ -z "$(git ls-files --others --exclude-standard)" ]; then
  echo "No changes after code generation; skipping."
  exit 0
fi

EXISTING_PR=$(gh pr list --search "head:task/sync-openapi-spec" --json number,headRefName --jq '.[0]')
if [ -n "$EXISTING_PR" ] && [ "$EXISTING_PR" != "null" ]; then
  OLD_PR_NUM=$(echo "$EXISTING_PR" | jq -r '.number')
  OLD_BRANCH=$(echo "$EXISTING_PR" | jq -r '.headRefName')
  gh pr close "$OLD_PR_NUM" --comment "Superseded by a newer sync."
  git push origin --delete "$OLD_BRANCH" || true
fi

NEW_ENDPOINTS=$(bash scripts/ci/diff_openapi_endpoints.sh || true)

git config user.name "github-actions[bot]"
git config user.email "github-actions[bot]@users.noreply.github.com"
git checkout -B "$BRANCH"
git add lib/
git commit -m "📋 Sync OpenAPI spec and regenerate API clients

Auto-generated from InmoBackend OpenAPI spec."
git push -u origin "$BRANCH"

BODY="## 📋 Synced OpenAPI spec from backend

This PR updates the OpenAPI specification and regenerates Dart API clients.

### What changed
- Updated \`schema/schema.json\` from InmoBackend
- Regenerated Dart models and Retrofit API clients via \`swagger_parser\`
${NEW_ENDPOINTS:+
$NEW_ENDPOINTS
}
### Action required
- [ ] Review generated API client code in \`lib/src/api/\`
- [ ] Verify models match expected DTOs
- [ ] Bump \`inmo_api_sdk\` git ref in \`inmo_mobile\` after merge"

gh pr create \
  --title "📋 Sync OpenAPI spec and regenerate API clients" \
  --body "$BODY" \
  --base main \
  --head "$BRANCH"
