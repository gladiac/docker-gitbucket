# docker-gitbucket
A small gitbucket docker image based on alpine

Build Instructions
------------------

```bash
$ git clone https://github.com/gladiac1337/docker-gitbucket.git
$ cd docker-gitbucket
$ docker build -t gitbucket:latest -t gitbucket:4.21.0 .
```

Usage Example
-------------

```bash
$ docker run --rm -ti -p 80:80 -v /var/lib/gitbucket:/var/lib/gitbucket gitbucket:latest
```
