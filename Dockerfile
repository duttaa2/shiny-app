FROM rocker/shiny

#install system libs required by R packages
RUN apt-get update && apt-get install -y libcurl4-openssl-dev \
  libssl-dev

#install R packages
RUN R -e "install.packages(c('shinydashboard', 'ggplot2','plotly'))"

#Add app
COPY . /srv/shiny-server/base-shiny-app
