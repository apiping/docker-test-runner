# Docker Image for the API-Ping Test Runner

### Building the image

```shell
docker build -t skitsanos/api-ping --progress=plain --no-cache .
```

Verify hurl:
```shell
docker run --rm skitsanos/api-ping hurl --version
````

Mount `tests` folder and execute test `demo.hurl` via Hurl
```shell
docker run --rm -v "$(pwd)/tests":/tests skitsanos/api-ping hurl /tests/demo.hurl
```

httpx:

```shell
docker run --rm skitsanos/api-ping httpx --version
```