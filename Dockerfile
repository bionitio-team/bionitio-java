FROM openjdk:7
WORKDIR /bionitio
COPY . .

#RUN javac Main.java
RUN mvn --quiet compile 
RUN mvn --quiet package

ENTRYPOINT ["bionitio"]
