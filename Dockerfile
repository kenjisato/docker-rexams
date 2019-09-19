# Dockerfile for writing exams

ARG BASE_CONTAINER=rocker/verse
FROM $BASE_CONTAINER

LABEL maintainer="Kenji Sato <mail@kenjisato.jp>"

RUN RScript -e 'install.packages("exams", repos="http://R-Forge.R-project.org")'
