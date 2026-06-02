# inmo_api_sdk

Internal API SDK package for Inmo Dart clients.

## Purpose

This package hosts:

- Generated OpenAPI clients and DTOs (Retrofit + Dio)
- Generated repository adapters
- Shared API transport, result, and error helpers

## Regenerate from OpenAPI spec

After updating `lib/src/schema/schema.json`:

```bash
dart run generate_api
```

Or run the steps manually:

```bash
dart run swagger_parser -f swagger_parser.yaml
dart run scripts/patch_datetime_clients.dart
dart run build_runner build --delete-conflicting-outputs --force-jit --build-filter="lib/**"
dart run scripts/generate_api_repos.dart
```

## Consumption in inmo_mobile

```yaml
dependencies:
  inmo_api_sdk:
    git:
      url: https://github.com/CodeFlow-Dynamics/dart_inmo_sdk.git
      ref: main
```

After SDK changes land on `main`, refresh the dependency:

```bash
flutter pub upgrade inmo_api_sdk
```

## Local development override

When working on the SDK alongside the app, use `pubspec_overrides.yaml` (do not commit):

```yaml
dependency_overrides:
  inmo_api_sdk:
    path: ../dart_inmo_sdk
```

## CI

OpenAPI sync is triggered by `repository_dispatch` from InmoBackend (`openapi-spec-updated`).
See `.github/workflows/sync-openapi.yml`.
