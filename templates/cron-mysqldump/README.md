# MYSQLDUMP
Cron job to create logical database backups.

## Depencency
Order in which files should be applied.
1. Secrets and Configmap
3. Cronjob

## Warning!
Cronjob pods are not persistent, backups must be uploaded to some kind of storage.

## Alternative
Instead of uploading backups via script, kubernetes may mount cloud storage to cronjob PODs to persist data and avoid additional scripting. Some useful cloud storage examples:
- Google Persistent Disk
- AWS EBS
- Azure FileShare
- [Kubernetes volumes](https://kubernetes.io/docs/concepts/storage/)