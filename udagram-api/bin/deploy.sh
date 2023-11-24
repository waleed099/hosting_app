eb init udagram_fullstack --platform node.js --region us-west-2
eb create udagramfullstack-env --region us-west-2
eb use udagramfullstack-env
eb deploy  
eb health
# eb open

# if you want read the logs
# eb logs

eb setenv AWS_ACCESS_KEY_ID="$AKIA55N4WRZCO5IXKOFV" AWS_SECRET_ACCESS_KEY="$hPBT4Clf6DId+IYrSi5j6k3oVV01gi/MSPX70W9A" AWS_DEFAULT_REGION="$us-west-2" POSTGRES_USERNAME="$postgres" POSTGRES_PASSWORD="$postgres" POSTGRES_DB="$postgres" PORT="$5432" POSTGRES_HOST="$zer00-db.cv1ohyyc0bed.us-west-2.rds.amazonaws.com" AWS_REGION="$us-west-2" AWS_PROFILE="$default" AWS_BUCKET="$mr-zer00-bucket" URL="$http://localhost:8100" JWT_SECRET="$mysecretstring" --profile default
