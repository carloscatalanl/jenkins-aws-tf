# Jenkins TF

On `~/.aws/credentials`
```
[default]
aws_access_key_id=YOUR_ACCESS_KEY_ID
aws_secret_access_key=YOUR_SECRET_ACCESS_KEY
```

## Deploy
```sh
./deploy.sh
```

### Connecting to your Linux instance using SSH
```sh
ssh -i ./private/ssh/key_access -A ubuntu@[instance IP]
```

### Connecting to the Jenkins service in the browser 
```sh
[instance IP]:8080
```

## Destroy
```sh
./down.sh
```