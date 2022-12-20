### CCDB+RCDB wrapper repository for their Kotlin/Java libraries

Based on their 2 separate repositories as git submodules, plus one pom.xml that:
* compiles the submodules' Kotlin source code and deploys a remote maven repository
* uses maven central for dependencies instead of the local jars included in the submodules
* updates to more recent dependency versions and pulls in a missing dependency, org.omg.COBRA
