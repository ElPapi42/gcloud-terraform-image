FROM google/cloud-sdk:latest

RUN apt-get install software-properties-common -y && apt-get update -y
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN apt-get update -y && apt-get install terraform -y && apt install jq -y