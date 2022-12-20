### A CCDB+RCDB repository for Java based on their 2 separate repositories as git submodules.

* Adds one pom.xml
  * to build jars from the Kotlin source and deploy a remote maven repository
  * uses maven central for dependencies instead of the local jars included in the submodules
  * updates to more recent dependency versions and pulls in a missing `org.omg.COBRA` dependency
