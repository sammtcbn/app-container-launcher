FROM oven/bun:1.0.14
WORKDIR /app
COPY package.json .
COPY index.js .
RUN bun install
EXPOSE 8080
ENTRYPOINT ["bun", "index.js"]
