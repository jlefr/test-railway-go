FROM golang:1.21.4-bullseye as build

WORKDIR /src

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .

FROM alpine:3.18

WORKDIR /app

COPY --from=build /src/app .

EXPOSE 8080
CMD ["./app"]
