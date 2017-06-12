FROM ubuntu:16.04

# Setup environment
ENV JENKINS_USER jenkins
ENV JENKINS_GROUP jenkins
ENV JENKINS_HOME /data/jenkins
ENV JENKINS_VOL "${JENKINS_HOME}"
#ENV JENKINS_VOL	"/data/jenkins"
# To Avoid issue: Unable to initialize frontend
ENV DEBIAN_FRONTEND=noninteractive
#
#ENV JAVA_OPTS=-Djenkins.install.runSetupWizard=true

RUN apt-get -y update
RUN apt-get install -y software-properties-common sudo openssh-server openssh-client
RUN apt-add-repository ppa:ansible/ansible
RUN apt-get install -y ansible
#RUN apt-get install -y python-pip
#RUN pip install --upgrade pip
#RUN pip install lxml PyYAML stevedore jenkins-job-builder
#RUN apt-get -y update


# Add playbooks to the Docker image
ADD ansible /opt/ansible
WORKDIR /opt/ansible

# Run Ansible to configure the Docker image
RUN ansible-playbook main.yml -c localhost -vvv

# Other Dockerfile directives are still valid
EXPOSE 8080

# Expose volumes
#VOLUME ["${JENKINS_VOL}/logs/"]
WORKDIR "${JENKINS_HOME}"

# Clean Up
RUN rm -fr /opt/*
RUN apt-get clean all

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod 777 /usr/local/bin/entrypoint.sh

USER "${JENKINS_USER}"

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
#CMD [""]
