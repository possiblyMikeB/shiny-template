FROM rocker/r-base

MAINTAINER Michael Blackmon "miblackmon@davidson.edu"

# system libraries of general use
RUN apt-get update && apt-get install -y \
    sudo \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libssh2-1-dev \
    libssl1.1

# system library dependency for application
RUN apt-get update && apt-get install -y \
    libmpfr-dev

# R packages required by application 
RUN install2.r shiny rmarkdown Rmpfr

# copy the app to the image
RUN mkdir /root/repo
COPY repo /root/repo

COPY Rprofile.site /usr/lib/R/etc/

EXPOSE 3838

CMD ["R", "-e", "shiny::runApp('/root/repo/app')"]
