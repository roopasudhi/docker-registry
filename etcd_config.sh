#!/bin/bash
export SETTINGS_FLAVOR=`curl -s http://172.17.42.1:4001/v2/keys/registry/settings_flavor | sed -e 's/\\\\\//\//g' -e 's/[{}]//g' | awk '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed -e 's/\"\:\"/\|/g' -e 's/[\,]/ /g' -e 's/\"//g' | grep -w value | cut -d\| -f2`
export STORAGE_PATH=`curl -s http://172.17.42.1:4001/v2/keys/registry/storage_path | sed -e 's/\\\\\//\//g' -e 's/[{}]//g' | awk '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed -e 's/\"\:\"/\|/g' -e 's/[\,]/ /g' -e 's/\"//g' | grep -w value | cut -d\| -f2`
export S3_BUCKET=`curl -s http://172.17.42.1:4001/v2/keys/registry/s3_bucket | sed -e 's/\\\\\//\//g' -e 's/[{}]//g' | awk '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed -e 's/\"\:\"/\|/g' -e 's/[\,]/ /g' -e 's/\"//g' | grep -w value | cut -d\| -f2`
export AWS_ACCESS_KEY_ID=`curl -s http://172.17.42.1:4001/v2/keys/registry/aws_access_key_id | sed -e 's/\\\\\//\//g' -e 's/[{}]//g' | awk '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed -e 's/\"\:\"/\|/g' -e 's/[\,]/ /g' -e 's/\"//g' | grep -w value | cut -d\| -f2`
export AWS_SECRET_KEY=`curl -s http://172.17.42.1:4001/v2/keys/registry/aws_secret_key | sed -e 's/\\\\\//\//g' -e 's/[{}]//g' | awk '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed -e 's/\"\:\"/\|/g' -e 's/[\,]/ /g' -e 's/\"//g' | grep -w value | cut -d\| -f2`
export S3_ENCRYPT=`curl -s http://172.17.42.1:4001/v2/keys/registry/s3_encrypt | sed -e 's/\\\\\//\//g' -e 's/[{}]//g' | awk '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed -e 's/\"\:\"/\|/g' -e 's/[\,]/ /g' -e 's/\"//g' | grep -w value | cut -d\| -f2`
export S3_SECURE=`curl -s http://172.17.42.1:4001/v2/keys/registry/s3_secure | sed -e 's/\\\\\//\//g' -e 's/[{}]//g' | awk '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed -e 's/\"\:\"/\|/g' -e 's/[\,]/ /g' -e 's/\"//g' | grep -w value | cut -d\| -f2`
export CACHE_REDIS_HOST=`curl -s http://172.17.42.1:4001/v2/keys/registry/cache_redis_host | sed -e 's/\\\\\//\//g' -e 's/[{}]//g' | awk '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed -e 's/\"\:\"/\|/g' -e 's/[\,]/ /g' -e 's/\"//g' | grep -w value | cut -d\| -f2`
export CACHE_REDIS_PORT=`curl -s http://172.17.42.1:4001/v2/keys/registry/cache_redis_port | sed -e 's/\\\\\//\//g' -e 's/[{}]//g' | awk '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed -e 's/\"\:\"/\|/g' -e 's/[\,]/ /g' -e 's/\"//g' | grep -w value | cut -d\| -f2`
export CACHE_REDIS_PASSWORD=`curl -s http://172.17.42.1:4001/v2/keys/registry/cache_redis_password | sed -e 's/\\\\\//\//g' -e 's/[{}]//g' | awk '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed -e 's/\"\:\"/\|/g' -e 's/[\,]/ /g' -e 's/\"//g' | grep -w value | cut -d\| -f2`
export CACHE_LRU_REDIS_HOST=`curl -s http://172.17.42.1:4001/v2/keys/registry/cache_lru_redis_host | sed -e 's/\\\\\//\//g' -e 's/[{}]//g' | awk '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed -e 's/\"\:\"/\|/g' -e 's/[\,]/ /g' -e 's/\"//g' | grep -w value | cut -d\| -f2`
export CACHE_LRU_REDIS_PORT=`curl -s http://172.17.42.1:4001/v2/keys/registry/cache_lru_redis_port | sed -e 's/\\\\\//\//g' -e 's/[{}]//g' | awk '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed -e 's/\"\:\"/\|/g' -e 's/[\,]/ /g' -e 's/\"//g' | grep -w value | cut -d\| -f2`
export CACHE_LRU_REDIS_PASSWORD=`curl -s http://172.17.42.1:4001/v2/keys/registry/cache_lru_redis_password | sed -e 's/\\\\\//\//g' -e 's/[{}]//g' | awk '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed -e 's/\"\:\"/\|/g' -e 's/[\,]/ /g' -e 's/\"//g' | grep -w value | cut -d\| -f2`
export LOG_LEVEL=`curl -s http://172.17.42.1:4001/v2/keys/registry/log_level | sed -e 's/\\\\\//\//g' -e 's/[{}]//g' | awk '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed -e 's/\"\:\"/\|/g' -e 's/[\,]/ /g' -e 's/\"//g' | grep -w value | cut -d\| -f2`
export GUNICORN_WORKERS=`curl -s http://172.17.42.1:4001/v2/keys/registry/gunicorn_workers | sed -e 's/\\\\\//\//g' -e 's/[{}]//g' | awk '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed -e 's/\"\:\"/\|/g' -e 's/[\,]/ /g' -e 's/\"//g' | grep -w value | cut -d\| -f2`
export WORKER_SECRET_KEY=`curl -s http://172.17.42.1:4001/v2/keys/registry/worker_secret_key | sed -e 's/\\\\\//\//g' -e 's/[{}]//g' | awk '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed -e 's/\"\:\"/\|/g' -e 's/[\,]/ /g' -e 's/\"//g' | grep -w value | cut -d\| -f2`

