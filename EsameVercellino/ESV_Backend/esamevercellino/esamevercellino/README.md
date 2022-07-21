# Build
mvn clean package && docker build -t com.tss/esamevercellino .

# RUN

docker rm -f esamevercellino || true && docker run -d -p 8080:8080 -p 4848:4848 --name esamevercellino com.tss/esamevercellino 

# System Test

Switch to the "-st" module and perform:

mvn compile failsafe:integration-test