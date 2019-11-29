# KUBERNETES-TEMPLATES
## Usage
1. Replace placeholders in files. Ex: `namespace: <NAMESPACE>` to `namespace: production`.
2. If secrets are used, add them to your .gitignore `*-secrets.yml`.

## Regarding secrets
Secrets in kubernetes files are in base64, they should never be uploaded to version control. If it is must, a good practice is to encrypt them and store the key in a safe place. A great tool for this task is [SOPS](https://github.com/mozilla/sops) which can use cloud credential storage services such.
1. [SOPS with Azure KV](https://github.com/mozilla/sops#23encrypting-using-azure-key-vault)
2. [SOPS with AWS KmsKMS](https://github.com/mozilla/sops#kms-aws-profiles)
3. [SOPS with GCP KMS](https://github.com/mozilla/sops#encrypting-using-gcp-kms)
4. [SOPS with GPG keys (Unnoficial source)](https://gist.github.com/twolfson/01d515258eef8bdbda4f)

```bash
sops --encrypt <KEY_PROVIDER_OPTIONS> secrets.yml > secrets.enc.yml
sops --descrypt secrets.enc.yml
```
