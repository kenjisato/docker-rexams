# Dockerfile for writing exams

ARG BASE_CONTAINER=rocker/verse:3.6.1
FROM $BASE_CONTAINER

LABEL maintainer="Kenji Sato <mail@kenjisato.jp>"

RUN apt-get update && apt-get -y --no-install-recommends install \
  pdftk \
  imagemagick \
  && Rscript -e 'install.packages("exams", repos="http://R-Forge.R-project.org")' \
  && Rscript -e 'tinytex::tlmgr_install("psnfss")' \
  && install2.r --error --deps TRUE png tth
