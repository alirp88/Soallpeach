FROM swift:latest as builder

WORKDIR /app
COPY main.swift .
RUN swiftc -O main.swift

FROM swift:slim
WORKDIR /app
COPY --from=builder /app .
ENTRYPOINT ["./main"]
