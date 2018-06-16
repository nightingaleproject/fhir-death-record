ig : out/fhir/guide/ig.json
	java ${JAVA_OPTS} -Xms4g -Xmx8g -jar out/fhir/guide/org.hl7.fhir.igpublisher.jar -ig out/fhir/guide/ig.json
 
out/fhir/guide/ig.json : spec/*.txt
	node ${SHR_CLI_HOME} spec -o out
	
fhir : out/fhir/guide/ig.json
