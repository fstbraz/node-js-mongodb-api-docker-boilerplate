docker run \
    --name mongodb \
    -p 27017:27017 \
    -d \
    mongo:4


docker ps #list active containers
docker stop #stop active containers

docker exec -it mongodb mongo #access mongo

#app compose creation
docker volume create --name nodemodules

docker build -t app nodejs-mongodb-api

docker run \
    --name app \
    --link mongodb \
    -e MONGO_URL=mongodb \
    -e PORT=4000 \
    -p 4000:4000 \
    -v `pwd`/nodejs-mongodb-api:/src \
    -v nodemodules:/src/node_modules \
    app npm run dev:watch


#remove and stop
docker rm app
docker volume rm nodemodules
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

#using docker compose
docker-compose up --build
docker-compose down
