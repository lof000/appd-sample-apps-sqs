
qurl1=`aws sqs get-queue-url --queue-name=netsurfingzone-first-sqs --no-cli-pager --output text`

aws sqs --region us-east-1 delete-queue --queue-url $qurl1 --no-cli-pager


