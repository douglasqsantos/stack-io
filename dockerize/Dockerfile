# Base Image
FROM golang:1.19-alpine

# Work directory
WORKDIR /app

# Copy all the files
COPY . .

# Download the dependencies
RUN go mod download

# Build the code
RUN go build -o /webserver

# Export default Port
EXPOSE 8080

# Run the executable... -> The image is failing because we do not have database configuration
CMD [ "/webserver" ]