FROM rocker/shiny

#install system libs required by R packages
RUN apt-get update && apt-get install -y libcurl4-openssl-dev \
  libssl-dev

#install R packages
RUN R -e "install.packages(c('shiny','shinyWidgets','shinydashboard','magrittr', 'plyr','dplyr','stringr','reshape2','tidyr', 'arules','arulesViz','datasets', 'ggplot2','plotly'))"

#Add app
COPY . /srv/shiny-server/base-shiny-app
