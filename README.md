### Java CCDB+RCDB wrapper repository

Two git submodules, plus one Maven POM to:
* compiles the submodules' Kotlin source code and deploys a remote maven repository
* uses maven central for dependencies instead of the local jars included in the submodules
* updates to more recent dependency versions and pulls in a missing dependency, org.omg.COBRA
