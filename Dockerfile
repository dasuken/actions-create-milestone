FROM golang:1.16
WORKDIR /work
COPY . /work/
RUN CGO_ENABLED=0 go build -ldflags="-w -s" -o app .
CMD ["/work/app"]