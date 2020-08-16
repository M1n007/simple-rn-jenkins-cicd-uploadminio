#!/bin/bash

# usage: ./minio-upload my-bucket my-file.zip

bucket=$1
file=$2

host=minio.domain.id
s3_key='yours3/miniokey'
s3_secret='yours3/miniosecretkey'
x=$(date '+%Y-%m-%d')

base_file=`basename ${file}`
resource="/${bucket}/${x}/${base_file}"
content_type="application/octet-stream"
date=`date -R`
_signature="PUT\n\n${content_type}\n${date}\n${resource}"
signature=`echo -en ${_signature} | openssl sha1 -hmac ${s3_secret} -binary | base64`

curl -v -X PUT -T "${file}" \
          -H "Host: $host" \
          -H "Date: ${date}" \
          -H "Content-Type: ${content_type}" \
          -H "Authorization: AWS ${s3_key}:${signature}" \
          https://$host${resource}