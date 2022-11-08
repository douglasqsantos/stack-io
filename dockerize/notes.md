# Notes

```bash
# Initialize the go module
go mod init dockerize
# go help mod tidy
# Tidy makes sure go.mod matches the source code in the module.
# It adds any missing modules necessary to build the current module's
# packages and dependencies, and it removes unused modules that
# don't provide any relevant packages. It also adds any missing entries
# to go.sum and removes any unnecessary ones.
go mod tidy
# Build local image to test
docker build -f Dockerfile -t webserver .
# Run the docker image to test
docker run --rm -p 8080:8080 webserver
```
