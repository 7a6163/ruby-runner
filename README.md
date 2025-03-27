# Ruby Runner

A lightweight Docker container for running Ruby applications with essential dependencies.

## Overview

Ruby Runner is a Docker image based on Ruby 2.7.8 Alpine that provides a ready-to-use environment for running and testing Ruby applications. It comes pre-installed with common dependencies needed for Ruby/Rails development and testing.

## Features

- Based on Ruby 2.7.8 Alpine for minimal image size
- Pre-installed development tools and dependencies
- Multi-architecture support (AMD64 and ARM64)
- Optimized for CI/CD environments
- Pre-configured for test environments

## Pre-installed Dependencies

- Ruby 2.7.8
- Bundler 2.4.22
- Node.js 18.9.1 and npm 8.10.0
- PostgreSQL 12 development libraries
- Git, curl, and other essential tools
- ImageMagick for image processing
- Build tools for native extensions

## Usage

### Basic Usage

```bash
docker run --rm -it ghcr.io/7a6163/ruby-runner:latest bash
```

### Running with a Volume

```bash
docker run --rm -it -v $(pwd):/app ghcr.io/7a6163/ruby-runner:latest bash
```

### Running Tests

```bash
docker run --rm -v $(pwd):/app ghcr.io/7a6163/ruby-runner:latest bundle exec rspec
```

## Environment Variables

The following environment variables are pre-configured:

- `RAILS_ENV=test`
- `RACK_ENV=test`

## Docker Image

The Docker image is available on both Docker Hub and GitHub Container Registry:

- Docker Hub: `7a6163/ruby-runner:latest`
- GitHub Container Registry: `ghcr.io/7a6163/ruby-runner:latest`

Both registries provide multi-architecture images supporting:
- linux/amd64
- linux/arm64

## Building Locally

If you want to build the image locally:

```bash
docker build -t ruby-runner .
```

## License

[MIT License](LICENSE)
