#!/bin/bash

rm -rf as3
mkdir as3
cd as3
mkdir src
cd ../

rm -rf js
mkdir js

rm -rf py
mkdir py

# Generate the AS3 api client
~/maxwell-vm/thrift/thrift/compiler/cpp/thrift -o ~/maxwell-vm/amiestreet-api/as3/src/ --gen as3 ~/maxwell-vm/prod_web/rpc/amie_api.thrift

#compc -source-path . -include-sources as3/src/com/amiestreet/api/ -output amie-api.swc


~/maxwell-vm/thrift/thrift/compiler/cpp/thrift -o /home/lucas/maxwell-vm/amiestreet-api/ --gen jquery:js_class_name=amiestreet,client_filename=amie-api.js,api_endpoint_url=http://amiestreet.com/api/v0.1/ /home/lucas/maxwell-vm/prod_web/rpc/amie_api.thrift

~/maxwell-vm/thrift/thrift/compiler/cpp/thrift -o /home/lucas/maxwell-vm/amiestreet-api/ --gen rest_py:py_class_name=amiestreet,client_filename=amie-api.py,api_endpoint_url=http://amiestreet.com/api/v0.1/ /home/lucas/maxwell-vm/prod_web/rpc/amie_api.thrift

chmod 0755 amie-api.js
chmod 0755 amie-api.py

mv amie-api.js js/amie-api.js
mv amie-api.py py/amie-api.py
