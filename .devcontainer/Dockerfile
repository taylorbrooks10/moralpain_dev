# Copyright © 2001 by the Rectors and Visitors of the University of Virginia. 

# Extend vm built by pdrvm_configure
FROM docker.io/kevinsullivan/pdrvm

# Create image without any user interaction
ENV DEBIAN_FRONTEND=noninteractive
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

# Your VM extensions go here (below)
