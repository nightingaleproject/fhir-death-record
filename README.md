# Standard Death Record FHIR Profiles

This repository contain the source definitions for a preliminary version of the Standard Death Record (SDR) Health Level 7 (HL7) Fast Healthcare Interoperability Resources (FHIR) Implementation Guide. [Click here to view the generated FHIR IG](https://nightingaleproject.github.io/fhir-death-record).

This guide builds on [FHIR profiles](https://github.com/BioMIBLab/fhir-death) developed as part of a collaboration between Georgia Tech and CDC.

The guide uses tooling and builds on content developed by the [Standard Health Record Collaborative](http://standardhealthrecord.org).

## Building the FHIR IG

Install the [`shr-cli`](https://github.com/standardhealth/shr-cli) tool.

Compile the CIMPL definitions

    cd /path/to/shr-cli
    node . /path/to/cimple-death-record/spec -o /path/to/output/dir

Configure Java proxies (if needed)

    export JAVA_OPTS="-Dhttp.proxyHost=my.proxy.org -Dhttp.proxyPort=80 -Dhttps.proxyHost=my.proxy.org -Dhttps.proxyPort=80 -DsocksProxyHost=my.proxy.org -DsocksProxyPort=80"

Build the FHIR IG

    java $JAVA_OPTS -Xms4g -Xmx8g -jar /path/to/output/dir/fhir/guide/org.hl7.fhir.igpublisher.jar \\
         -ig /path/to/output/dir/fhir/guide/data.json

The FHIR IG can be viewed at

    /path/to/output/dir/fhir/guide/output/index.html
         
## License

Copyright 2017, 2018 The MITRE Corporation

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.