# Project builder

The image dor building project.

## Tools:

* bower
* grunt
* gulp
* npm
* composer

# Usage

For interactive use run the container in the project directory

```
docker run \
    -ti \
    --rm \
    -v $( pwd ):/opt/web \
    -w /opt/web \
    kendu/projectbuilder \
    bash
```
Or you can run specific command(s):

```
docker run \
    -ti \
    --rm \
    -v $( pwd ):/opt/web \
    -w /opt/web \
    kendu/projectbuilder \
    bash -c "<command>"
```
