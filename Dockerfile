FROM registry.paas-sbox.amgen.com/openshift/eap-openshift:latest
#FROM registry.access.redhat.com/jboss-eap-6/eap-openshift:6.4 
ENV OPENSHIFT_MASTER_URL https://uslv-dpas-mst01.amgen.com:8443
ENV OPENSHIFT_SERVICE_USER admin
ENV OPENSHIFT_SERVICE_USER_PASSWORD GkDQBvpYPrIiA2Q0K1rh4Q==

COPY resource-management.war $JBOSS_HOME/standalone/deployments/resource-management.war
# customized for debug
COPY standalone-openshift.xml $JBOSS_HOME/standalone/configuration/standalone-openshift.xml

EXPOSE 8080 8888
