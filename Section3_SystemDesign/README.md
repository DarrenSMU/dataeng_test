# System Design of some photo app 

1. Customers and devs access both customer webapp and company webapp through cloudfront to different static builds of some js framework webapp hosted on some s3 bucket 

2. Frontend sends REST api calls to api gateway through http, gateway maps the calls to microservices written in some backend server processing language (nodeJs) hosted on aws lambda OR could use ec2 instance.

3. microservices has logic that interacts with AWS Kafka managed streaming service (MSK), (ie topic creation, produce, consume that get data from stream OR commits data to stream) 

4. some microservices has logic to edit some db (postgresql) on aws RDS to change statistics of customers and their photos depending on data received

5. some microservices has logic to upload the photos to some aws s3 bucket ( multipart, base64 etc), object expiration after 7 days

6. some microservices has logic to retrieve images from s3 bucket and other microservices has logic to retrieve statistics from rds
