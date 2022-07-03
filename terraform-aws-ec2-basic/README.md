# Project Title

![architecture](https://github.com/rivera-bl/[reponame]/blob/master/architecture.jpg?raw=true)
## Description

A basic EC2 instance with sane defaults for when you need to test something asap, not meant to be used in production. Sane defaults because if no subnet_id and vpc_id is specified, it will launch the instance in the subnets of the default VPC.

8080 port is open for testing of web services

TODO: add security group rules dinamically on the module call

1. testing
2. markdown
3. rendering on github

## Getting Started

### Requirements

* Describe any prerequisites, libraries, OS version, etc., needed before installing program.
* ex. Windows 10

### Usage

* How/where to download your program
* Any modifications needed to be made to files/folders

## Known Issues

If specifying more than 3 instances there may be a problem because it is launching the instances in the subnets using the count.index, and there isn't more than 3 subnets in the default VPC

## License

This project is licensed under the Apache License 2.0 - see the LICENSE file for details.

## Acknowledgments

* [awesome-readme](https://github.com/matiassingers/awesome-readme)
