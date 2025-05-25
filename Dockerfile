#TODO: use a specific node image
FROM node 

COPY package.json .

RUN npm i

COPY . .

EXPOSE 3000

CMD ["npm", "run", "serve"]


# []: use a multi stage build
# []: allow changes in dev
# [x] persist the db
# []: deploy to ec2
# []: deploy to ecs


# Build
# docker build -t todo .

# Run
# [example with mount] docker run --mount type=volume,src=<volume-name>,dst=<mount-path-in-container>
# [example with volume] docker run --volume <volume-name>:<mount-path-in-container>
# docker run -d --mount type=volume,source=sqlite-data,target=/etc/todos/ -p 3000:3000 todo
# docker run -d --volume sqlite-data:/etc/todos/ -p 3000:3000 todo

# Stop
# docker stop <container_id>

# Debug
# docker exec -it <container_id> sh


