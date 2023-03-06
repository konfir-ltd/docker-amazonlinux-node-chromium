FROM amazonlinux as base

# Install chromium
RUN amazon-linux-extras install epel -y
RUN yum install -y chromium zip

# Install nodejs & yarn
RUN yum -y install curl
RUN curl -sL https://rpm.nodesource.com/setup_16.x | bash -
RUN yum install --enablerepo=nodesource -y nodejs
RUN node --version
RUN npm install --global yarn

# Install rsync for build
RUN yum -y install rsync
