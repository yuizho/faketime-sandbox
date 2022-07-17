# libfaketime Sandbox
A sandbox project of libfaketime 
https://github.com/wolfcw/libfaketime

# Getting Started
## Build
build war and build docker image
```sh
./mvnw clean package && docker build -t faketime_sandbox .
````

## Run Container
run container by absolute datetime configuration
```sh
docker run \
  --rm \
  --env=FAKETIME='2020-12-25 20:30:00' \
  --name faketime_sandbox \
  -p 8080:8080 \
  faketime_sandbox
```

run container by relative datetime configuration
```sh
docker run \
  --rm \
  --env=FAKETIME='+30d' \
  --name faketime_sandbox \
  -p 8080:8080 \
  faketime_sandbox
```

now you can open the following demo page
http://localhost:8080/faketime/now