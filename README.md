# docker-terraform-template
A template to quickly build a terraform docker environment.

## Environment
- Docker version 19.03.12, build 48a66213fe
- docker-compose version 1.26.2, build eefe0d31

## Stack
- Terraform 0.13.4
- Packer 1.6.4
- AWS CLI 2.0.56

## Setup 
```
$ docker-compose build
```

## Starts the terraform service and runs bash
```
$ docker-compose run --rm terraform bash
```

Then make sure that each command is available in the Docker container.

```
# terraform --version
Terraform v0.13.4
```

```
# packer --version 
1.6.4
```

```
# aws --version
aws-cli/2.0.56 Python/3.7.3 Linux/4.19.76-linuxkit exe/x86_64.debian.10
```

The version of command can be changed by ARG in the Dockerfile.

```Dockerfile
ARG aws_cli_version="2.0.56"
ARG terraform_version="0.13.4"
ARG packer_version="1.6.4"
```

Of course, don't forget the `docker-compose build`.

## References

### Version list
- [hashicorp/terraform](https://github.com/hashicorp/terraform/releases)
- [hashicorp/packer](https://github.com/hashicorp/packer/releases)
- [aws/aws-cli](https://github.com/aws/aws-cli/releases)