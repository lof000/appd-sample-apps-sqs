
qurl=`aws sqs get-queue-url --queue-name=order-validator --no-cli-pager --output text`

echo $qurl

while :; do
    echo "Sending infinite messages"
    aws sqs send-message --queue-url $qurl --message-body '{"id":"12312","clientName":"Ze","clientScore":"1234","cardOwner":"Ze ruela de sa","cardNumber": "xxxx-xxxx-xxxx","price":1245435,"amount":10}' --no-cli-pager
    sleep 1
    aws sqs send-message --queue-url $qurl --message-body '{"id":"5566","clientName":"Jao","clientScore":"1234","cardOwner":"Jao","cardNumber": "xxxx-xxxx-xxxx","price":1245435,"amount":10}' --no-cli-pager
    sleep 3
done

