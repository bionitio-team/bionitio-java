FROM openjdk:7
WORKDIR /bionitio
COPY . .

#RUN javac Main.java
RUN apt-get update && apt-get install -y maven
RUN mvn --quiet compile 
RUN mvn --quiet package

ENTRYPOINT ["bionitio"]
