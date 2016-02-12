You can be a Docker pro that is pro at Docker!

brew cask install dockertoolbox
docker-machine create --driver virtualbox default
eval "$(docker-machine env default)"
docker run -d -P davidbanham/hisam | xargs docker logs
docker ps # You'll see the machine running. Note the high port number it displays.
docker-machine ls # This the VM(s) you're running. Note the IP
curl THE_IP:THE_PORT # So pro
docker ps --format "{{.ID}}" | xargs docker logs #SUPER PRO
docker ps --format "{{.ID}}" | xargs docker stop

git clone git@github.com:davidbanham/hisam.git
cd hisam
docker build -t samgentle/hisam .
docker run -d -p 3000:3000 samgentle/hisam
curl THE_IP:3000 # You can optionally map specific ports
docker push samgentle/hisam # This would push the image to dockerhub, but you don't have an account you fucking philistine

Check out the Dockerfile and .dockerignore. You can mash these two things into basically any node repo you have, yell DOCKER BUILD at your laptop and you will have a working container.
