#!/bin/bash

groovy=$(cat <<EOF
import org.jlab.ccdb.CCDB;
import org.rcdb.RCDB;
int run=4013;
ccdb = CCDB.createProvider("mysql://clas12reader@clasdb.jlab.org/clas12");
rcdb = RCDB.createProvider("mysql://rcdb@clasdb.jlab.org/rcdb")
ccdb.setDefaultRun(run);
ccdb.connect();
rcdb.connect();
System.out.println("CCDB: "+ccdb.getData("/calibration/ec/tmf_window").getBlob());
System.out.println("RCDB: "+rcdb.getCondition(run,"run_start_time").toTime());
EOF
)

groovy -cp ./target/ccdb-rcdb-1.0-SNAPSHOT-with-dependencies.jar -e " $groovy "

