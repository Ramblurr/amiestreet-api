#!/bin/bash
echo  "Generating HTML docs";

~/maxwell-vm/thrift/thrift/compiler/cpp/thrift   -o ~/maxwell-vm/amiestreet-api --gen html ~/maxwell-vm/prod_web/rpc/amie_api.thrift

rm -rf docs;
mkdir docs;

mv ~/maxwell-vm/amiestreet-api/gen-html/ ~/maxwell-vm/amiestreet-api/docs/

echo "Docs generated";
