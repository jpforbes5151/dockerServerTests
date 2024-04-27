# generate a base OS for the docker container
FROM debian:stable-slim

# add files that server requires to run
COPY dockerServerTests /bin/dockerServerTests

#Set Environment variable
ENV PORT 8080

# start the server
CMD ["/bin/dockerServerTests"]