ig : out/fhir/guide/output/index.html

out/fhir/guide/output/index.html : out/fhir/guide/ig.json
	java ${JAVA_OPTS} -Xms4g -Xmx8g -jar out/fhir/guide/org.hl7.fhir.igpublisher.jar -ig out/fhir/guide/ig.json
 
out/fhir/guide/ig.json : spec/*.txt spec/*.html spec/fhir_examples/*.json
	node ${SHR_CLI_HOME} spec -o out
	
fhir : out/fhir/guide/ig.json

clean : 
	rm -r out/*
	