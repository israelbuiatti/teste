# teste

### Aws Credentials


AWS credentials can be set some of this options below:


- Vault

To use Vault to get aws credentials, add the environment in CWP_SDM_ALLOWED_ENVIRONMENTS_AWS_CREDENTIAL_FROM_VAULT environment variable. If set, Vault is priority to get credentials, otherwise, SDM will try to get credentials from other providers.



- Authly

You can use Authly to set aws credentials. Developer role is required.

If you are using authly to run SDM locally and aws token expired, you need to renew the token and restart the application.



- Environtment variable

You can set aws credentials directly as environtment variable.


| Environment Variable | Description |
|:--------------------:|-------------|
| **AWS_ACCESS_KEY** | The AWS app key. |
| **AWS_SECRET_KEY** | The AWS secret key. |



- Service Account

Service account is a object kubernetes that provides an identity for processes that run in a Pod. It's injected a token and role arn inside pod and SDM get aws credentials using Default Provider Chain from aws sdk.

Service account can be configurate in [service-account.yaml](https://github.azc.ext.hp.com/sdm/sdm/blob/009e4de762966818c99481f46e3281d3a9ef1c24/build/k8s/06_service-account.yaml)


> **Note:** For Autly, Environtment Variable and Service Account, make sure the environment is not set in CWP_SDM_ALLOWED_ENVIRONMENTS_AWS_CREDENTIAL_FROM_VAULT environment variable
