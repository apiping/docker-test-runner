# Docker Image for the API-Ping Test Runner

### Building the image

```shell
docker build -t skitsanos/api-ping --progress=plain --no-cache .
```

Remove dangling images after the build
```shell
docker images -f "dangling=true" -q | xargs docker rmi >/dev/null 2>&1
```

Verify hurl:
```shell
docker run --rm skitsanos/api-ping hurl --version
````

Mount `tests` folder and execute test `demo.hurl` via Hurl
```shell
docker run --rm -v "$(pwd)/tests":/tests skitsanos/api-ping hurl /tests/demo.hurl
```

Verify httpx:

```shell
docker run --rm skitsanos/api-ping httpx --version
```