
default: patch
	mvn install

patch: unpatch
	patch -p0 --forward --reject-file=- < patches/rcdb-sqlite.patch
	patch -p0 --forward --reject-file=- < patches/ccdb-jdbc.patch
	patch -p0 --forward --reject-file=- < patches/rcdb-jdbc.patch

unpatch:
	cd ccdb && git checkout .
	cd rcdb && git checkout .

clean: unpatch
	mvn clean

