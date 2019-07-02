FROM openjdk:7
WORKDIR /bionitio
COPY . .

RUN javac Main.java

ENTRYPOINT ["bionitio"]
