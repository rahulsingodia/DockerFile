Here is an Dockerfile for deploying an static website on to apache to server it to end users 

kubectl run busybox --rm -ti --labels="access=true" --image=busybox:1.28 -- /bin/sh
wget --spider --timeout=1 nginx
