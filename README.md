# KUBERNETES-ATLAS
## USAGE
1. Replace placeholders in files. Ex: `namespace: <NAMESPACE>` to `namespace: production`.
2. If secrets are used, add them to your .gitignore `*-secrets.yml`.

## TRY IT YOURSELF IN LOCAL!
### Prerequirements
1. [Docker](https://docs.docker.com/get-started/)
2. [Kubectl](https://kubernetes.io/es/docs/tasks/tools/install-kubectl/)
3. [Kind](https://github.com/kubernetes-sigs/kind)

### Load an example
1. Create a kubernetes cluster with kind `kind create cluster`
2. Load an example `./utils/apply-all.sh <EXAMPLE_FOLDER>`
3. Play with you cluster!
4. Delete your cluster `kind delete cluster`

## Regarding secrets
Secrets in kubernetes files are in base64, they should never be uploaded to version control. If it is a must, a good practice is to encrypt them and store the key in a safe place. A great tool for this task is [SOPS](https://github.com/mozilla/sops) which can use cloud credential storage services such.
1. [SOPS with Azure KV](https://github.com/mozilla/sops#23encrypting-using-azure-key-vault)
2. [SOPS with AWS KmsKMS](https://github.com/mozilla/sops#kms-aws-profiles)
3. [SOPS with GCP KMS](https://github.com/mozilla/sops#encrypting-using-gcp-kms)
4. [SOPS with GPG keys (Unnoficial source)](https://gist.github.com/twolfson/01d515258eef8bdbda4f)

```bash
sops --encrypt <KEY_PROVIDER_OPTIONS> secrets.yml > secrets.enc.yml
sops --descrypt secrets.enc.yml
```
