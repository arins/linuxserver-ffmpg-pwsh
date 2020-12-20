FROM linuxserver/ffmpeg:latest
# COPY . /app
USER root 

# Update the list of packages
RUN apt-get update
# Install pre-requisite packages.
RUN apt-get install -y wget apt-transport-https software-properties-common
# Download the Microsoft repository GPG keys
RUN wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
# Register the Microsoft repository GPG keys
RUN dpkg -i packages-microsoft-prod.deb
# Update the list of products
RUN apt-get update
# Enable the "universe" repositories
RUN add-apt-repository universe
# Install PowerShell
RUN apt-get install -y powershell
# Start PowerShell
