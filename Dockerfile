FROM golang:alpine

COPY . .

RUN go build -o travis main/main.go

EXPOSE 8080

CMD ["./travis"]

