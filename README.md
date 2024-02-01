# Create CPU docker action

## Inputs

## `access-key`

**Required** Your access key for nodeshift platform.

## `secret-key`

**Required** Your secret key for nodeshift platform.

## `ssh-key`

**Required** Your ssh key to access deployment.

## `ssh-key-name`

**Required** Your ssh key name.

## `image`

OS Image to be installed on the target Virtual Machine Deployment like `"Ubuntu-v22.04"`.

## `region`

Region where you want to deploy like `"USA"`.

## `cpu`

Number of CPU cores for your deployment. Default `"1"`.

## `ram`

Amount of RAM for your Deployment in MB.

## `disk-size`

Disk size for your Deployment in MB

## `disk-type`

Disk type for your Deployment. Available options: hdd, ssd

## `assign-public-ipv4`

If true assigns a public ipv4 address for your Deployment

## `assign-public-ipv6`

If true assigns a public ipv6 address for your Deployment

## `assign-ygg-ip`

If true assigns a yggdrasil address for your Deployment

## `vpc-id`

ID of the vpc to deploy your VM into

## `host-name`

Host name for your Deployment

## Outputs

## `uuid`

UUID of your deployment.

## `ip`

IP

## `ipv6`

IPv6

## `ygg`

YGG

## `host`

YGG

## Example usage

    steps:
      - name: Create cpu action step
        id: create-cpu
        uses: deweb-services/create_cpu_action@v0.2
        with:
	        access-key: 'a12352244527cmzpxg74tq'
	        secret-key: 'jyezkfffhljjjkfqoiyrjjjgckgospjrm74fkmdik'
	        ssh-key: 'ssh-ed25519 AAAAC3afslHAsdkjHJKDFPY+6VWQaM ASDEW@gmail.com'
	        region: 'USA'
	        assign-public-ipv4: true
	        host-name: 'my_deployment'

      - name: Get the output uuid
        run: echo "The uuid was ${{ steps.create-cpu.outputs.uuid }}, the ip is ${{ steps.create-cpu.outputs.ip }}, the host is ${{ steps.create-cpu.outputs.host }}"
