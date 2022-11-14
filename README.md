# Docker-based Ruby stack

[![Build Status](https://github.com/wodby/docker4ruby/workflows/Run%20tests/badge.svg)](https://github.com/wodby/docker4ruby/actions)

## Introduction

Docker4Ruby is a set of docker images optimized for Ruby applications (suitable for Ruby on Rails). Use `docker-compose.yml` file from the [latest stable release](https://github.com/wodby/docker4ruby/releases) to spin up local environment on Linux, Mac OS X and Windows. 

* Read the docs on [**how to use**](https://wodby.com/docs/stacks/ruby/local#usage)
* Ask questions on [Slack](http://slack.wodby.com/)
* Follow [@wodbycloud](https://twitter.com/wodbycloud) for updates announcements

## Stack

The Ruby stack consist of the following containers:

| Container       | Versions           | Image                              | ARM64 support | Enabled by default |
|-----------------|--------------------|------------------------------------|---------------|--------------------|
| [Nginx]         | 1.23, 1.22, 1.21   | [wodby/nginx]                      | ✓             | ✓                  |
| [Ruby]          | 3.1, 3.0, 2.7      | [wodby/ruby]                       | ✓             | ✓                  |
| [Sidekiq]       |                    | [wodby/ruby]                       | ✓             |                    |
| [PostgreSQL]    | 14, 13, 12, 11, 10 | [wodby/postgres]                   | ✓             | ✓                  |
| [Redis]         | 7, 6, 5            | [wodby/redis]                      | ✓             | ✓                  |
| [MariaDB]       | 10.8-10.3          | [wodby/mariadb]                    | ✓             |                    |
| [Node.js]       | 18, 16, 14         | [wodby/node]                       |               |                    |
| [Varnish]       | 6.0, 4.1           | [wodby/varnish]                    |               |                    |
| [Solr]          | 8, 7, 6, 5         | [wodby/solr]                       |               |                    |
| [Elasticsearch] | 7, 6               | [wodby/elasticsearch]              |               |                    |
| [Kibana]        | 7, 6               | [wodby/kibana]                     |               |                    |
| [Memcached]     | 1                  | [wodby/memcached]                  |               |                    |
| [Rsyslog]       | latest             | [wodby/rsyslog]                    |               |                    |
| [AthenaPDF]     | 2.16.0             | [arachnysdocker/athenapdf-service] |               |                    |
| [Mailhog]       | latest             | [mailhog/mailhog]                  |               | ✓                  |
| [OpenSMTPD]     | 6.0                | [wodby/opensmtpd]                  |               |                    |
| Adminer         | 4.6                | [wodby/adminer]                    |               |                    |
| Traefik         | latest             | [_/traefik]                        | ✓             | ✓                  |
                                                                                                 
## Documentation                                                                                 
                                                                                                 
Full documentation is available at https://wodby.com/docs/stacks/ruby/local             

## Images' tags

Images tags format is `[VERSION]-[STABILITY_TAG]` where:

`[VERSION]` is the _version of an application_ (without patch version) running in a container, e.g. `wodby/nginx:1.15-x.x.x` where Nginx version is `1.15` and `x.x.x` is a stability tag. For some images we include both major and minor version like Ruby `2.5`, for others we include only major like Redis `5`. 

`[STABILITY_TAG]` is the _version of an image_ that corresponds to a git tag of the image repository, e.g. `wodby/mariadb:10.2-3.3.8` has MariaDB `10.2` and stability tag [`3.3.8`](https://github.com/wodby/mariadb/releases/tag/3.3.8). New stability tags include patch updates for applications and image's fixes/improvements (new env vars, orchestration actions fixes, etc). Stability tag changes described in the corresponding a git tag description. Stability tags follow [semantic versioning](https://semver.org/).

We highly encourage to use images only with stability tags.

## Maintenance

We regularly update images used in this stack and release them together, see [releases page](https://github.com/wodby/docker4ruby/releases) for full changelog and update instructions. Most of routine updates for images and this project performed by [the bot](https://github.com/wodbot) via scripts located at [wodby/images](https://github.com/wodby/images).

## Other Docker4x projects

* [docker4php](https://github.com/wodby/docker4php)
* [docker4drupal](https://github.com/wodby/docker4drupal)
* [docker4wordpress](https://github.com/wodby/docker4wordpress)
* [docker4python](https://github.com/wodby/docker4python)

## License

This project is licensed under the MIT open source license.

[AthenaPDF]: https://wodby.com/docs/stacks/ruby/containers#athenapdf
[Elasticsearch]: https://wodby.com/docs/stacks/elasticsearch
[Kibana]: https://wodby.com/docs/stacks/elasticsearch
[Mailhog]: https://wodby.com/docs/stacks/ruby/containers#mailhog
[MariaDB]: https://wodby.com/docs/stacks/ruby/containers#mariadb
[Memcached]: https://wodby.com/docs/stacks/ruby/containers#memcached
[Nginx]: https://wodby.com/docs/stacks/ruby/containers#nginx
[Node.js]: https://wodby.com/docs/stacks/ruby/containers#node
[OpenSMTPD]: https://wodby.com/docs/stacks/ruby/containers#opensmtpd
[PostgreSQL]: https://wodby.com/docs/stacks/ruby/containers#postgres
[Redis]: https://wodby.com/docs/stacks/ruby/containers#redis
[Rsyslog]: https://wodby.com/docs/stacks/ruby/containers#rsyslog
[Ruby]: https://wodby.com/docs/stacks/ruby/containers#ruby
[Sidekiq]: https://wodby.com/docs/stacks/ruby/containers#sidekiq
[Solr]: https://wodby.com/docs/stacks/solr
[Varnish]: https://wodby.com/docs/stacks/ruby/containers#varnish

[_/traefik]: https://hub.docker.com/_/traefik
[arachnysdocker/athenapdf-service]: https://hub.docker.com/r/arachnysdocker/athenapdf-service
[blackfire/blackfire]: https://hub.docker.com/r/blackfire/blackfire
[mailhog/mailhog]: https://hub.docker.com/r/mailhog/mailhog
[wodby/adminer]: https://hub.docker.com/r/wodby/adminer
[wodby/elasticsearch]: https://github.com/wodby/elasticsearch
[wodby/kibana]: https://github.com/wodby/kibana
[wodby/mariadb]: https://github.com/wodby/mariadb
[wodby/memcached]: https://github.com/wodby/memcached
[wodby/nginx]: https://github.com/wodby/nginx
[wodby/node]: https://github.com/wodby/node
[wodby/opensmtpd]: https://github.com/wodby/opensmtpd
[wodby/postgres]: https://github.com/wodby/postgres
[wodby/redis]: https://github.com/wodby/redis
[wodby/rsyslog]: https://hub.docker.com/r/wodby/rsyslog
[wodby/ruby]: https://github.com/wodby/ruby
[wodby/solr]: https://github.com/wodby/solr
[wodby/varnish]: https://github.com/wodby/varnish
