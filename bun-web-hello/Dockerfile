FROM oven/bun:0.5.9
WORKDIR /app
COPY package.json .
COPY index.js .
RUN bun install
EXPOSE 8080
ENTRYPOINT ["bun", "index.js"]
