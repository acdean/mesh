# vi: set ts=8 noexpandtab:

CORE=/home/opt64/processing-3.3.4/core/library/core.jar

dist:
	javac -cp library/quickhull3d.1.4.jar:${CORE} source/*.java
	mkdir -p megamu/mesh
	mv source/*.class megamu/mesh
	# create jar M = no manifest
	jar cMvf library/mesh.jar megamu
	# create downloadable zip
	tar	cvfz mesh.tgz README.md library source
	zip -r mesh.zip library source

clean:
	-rm source/*.class
	-rm -rf megamu
	-rm mesh.zip mesh.tgz
