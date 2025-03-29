docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID vinay2802/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID vinay2802/$JOB_NAME:latest

docker push vinay2802/$JOB_NAME:$BUILD_ID

docker push vinay2802/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID vinay2802/$JOB_NAME:$BUILD_ID vinay2802/$JOB_NAME:latest
