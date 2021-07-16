# Devcontainer for Ruby on Rails

This devcontainer was created to develop on Ruby-on-Rails applications
with a Postgres database and a SMTP server.

Everything in this devcontainer can be modified. It is just a **basic template**.

## Using within your project

If you want to use this devcontainer template for your projects,
you just have to clone the repository in the root of your project.

Inside `.devcontainer/devcontainer.json`, you can add all the extension you
wish to see in your workspace and in `.devcontainer/docker-compose.yml` you
can freely add any other service.

To add new Gems, node packages or OS packages, you can directly edit the
`Dockerfile` in `.devcontainer/ruby-on-rails`.

## Versions

The webapp container is configured to run on `ruby 2.7` but you can
easily change this by modifing the `VARIANT` build arg in
`.devcontainer/docker-compose.yml`.

It is also configured to run on `lts/*` version of node. It can be changed
exactly the same way.
