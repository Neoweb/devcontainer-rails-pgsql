# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.183.0/containers/ruby/.devcontainer/base.Dockerfile

# [Choice] Ruby version: 3, 3.0, 2, 2.7, 2.6
ARG VARIANT="2.7"
FROM mcr.microsoft.com/vscode/devcontainers/ruby:0-${VARIANT}

# [Option] Install Node.js
ARG INSTALL_NODE="true"
ARG NODE_VERSION="lts/*"
RUN if [ "${INSTALL_NODE}" = "true" ]; then su vscode -c "umask 0002 && . /usr/local/share/nvm/nvm.sh && nvm install ${NODE_VERSION} 2>&1"; fi

# [Optional] Uncomment this section to install additional OS packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends libpq-dev postgresql postgresql-client

# Install additional gems.
RUN gem install rubocop rubocop-rspec rubocop-rails rubocop-performance solargraph

# [Optional] Uncomment this line to install global node packages.
# RUN su vscode -c "source /usr/local/share/nvm/nvm.sh && npm install -g <your-package-here>" 2>&1

COPY ./ruby-on-rails/docker-entrypoint.sh /usr/bin/docker-entrypoint.sh
RUN chmod +x /usr/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]

# Install Stripe CLI
RUN wget -O /tmp/stripe-1.6.4.deb "https://github.com/stripe/stripe-cli/releases/download/v1.6.4/stripe_1.6.4_linux_amd64.deb" \
    && dpkg -i /tmp/stripe-1.6.4.deb

EXPOSE 3000
