#TODO: use a specific node image
FROM node 

COPY package.json .

RUN npm i

COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev"]



# TODO: use a multi stage build
# TODO: allow changes in dev
# TODO: persist the db
# TODO: deploy to ec2
# TODO: deploy to ecs


# build
# docker build -t todo .

# Run
# docker run -p 3000:3000 todo