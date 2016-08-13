# Pinning a particular node version to prevent drift
# Could also use node:latest if you prefer
FROM node:6.3.1

# Create a user within the image (appuser) to run as
RUN useradd --user-group --create-home --shell /bin/false appuser

ENV HOME=/home/appuser

COPY package.json npm-shrinkwrap.json $HOME/workdir/
RUN chown -R appuser:appuser $HOME/*

USER appuser

WORKDIR $HOME/workdir

RUN npm install

EXPOSE 3333
CMD ["npm", "start"]
