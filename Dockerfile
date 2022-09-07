FROM quay.io/ansible/awx-ee:latest

# Fixing the (broken) upstream execution environment.
# The current requirements specify a pyopenssl version < 20.0 which doesn't work with the specified cryptography>37.0.0
RUN pip3 install cryptography==36.0.2