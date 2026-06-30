FROM hexletbasics/base-image

ENV NODE_PATH=/exercises-ai/src
ENV PATH=/exercises-ai/bin:/exercises-ai/node_modules/.bin:$PATH

WORKDIR /exercises-ai

COPY package.json package-lock.json ./
RUN npm ci

COPY . .
