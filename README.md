# Spin up a VM in GCP's Compute Engine

## Prerequisites
* An existing gcloud project
* Terraform is installed on your local machine
* gcloud sdk is installed and init'd

```
gcloud init
gcloud auth login
gcloud config set project $your-project-id
```
* Create a service account (make sure it has "editor" rights) and download the JSON key. You can follow [these instructions](https://cloud.google.com/docs/authentication/production#setting_the_environment_variable) to set the JSON key as an environment variable.

## How to run
```
terraform init
terraform plan
terraform apply
```