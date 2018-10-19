# Docker-based Ruby stack

[![Build Status](https://travis-ci.com/wodby/docker4ruby.svg?branch=master)](https://travis-ci.com/wodby/docker4ruby)

## Introduction

Docker4Ruby is a set of docker images optimized for Ruby applications. Use `docker-compose.yml` file from the [latest stable release](https://github.com/wodby/docker4ruby/releases) to spin up local environment on Linux, Mac OS X and Windows. 

* Read the docs on [**how to use**](https://wodby.com/docs/stacks/ruby/local#usage)
* Follow [@wodbycloud](https://twitter.com/wodbycloud) for updates announcements
* Join [community slack](https://slack.wodby.com) to ask questions

## Stack

The Ruby stack consist of the following containers:

| Container       | Versions           | Service name    | Image                              | Default |
| -------------   | ------------------ | --------------- | ---------------------------------- | ------- |
| [Nginx]         | 1.15, 1.14         | `nginx`         | [wodby/nginx]                      | ✓       |
| [Ruby]          | 2.5, 2.4, 2.3      | `ruby`          | [wodby/ruby]                       | ✓       |
| [Sidekiq]       |                    | `sidekiq`       | [wodby/ruby]                       |         |
| [PostgreSQL]    | 10, 9.x            | `postgres`      | [wodby/postgres]                   | ✓       |
| [Redis]         | 5, 4               | `redis`         | [wodby/redis]                      | ✓       |
| [MariaDB]       | 10.3, 10.2, 10.1   | `mariadb`       | [wodby/mariadb]                    |         |
| [Node.js]       | 10, 8, 6           | `node`          | [wodby/node]                       |         |
| [Varnish]       | 4.1                | `varnish`       | [wodby/varnish]                    |         |
| [Solr]          | 7.x, 6.6, 5.5      | `solr`          | [wodby/solr]                       |         |
| [Elasticsearch] | 6.x, 5.6, 5.5, 5.4 | `elasticsearch` | [wodby/elasticsearch]              |         |
| [Kibana]        | 6.x, 5.6, 5.5, 5.4 | `kibana`        | [wodby/kibana]                     |         |
| [Memcached]     | 1                  | `memcached`     | [wodby/memcached]                  |         |
| [Rsyslog]       | latest             | `rsyslog`       | [wodby/rsyslog]                    |         |
| [AthenaPDF]     | 2.10.0             | `athenapdf`     | [arachnysdocker/athenapdf-service] |         |
| [Mailhog]       | latest             | `mailhog`       | [mailhog/mailhog]                  | ✓       |
| [OpenSMTPD]     | 6.0                | `opensmtpd`     | [wodby/opensmtpd]                  |         |
| Adminer         | 4.6                | `adminer`       | [wodby/adminer]                    |         |
| Portainer       | latest             | `portainer`     | [portainer/portainer]              | ✓       |
| Traefik         | latest             | `traefik`       | [_/traefik]                        | ✓       |

## Documentation

Full documentation is available at https://wodby.com/docs/stacks/ruby/local

## Maintenance

We regularly update images used in this stack and release them together, see [releases page](https://github.com/wodby/docker4ruby/releases) for detailed changelog and update instructions.

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
[portainer/portainer]: https://hub.docker.com/portainer/portainer
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
