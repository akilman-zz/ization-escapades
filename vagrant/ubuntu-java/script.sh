#!/bin/bash

apt-get update

# Install the essentials
apt-get install -y curl git vim zsh

# Install Java stuff
apt-get install -y openjdk-7-jdk maven
