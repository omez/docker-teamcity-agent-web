FROM omez/teamcity-agent-default:latest
MAINTAINER Alexander Sergeychik <alexander.sergeychik@gmail.com>

# Install NodeJS
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs

# Install useful NodeJS packages
RUN npm install -g gulp grunt-cli bower typings

# Install PHP cli
RUN apt-get install -y php5-cli

# Install additional utilities
RUN apt-get install -y imagemagick optipng

RUN rm -rf /var/lib/apt/lists/*