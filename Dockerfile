FROM alpine:latest

# Install Bash (Alpine uses sh by default)
RUN apk add --no-cache bash

WORKDIR /app

COPY . .

# Give execute permissions to the script
RUN chmod +x passgen.sh

ENTRYPOINT ["./passgen.sh"]

# If no argument is provided, print one 10 character password
CMD ["10","1"]