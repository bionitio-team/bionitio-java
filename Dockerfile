# ubuntu bionic
FROM unbuntu:18.04
WORKDIR /bionitio
COPY . .

#RUN javac Main.java
RUN apt-get update && apt-get install -y default-jdk maven
RUN mvn --quiet compile 
RUN mvn --quiet package

ENTRYPOINT ["bionitio"]
