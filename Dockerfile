FROM alpine:3.19

RUN apk add --no-cache tar

WORKDIR /app

COPY backup.sh .
COPY restore.sh .

RUN chmod +x backup.sh restore.sh

CMD ["sh"]
