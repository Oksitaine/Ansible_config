FROM ubuntu:24.10

# Set all variables
ARG ANSIBLE_FILE=local.yml


WORKDIR /root/home/test

# Make initiliazation of apt and all libraries and packages
RUN apt update
RUN apt install -y sudo curl wget git ansible

# COPY . . 
# RUN ansible-playbook $ANSIBLE_FILE

CMD ["echo", "hello"]