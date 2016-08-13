# Pinning a particular node version to prevent drift
# Could also use node:latest if you prefer
FROM node:6.3.1

# Create a user within the image (appuser) to run as
RUN useradd --user-group --create-home --shell /bin/false appuser

ENV HOME=/home/appuser

USER appuser

WORKDIR $HOME/workdir
