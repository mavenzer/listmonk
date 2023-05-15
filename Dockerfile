# Use an official Alpine runtime as a parent image
FROM alpine:latest

# Set the working directory in the container
WORKDIR /listmonk

# Install any needed packages
RUN apk --no-cache add ca-certificates tzdata

# Copying Files to the working directory
COPY listmonk config.toml.sample config-demo.toml ./

# Exposing the PORT
EXPOSE 9000


CMD ["./listmonk"]
