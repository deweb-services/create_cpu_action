#!/bin/bash -l

e="--access_key $1 --secret_key $2 --ssh_key \"$3\" --image \"$4\" --region \"$5\" --cpu $6 --ram $7 --disk_size $8 --disk_type \"$9\" --vpc_id \"${@:13:1}\" --host_name \"${@:14:1}\" --ssh_key_name \"${@:15:1}\""

if [ "${@:10:1}" = "true" ]; then
  e+=" --assign_public_ipv4 true"
fi

if [ "${@:11:1}" = "true" ]; then
  e+=" --assign_public_ipv6 true"
fi

if [ "${@:12:1}" = "true" ]; then
  e+=" --assign_ygg_ip true"
fi

/usr/bin/deploy_script cpu create $e

export RESULT=$(cat result)

echo "$RESULT" >> $GITHUB_OUTPUT
