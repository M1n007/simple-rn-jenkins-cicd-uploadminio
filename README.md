# React Native Simple Jenkins Pipeline Upload To Minio


## Setup

```Javascript
install jenkins on your server
docker exec -u 0 -it Jenkinscontainer bash // enter to jenkins container as root
prepare so that jenkinscontainer can access the root server without a password with a public key 
// you can check the tutorial for local pc and server here https://www.cyberciti.biz/faq/ubuntu-18-04-setup-ssh-public-key- authentication /
and try the pipeline
```

check jenkins global configuration at image folder.