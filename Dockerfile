FROM jboss-eap6-openshift:6.4
ENV OPENSHIFT_MASTER https://uslv-dpas-mst01:8443
ENV OPENSHIFT_SERVICE_USER admin
ENV OPENSHIFT_SERVICE_USER_PASSWORD UPCJP3t5Feb017fdodOKNQ==

COPY resource-management.war $JBOSS_HOME/standalone/deployments/resource-management.war

EXPOSE 8080 8888
