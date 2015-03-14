from ubuntu:14.04
maintainer Ivo Jimenez <ivo.jimenez@gmail.com>

run apt-get update
run apt-get install -qy git ghc cabal-install zlib1g-dev

run cabal update
run cabal install hakyll

# cleanup
RUN apt-get -yq autoremove && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

run mkdir /root/src
workdir /root/src
