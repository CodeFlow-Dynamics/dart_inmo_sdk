#!/usr/bin/env bash
# Compare the OpenAPI schema.json on HEAD (main) vs the working tree and print
# a Markdown summary of added, removed, and updated endpoints.
# Outputs nothing when there are no changes.
#
# Usage:  bash scripts/ci/diff_openapi_endpoints.sh [path/to/schema.json]
set -euo pipefail

SCHEMA="${1:-lib/src/schema/schema.json}"
OLD_SPEC=$(mktemp)
trap 'rm -f "$OLD_SPEC"' EXIT

if ! git show HEAD:"$SCHEMA" > "$OLD_SPEC" 2>/dev/null; then
  echo '{"paths":{}}' > "$OLD_SPEC"
fi

dart scripts/ci/diff_openapi_endpoints.dart "$OLD_SPEC" "$SCHEMA"
