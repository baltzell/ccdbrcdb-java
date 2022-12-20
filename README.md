A combined CCDB+RCDB Java repository based on their 2 separate repositories as git submodules.

* Adds one pom.xml to build the Kotlin source and generate jars and deploy a resulting maven repository
* Uses maven central for dependencies instead of the local jars included in the submodules
* Pulls in a missing `org.omg.COBRA` dependency

To compile: `mvn install`

To test CCDB and RCDB connections: `./test.sh`
