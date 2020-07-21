FROM registry.access.redhat.com/ubi8:latest

LABEL version="1.0.0"
LABEL repository="http://github.com/redhat-cop/github-actions"
LABEL homepage="http://github.com/redhat-cop/github-actions/set-helm-version"
LABEL maintainer="Red Hat CoP"
LABEL "com.github.actions.name"="configure-ssh-auth-sock"
LABEL "com.github.actions.description"="Configures an ssh-agent on a given SSH_AUTH_SOCK to use a private key to connect to a given domain"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="purple"

RUN yum install -y openssh-clients git

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
