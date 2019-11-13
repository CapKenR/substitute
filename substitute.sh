#!/bin/sh

export SOURCE_DIR=$1
export DESTINATION_DIR=$2

cd ${SOURCE_DIR}

find . -type d -exec mkdir -p ${DESTINATION_DIR}/{} \;

find . -type f -exec sh -c 'envsubst < $0 > ${DESTINATION_DIR}/$0' {} \;
