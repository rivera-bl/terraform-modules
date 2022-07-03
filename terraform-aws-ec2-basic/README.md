# Project Title

![architecture](https://github.com/rivera-bl/[reponame]/blob/master/architecture.jpg?raw=true)
## Description

A basic EC2 instance with sane defaults for when you need to test something asap, not meant to be used in production. Sane defaults because if no subnet_id and vpc_id is specified, it will launch the instance in the subnets of the default VPC.

8080 port is open for testing of web services

TODO: add security group rules dinamically on the module call

1. testing
2. markdown
3. rendering on github

this is a line  
and this is other line

this should respect the t auto-wrap  
alkdjfkljdsalkfjalksdjfk adsf asd f dsaf sad fsa df dsaf ads f sadf asd f dsaf 
dsa f asd f dsa f asdf sad f dsa fdsa f dsa f dsa f dsaf sad f dsa f dsaf ads f 
sadf sad f dsaf dsa fdsa fdsa f d

kasdjfkjdsakfjkdsjkfjdskjkjkd fdskjf sdf sdf dsf ds fs df ds f dsf ds f dsf ds 
fds fdsfs df sd f dsf s fds f dsf dsf ds f dsf ds fds f s fs 
fkdsjfkdsjfkjdsfkjdsf sd fdf

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
