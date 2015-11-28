#!/bin/bash

# Update Centos with any patches

yum update -y --exclude=kernel

# tools

yum update -y nano git uzip screen nc client
