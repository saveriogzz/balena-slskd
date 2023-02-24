curl -X PATCH --header "Content-Type:application/json" \
    --data '{"network": {"hostname": "slskd"}}' \
    "$BALENA_SUPERVISOR_ADDRESS/v1/device/host-config?apikey=$BALENA_SUPERVISOR_API_KEY"

exec slskd serve --iknowwhatimdoing --host 0.0.0.0 --basedir "/app"