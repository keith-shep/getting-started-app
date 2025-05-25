#[]: use a specific node image
FROM node 

WORKDIR /usr/local/app

COPY package.json .

RUN npm i

COPY . .

EXPOSE 3000

CMD ["npm", "run", "serve"]


# [x] persist the db
# [x]: allow changes in dev
# []: use a multi stage build
# []: deploy to ec2
# []: deploy to ecs


# Build
# docker build -t todo .

# Run
# [example volume mount] docker run -d --mount type=volume,source=sqlite-data,target=/etc/todos/ -p 3000:3000 todo
# [example bind mount] docker run -d --mount type=bind,source=./src,target=/usr/local/app/src -p 3000:3000 todo
# docker run -d --mount type=volume,source=sqlite-data,target=/etc/todos/ --mount type=bind,source=./src,target=/usr/local/app/src -p 3000:3000 todo

# Stop
# docker stop <container_id>

# Debug
# docker exec -it <container_id> sh


