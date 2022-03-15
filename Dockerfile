FROM golang:1.17-alpine

RUN apt-get install

WORKDIR /app

COPY go.mod ./
COPY *.go ./
COPY static ./static

RUN go build -o /belajar-cicd-pemula

EXPOSE 3000

CMD ["/belajar-cicd-pemula"]
