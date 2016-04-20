# Select a tag that fits your project
FROM ifinavet/playframework:2.1.4

# Choose a work directory
WORKDIR /app

# Copy project/ which holds your project definitions
COPY project project

# Only for Play Framework 2.2.*
COPY build.sbt ./

# Trigger dependency download
RUN play help

# Copy your entire project
COPY ./ ./

# Your start command
CMD play run