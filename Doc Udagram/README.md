# Udagram Full-Stack
### Dependencies

```
- Node v14.15.1 (LTS) or more recent. While older versions can work it is advisable to keep node to latest LTS version

- npm 6.14.8 (LTS) or more recent, Yarn can work but was not tested for this project

- AWS CLI v2, v1 can work but was not tested for this project

- AWS EB CLI

- AWS RDS database running Postgres.

- AWS S3 bucket for Frontend.

- AWS Elastic Beanstalk for Backend.

```

### AWS Cloud Setup

- RDS - Database Host: zer00-db.cyhwmiw7n3yy.us-east-1.rds.amazonaws.com
- RDS - Database Port: 5432
- RDS - Database Name: zer00-db

- S3 Endpoint - Frontend: http://mr-zer00-bucket.s3-website-us-east-1.amazonaws.com/

- Elastic Beanstalk URL - Backend: http://udagramfullstack-env.eba-6cuc89mn.us-east-1.elasticbeanstalk.com/


## Environment Variables

Setup the following variables in the .env file or in the cloud environments:
```
- PORT                = 5432
- POSTGRES_HOST       = <Database_IP_Address>
- POSTGRES_DB         = <Database_Name>
- POSTGRES_USERNAME   = <Database_Username>
- POSTGRES_PASSWORD   = <Database_Password>
- URL                 = <Url>
- JWT_SECRET          = <your secret>
- AWS_REGION          = <us-east-1>
- AWS_PROFILE         = <Profile>
- AWS_BUCKET          = <Bucket_Name>
```

## Pipeline

From the root of the project:
- `npm run frontend:install`    - To install frontend dependencies.
- `npm run frontend:build`      - To build the Angular/Frontend.
- `npm run frontend:lint`       - To lint the Angular/Frontend.
- `npm run frontend:e2e`        - To e2e the Angular/Frontend.
- `npm run frontend:deploy`     - To deploy the project to S3 using deploy script.
- `npm run api:install`         - To install backend dependencies.
- `npm run api:build`           - To transpile the Typescript/Backend.
- `npm run api:deploy`          - To deploy the project to EB using deploy script.
## CircleCi

The order of the run jobs:
- Setting Env Variables.
- Install NodeJS.
- Checkout Code & Cloning the Repo.
- Install AWS CLI v2.
- Check & Disable AWS pager.
- Configure AWS AccessKeyID.
- Configure AWS Region.
- Frontend:
  - Install dependencies.
  - Build the angular.
- Backend-api:
  - Install dependencies.
  - Build the app.
- Deploy App:
  - Deploy Frontend the site to AWS S3.
  - Deploy api the app to AWS Elastic Beanstalk.

## Testing

This project contains two different test suite: unit tests and End-To-End tests(e2e). Follow these steps to run the tests.

1. `cd udagram-frontend`
2. `npm run test`
3. `npm run e2e`

There are no Unit test on the back-end

### Unit Tests:

Unit tests are using the Jasmine Framework.

### End to End Tests:

The e2e tests are using Protractor and Jasmine.
