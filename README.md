### A CCDB+RCDB repository for Java based on their 2 separate git repos as submodules

The only significant addition is one pom.xml:
* builds jars from the submodules' Kotlin source code and deploy a remote maven repository
* uses maven central for dependencies instead of the local jars included in the submodules
* updates to more recent dependency versions and pulls in a missing dependency, org.omg.COBRA
