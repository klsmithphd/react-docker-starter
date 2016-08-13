# React Docker Starter

This project allows you to get up and running with developing a React application
within a Docker container while installing no dependencies to your host operating
system.

You are free to use whatever text editor or IDE you prefer on your host, changes
will automatically be reflected in the live app running locally via the
`webpack-dev-server` running in the container.

This project was created following the extremely helpful post provided at
http://jdlm.info/articles/2016/03/06/lessons-building-node-app-docker.html as
well as some of the React tutorials available at https://egghead.io/

## To start
1. Install the [Docker Engine](https://docs.docker.com/engine/installation/). If
you are on a Mac or Windows system, be sure to install the now-out-of-private-beta
[Docker for Windows](https://docs.docker.com/engine/installation/windows/#docker-for-windows)
or [Docker for Mac](https://docs.docker.com/engine/installation/mac/#docker-for-mac).
2. `docker-compose build`
3. `docker-compose up`
4. Open http://localhost:3333 in a browser window.
5. Make any edits you like to the application code and see the changes reflected
live in your browser.
6. I'd also recommend looking at the [React Developer Tools Chrome Plugin](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi?hl=en) as well.


If you need to shell into the container (e.g. to install new npm dependencies),
you can just issue:
    docker-compose exec react /bin/bash
