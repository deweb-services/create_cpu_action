#!/bin/bash -l

/usr/bin/deploy_script cpu create --access_key $1 --secret_key $2 --ssh_key "$3" --image "$4" --region "$5" \
  --cpu "$6" --ram "$7" --disk_size "$8" --disk_type "$9" --assign_public_ipv4 "${@:10:1}" \
  --assign_public_ipv6 "${@:11:1}" --assign_ygg_ip "${@:12:1}" --vpc_id "${@:13:1}" --host_name "${@:14:1}"

export RESULT=$(cat result)

echo "$RESULT" >> $GITHUB_OUTPUT
