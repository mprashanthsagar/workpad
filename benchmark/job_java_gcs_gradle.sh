#!/bin/bash
set -e

if [ $# -lt 4 ];then
  echo "Usage: $0 client bucket object times"
  exit 1
fi

GCS_PATH=$HOME/grpc-gcp-java/end2end-test-examples/gcs

pushd $GCS_PATH

./gradlew run --args="--client=$1 --bkt=$2 --obj=$3 --buffSize=1048576 --method=read --dp=true --calls=$4"

popd
