cd $(dirname $0)

../e2e-commons/up.sh deploy oracle oracle-validator-2 oracle-validator-3

# wait for validators
sleep 60

docker-compose -f ../e2e-commons/docker-compose.yml run e2e yarn workspace oracle-e2e run start
rc=$?

../e2e-commons/down.sh
exit $rc
