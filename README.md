#RImpala

RImpala is an R package that helps you to connect and execute distributed queries using Cloudera Impala.
Impala supports jdbc integration and this feature is used by RImpala to establish a connection between R and Impala. 

##Installating RImpala

To use this package you must also have access to a Hadoop cluster running Cloudera Impala with at least one populated table defined in the Hive Metastore.

###Install JDBC jars for RImpala

* Download the [Impala Cloudera JDBC zip file] (http://downloads.cloudera.com/connectors/impala_jdbc_2.5.16.1018.zip) to the client machine that you will use to connect to Impala servers.

*  The downloaded zip file contains 3 zip files. Choose the Cloudera_ImpalaJDBC4_2.5.16.1018.zip and extract the contents of the zip file to a location of your choosing and
	For example:
	- On Linux, you might extract this to a location such as /opt/jars/.
	- On Windows, you might extract this to a folder such as C:\Program Files\impala-jars.
* We will use this location in <code>rimpala.init()</code>

###Install RImpala
1. Compressed package: <code>R CMD INSTALL RImpala-0.1.1.tar.gz</code>
2. Source code: <code>R CMD INSTALL ./RImpala</code>

###Loading RImpala and connecting to Impala
1. Find the ip of the machine and the port where the Impala service is running.
2. Find the location where you have unziped the JDBC jars in the above section.
2. Launch R
3. <code>
	library("RImpala")
	rimpala.init(libs="/path/to/JDBC/jars/")
	rimpala.connect(IP="localhost",port="21050",principal="noSasl")
	result = rimpala.query("your query");
	</code>
by default rimpala.init() searches "/usr/lib/impala" for the JDBC jars.

use the below line for connection with kerberos security
rimpala.connect(IP="127.0.0.1",port="21050",db="default",krbRealm="EXAMPLE.COM",
                krbHostFQDN="impala.example.com",krbServiceName="impala")
###
Here are links to more information on Cloudera Impala:

- [Cloudera Enterprise RTQ](http://www.cloudera.com/content/cloudera/en/products/cloudera-enterprise-core/cloudera-enterprise-RTQ.html) 

- [Cloudera Impala Documentation](http://www.cloudera.com/content/support/en/documentation/cloudera-impala/cloudera-impala-documentation-v1-latest.html)

- [Cloudera Impala JDBC Documentation](http://www.cloudera.com/content/cloudera/en/documentation/connectors/latest/PDF/Cloudera-JDBC-Driver-for-Impala-Install-Guide.pdf)

- [Impala-User Google Group](https://groups.google.com/a/cloudera.org/forum/?fromgroups#!forum/impala-user)
 
##Requirements
- Java (>= 1.5)
- R (>= 2.7.0)
- rJava (>= 0.5-0)
- Cloudera Impala (>= 2-5-16 JDBC 4 Version)[Cloudera JDBC driver jars](http://downloads.cloudera.com/connectors/impala_jdbc_2.5.16.1018.zip)


