# Project builder

The image dor building project.

## Tools:

* bower
* grunt
    * grunt-autoprefixer
    * grunt-cli
    * grunt-contrib-concat
    * grunt-contrib-jshint
    * grunt-contrib-sass
    * grunt-contrib-uglify
    * grunt-contrib-watch
    * grunt-modernizr
    * grunt-version
    * grunt-wp-assets
    * load-grunt-tasks
    * time-grunt

* gulp
    * gulp-concat
    * gulp-continuous-concat
    * gulp-csslint
    * gulp-jshint
    * gulp-minify-css
    * gulp-sass
    * gulp-uglify
    * gulp-watch
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
