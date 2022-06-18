FROM node:14-bullseye-slim
COPY . /app
WORKDIR /app/hubs
RUN apt-get update && apt-get install \
    git \
    bzip2 \
    ca-certificates \
    -yq --no-install-suggests --no-install-recommends --allow-downgrades --allow-remove-essential --allow-change-held-packages \
  && apt-get clean
RUN npm ci
CMD ["npm", "run", "dev"]
