# Updated Dockerfile to trigger GitHub Actions
FROM rocker/rstudio:4.4.2

RUN R -e "install.packages('remotes', repos = 'https://cloud.r-project.org')"
RUN R -e "remotes::install_version('cowsay', version = '0.7.0', repos = 'https://cloud.r-project.org')"

WORKDIR /home/rstudio

EXPOSE 8787