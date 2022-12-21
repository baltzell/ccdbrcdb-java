### Java CCDB+RCDB wrapper repository

Two git submodules, plus one Maven POM to:
* compile the submodules' Kotlin source code and deploy a remote maven repository
* use Maven central for dependencies instead of the local jars included in the submodules
* update to more recent dependency versions and pull in a missing dependency, org.omg.COBRA
