#
# Can be build by docker using the command:
#  docker build -t gcr.io/charliek-apps/circle-gke-test:latest .
#
# Can be run by docker using the command:
#  docker run --rm -it -p 8080:80 gcr.io/charliek-apps/circle-gke-test:latest

FROM nginx:mainline-alpine
MAINTAINER charlie.knudsen@gmail.com

COPY site /usr/share/nginx/html
