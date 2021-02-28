FROM nvidia/cuda:11.2.1-devel

WORKDIR /

ENV DEBIAN_FRONTEND=noninteractive

# Package and dependency setup
RUN apt-get -y update \
    && apt-get -y install software-properties-common \
    && add-apt-repository -y ppa:ethereum/ethereum -y \
    && apt-get -y update \
    && apt-get install -y git \
     cmake \
     libcrypto++-dev \
     libleveldb-dev
RUN apt-get -y install \
     libjsoncpp-dev \
     libjsonrpccpp-dev \
     libboost-all-dev \
     libgmp-dev \
     libreadline-dev \
     libmicrohttpd-dev \
     ocl-icd-libopencl1 \
     opencl-headers \
     mesa-common-dev \
     build-essential

# Git repo set up
RUN git clone https://github.com/ethereum-mining/ethminer.git; \
    cd ethminer; \
    git checkout -b heads/cuda11

# Build
RUN cd ethminer; \
    git submodule update --init --recursive; \
    mkdir build; \
    cd build; \
    cmake .. -DETHASHCUDA=ON -DETHASHCL=OFF -DETHSTRATUM=ON; \
    cmake --build .; \
    make install;

# Env setup
ENV GPU_FORCE_64BIT_PTR=0
ENV GPU_MAX_HEAP_SIZE=100
ENV GPU_USE_SYNC_OBJECTS=1
ENV GPU_MAX_ALLOC_PERCENT=100
ENV GPU_SINGLE_ALLOC_PERCENT=100

ENTRYPOINT ["/usr/local/bin/ethminer", "-U"]