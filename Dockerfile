FROM amazonlinux as base

# Install chrome
# RUN yum install libXcomposite libXdamage libXrandr libgbm libxkbcommon pango alsa-lib atk at-spi2-atk cups-libs libdrm -y
RUN yum install -y https://dl.google.com/linux/chrome/rpm/stable/x86_64/google-chrome-stable-123.0.6312.122-1.x86_64.rpm

# Install nodejs & yarn
RUN curl -fsSL https://rpm.nodesource.com/setup_18.x | bash -
RUN dnf install -y nodejs
RUN node --version
RUN npm install --global yarn

# Install rsync for build and packaging
RUN yum -y install rsync zip

