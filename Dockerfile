FROM mongo:latest

    
    ENV  MONGO_INITDB_ROOT_USERNAME: ${USR}
    ENV  MONGO_INITDB_ROOT_PASSWORD: ${PSW}

WORKDIR /bin

        RUN apt-get update
        RUN apt-get -y install git

WORKDIR /docker-entrypoint-initdb.d/

        RUN git clone