# dockerhub-build-issue

Builds on Docker Hub against ruby:alpine images kept failing. This is the bug report.

Root cause:

https://wiki.alpinelinux.org/wiki/Release_Notes_for_Alpine_3.14.0#faccessat2

Alpine 3.14 has some breaking changes, please keep note:

>Alpine Linux 3.14 requires one of the following:
>- runc v1.0.0-rc93
>- Docker 20.10.0

Without one of the above, even simple things like running make fail.
References: 

- https://github.com/docker-library/ruby/issues/351
- https://bugzilla.redhat.com/show_bug.cgi?id=1900021
- https://github.com/docker-library/php/issues/1177
- https://gitlab.alpinelinux.org/alpine/aports/-/issues/12396
- https://github.com/alpinelinux/docker-alpine/issues/182
