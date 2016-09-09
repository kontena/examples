# drone

See http://readme.drone.io/0.5/manage/server/ for the full docs.

## Server & Agent

Go to https://github.com/organizations/ORG/settings/applications/new and set
https://example.com:8080/authorize as the callback url.

```
kontena vault write DRONE_GITHUB_CLIENT_ID <client_id_from_github>
kontena vault write DRONE_GITHUB_CLIENT_SECRET <client_secret_from_github>
kontena vault write DRONE_ADMIN_USERNAMES matti,nevalla,jakolehm
kontena vault write DRONE_SHARED_SECRET asdfasdfasdfasdfasdfasdfasdfasdfgenerateyourown

kontena app deploy
```

Note: you prob. also want connect server to a Kontena loadbalancer for GitHub hooks etc.

## CLI

See `compile_drone_cli.sh` on how to compile your own 0.5 CLI.
