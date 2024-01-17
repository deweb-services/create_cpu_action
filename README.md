# Create CPU docker action

## Inputs

## `access-key`

**Required** Your access key for nodeshift platform.

## `secret-key`

**Required** Your secret key for nodeshift platform.

## `ssh-key`

**Required** Your ssh key to access deployment.

## `name`

Name of gpu you want to rent (all spaces must be replaced with underscore). Default `"RTX_4090"`.

## `image`

Image you want to deploy (like image:tag). Default `"ubuntu:latest"`.

## `region`

Region where you want to deploy. Default `"Europe"`.

## `count`

Count of gpus you want to deploy. Default `"1"`.

## Outputs

## `uuid`

UUID of your deployment.

## `host`

IP address of your deployment.

## `port`

Port of your deployment.

## Example usage

    steps:
      - name: Create gpu action step
        id: create-gpu
        uses: deweb-services/create_gpu_action@v0.12
        with:
          access-key: 'a12352244527cmzpxg74tq'
          secret-key: 'jyezkpdq2hljjjkfqoiyrjjjgckgospjrm74fkmdik'
          ssh-key: 'ssh-ed25519 AAAAC3afslHAsdkjHJKDFPY+6VWQaM ASDEW@gmail.com'
          name: 'RTX_4090'
          region: 'Europe'

      - name: Get the output
        run: echo "The uuid is ${{ steps.create-gpu.outputs.uuid }}, the ip is ${{ steps.create-gpu.outputs.host }}, the port is ${{ steps.create-gpu.outputs.port }}"