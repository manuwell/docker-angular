# Angular 2 Application

If you don't want to install nodejs, angular and other stuffs
on your machine, please consider use this project.

Its an example of running an Angular application inside docker container,
without the need to install any dependencies.

# Motivation

Trying to run and develop a sample Angular2 application without installing
node environment on my machine.

# Pre-requisites

* docker

# Setup

```
git clone https://github.com/manuwell/docker-angular.git
cd docker-angular

make setup
```

# Development cycle

Once `node`, `npm` and `ng` are trapped inside a container we need
to expose those binaries into our current shell session.

```
source functions.sh
```

After loading these functions, you will be able to execute any of mentioned
programs directly from your shell.

# What I have?

For now I just got:
```
ng serve
```

See in your browser: `http://localhost:4200`


to be continue ...
