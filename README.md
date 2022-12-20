To compile: `mvn install`

To test CCDB and RCDB connections: `./test.sh`

Testing a combined CCDB+RCDB Java maven build and repository by only including the base git repos as submodules.

* Added one pom.xml
  * Does the kotlin+java build, makes uber jars and maven repository
  * Uses maven central for dependencies instead of the local jars included in the ccdb/rcdb git submodules
    * Pulls in a missing `org.omg.CORBA` dependency from maven central

* Notes
  * RCDB's kotlin requires a class name update to squelch warning about deprecation in newer msqyl-connector versions
  * Package names
    * The odd `org.jlab.ccdb` versus `org.rcdb` package names, in the kotlin source code
    * The fake `CcdbPackage` name in our previous custom maven repository, instead of kotlin's `CCDB` and `RCDB`
    * I'd propose we change the name of the maven repo to ccdb-rcdb, and then switch from CcdbProvider to CCDB at the same time in COATJAVA
    * Changing those would of course require source code changes, in one place or another
  * The submodules use different subdirectory structures for the kotlin source
  * Previously when I built a ccdb jar in IntelliJ, I had to put the kotlin runtime jar in the classpath for groovy;  confirmed that's not the case here

