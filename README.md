
Testing a combined CCDB+RCDB Java maven build and repository by only including the base git repos as submodules.

* Added one pom.xml
  * Does the kotlin+java build, makes uber jars and maven repository
  * Uses maven central for dependencies instead of the local jars included in the ccdb/rcdb git submodules
    * Pulls in a missing org.omg.CORBA dependency from maven central

It builds and results in jars and a maven repo that appear to contain what they should.

* Issues / Questions
  * Package names
    * The org.jlab.ccdb versus org.rcdb package names, in the kotlin source code
    * The fake CcdbPackage name in our previous custom maven repository, instead of CCDB/RCDB
  * CCDB/RCDB git submodules use different subdirectory structures for the kotlin source
  * Previously when I built a CCDB jar in IntelliJ, I had to put the kotlin runtime jar in the classpath for groovy

