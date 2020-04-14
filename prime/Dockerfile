FROM swift:latest

WORKDIR /app
COPY main.swift .
RUN swiftc -O main.swift

ENTRYPOINT ["./main"]