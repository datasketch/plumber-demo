FROM rocker/r-ver:4.3

RUN apt-get update && apt-get install -y \
  libcurl4-openssl-dev \
  libsodium-dev \
  zlib1g-dev \
  && rm -rf /var/lib/apt/lists/ 

WORKDIR /src

COPY setup.R .

RUN Rscript setup.R

COPY src/ .

EXPOSE 8000

ENTRYPOINT [ "Rscript", "main.R" ]