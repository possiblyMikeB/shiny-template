
# ShinyProxy Template

This repository provides example deployment details of Shiny app which will be hosted by [ShinyProxy](https://www.shinyproxy.io).

https://www.shinyproxy.io/deploying-apps/

To build a Docker image from the Dockerfile in this repository, navigate into the root directory of this repository and run

```
sudo make image
```

Running the image for testing purposes outside ShinyProxy can be done using

```
sudo docker run -it -p 3838:3838 apps/shiny-template
```


