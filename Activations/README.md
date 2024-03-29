# Akamai Activations
- Add the config or property id, name and version details to the [activations.tfvars](https://github.com/GireeshBDevaraddi/Akamai-As-IAC/blob/main/Activations/activations.tfvars) file as list.
- Please refer the [variables.tf](https://github.com/GireeshBDevaraddi/Akamai-As-IAC/blob/main/Activations/variables.tf) file for object structure
- Run the below commands in sequence
  ```
  $ terraform init
  $ terraform plan -var-file=activations.tfvars
  $ terraform apply -var-file=activations.tfvars
  ```
- NOTE - After running the `terraform plan` please validate the output with yours properties
- Currently, IAC supports Activations for `Property Manager`, `Cloudlets`, `Load Balancers`, `Application Security`, `Client List`, `Network List` & `Edge workers` 