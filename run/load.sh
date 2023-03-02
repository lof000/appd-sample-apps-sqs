
#qurl=`aws sqs get-queue-url --queue-name=order-validator --no-cli-pager --output text`

echo $qurl

while :; do
    echo "Sending infinite messages"
    curl -d '{"id": 10,"name": "john","rollNumber": "0126CS01"}' -H "Content-Type: application/json" -X POST http://localhost:9091/produce/message
    sleep 1
done

