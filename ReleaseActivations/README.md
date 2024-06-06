# Akamai Activations 

- Updated the [activations.tfvars](https://github.com/GireeshBDevaraddi/Akamai-As-IAC/blob/main/ReleaseActivations/activations.tfvars) file with below details
  - Add the config or property id, name and version details as objects under `release_activations` List for respective akamai product section.
  - Add Recipient Emails to `release_notification` List
  - Add Respective Activation Notes to `release_notes`
  - Add Respective network ( PRODUCTION or STAGING ) to  `release_network`
- Please refer the [variables.tf](https://github.com/GireeshBDevaraddi/Akamai-As-IAC/blob/main/ReleaseActivations/variables.tf) file for object structure
- Run the below bash script
  ```sh
  ./execute.sh
  
  ```
- **NOTE:** Currently, Akamai-As-Code supports Activations for `Property Manager`, `Cloudlets`, `Load Balancers`, `Application Security`, `Client List`, `Network List` & `Edge workers` 
- **Since we don't need to preserve Terraform state, we delete the Terraform state file under the execution script for Akamai Activations**