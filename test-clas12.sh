#!/bin/bash

export JAVA_OPTS='-Djava.io.tmpdir=. -Dsqlite.io.tmpdir=.'

groovy=$(cat <<EOF
import org.jlab.ccdb.CCDB;
import org.rcdb.RCDB;
int run=4013;
ccdb = CCDB.createProvider("mysql://clas12reader@clasdb.jlab.org/clas12");
rcdb = RCDB.createProvider("mysql://rcdb@clasdb.jlab.org/rcdb")
ccdb.setDefaultRun(run);
ccdb.connect();
rcdb.connect();
System.out.println("RCDB: "+rcdb.getCondition(run,"run_start_time").toTime());
startTime = System.currentTimeMillis();
System.out.println("CCDB: "+ccdb.getData("/calibration/ec/tmf_window").getBlob());
System.out.println(System.currentTimeMillis()-startTime);
EOF
)

echo Checking clasdb.jlab.org ...
groovy -cp ./target/ccdbrcdb-*-with-dependencies.jar -e " $groovy "

groovy=$(cat <<EOF
import org.jlab.ccdb.CCDB;
import org.rcdb.RCDB;
int run=4013;
ccdb = CCDB.createProvider("sqlite:////cvmfs/oasis.opensciencegrid.org/jlab/hallb/clas12/sw/noarch/data/ccdb/ccdb_latest.sqlite");
rcdb = RCDB.createProvider("sqlite:////cvmfs/oasis.opensciencegrid.org/jlab/hallb/clas12/sw/noarch/data/rcdb/rcdb_latest.sqlite");
ccdb.setDefaultRun(run);
ccdb.connect();
rcdb.connect();
System.out.println("RCDB: "+rcdb.getCondition(run,"run_start_time").toTime());
startTime = System.currentTimeMillis();
System.out.println("CCDB: "+ccdb.getData("/calibration/ec/tmf_window").getBlob());
System.out.println(System.currentTimeMillis()-startTime);
EOF
)

echo Checking sqlite ...
groovy -cp ./target/ccdbrcdb-*-with-dependencies.jar -e " $groovy "

