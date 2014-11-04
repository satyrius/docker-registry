# Docker Registry

Docker image based on [original registry image](https://github.com/docker/docker-registry) to fix some S3 connection issues. The issue discussion was started here https://github.com/docker/docker-registry/issues/661, follow the comments for details.

You can pull builded image from Docker Hub

```bash
docker pull satyrius/registry:latest
```

Then run it as original image, but now you are able to use S3 Frankfurt datacenter buckets

```bash
docker run \
         -e SETTINGS_FLAVOR=s3 \
         -e AWS_BUCKET=mybucket \
         -e AWS_REGION=eu-central-1 \
         -e STORAGE_PATH=/registry \
         -e AWS_KEY=myawskey \
         -e AWS_SECRET=myawssecret \
         -e SEARCH_BACKEND=sqlalchemy \
         -p 5000:5000 \
         satyrius/registry
```
