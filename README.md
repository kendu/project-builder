# Project builder

The image for building web app resources.


## Tools:

* node.js
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
## Making your life easier
I recoomend aliasing this commands as this makes their reuse much much easier.
Add the following line into your .bashrc file (`~/.bashrc`) If you aren't using
bash, then add the lines to apropriate shell config  files.

```
alias builder='docker run \
    -ti \
    --rm \
    -v $( pwd ):/opt/web \
    -w /opt/web \
    kendu/projectbuilder \
    bash'
```
You can of course name the alias anything you wish, builder is just an example.
