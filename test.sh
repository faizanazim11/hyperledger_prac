kubectl exec -it $(kubectl get pods -o=name | grep cli-peer0-doctor-deployment | sed "s/^.\{4\}//") -- bash -c 'peer channel update -o orderer0-service:7050 --tls --cafile=/etc/hyperledger/orderers/msp/tlscacerts/orderers-ca-service-7054.pem -c mainchannel -f channels/doctor-anchors.tx'
kubectl exec -it $(kubectl get pods -o=name | grep cli-peer0-cvh-deployment | sed "s/^.\{4\}//") -- bash -c 'peer channel update -o orderer0-service:7050 --tls --cafile=/etc/hyperledger/orderers/msp/tlscacerts/orderers-ca-service-7054.pem -c mainchannel -f channels/cvh-anchors.tx'
