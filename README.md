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

## Create Pipeline

 - Click New Item
 - Enter an item name for your pipeline name and then click ok (image/new_1.png)
 - Choose 'Build when a change is pushed to GitLab. GitLab webhook URL: https://jenkins.domainmu.com/project/test-project' at Build Trigers
 - And select your trigger like a push event or accept merge request.
 - Generate webhook secret token then add webhook jenkins url and secret token to your gitlab webhook repositories settings (image/new_2.png).
 - And then go to Pipeline setting then select definition to 'Pipeline script from SCM' (image/new_3.png).
 - Select SCM to Git and add your repository URL, credentials who can access your repository from jenkins and which branch you want to build your script (image/new_4.png)
 - and click Save