FROM ubuntu:22.04

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    wget \
    curl \
    git \
    libgmp-dev \
    libffi-dev \
    libssl-dev \
    libpcre3-dev \
    openssl \
    make \
    gcc \
    zlib1g-dev \
    libpython3-dev \
    python3-dev

RUN apt-get update && apt-get install -y \
    ocaml \
    opam \
    && rm -rf /var/lib/apt/lists/*

RUN curl -O https://www.python.org/ftp/python/3.11.0/Python-3.11.0.tar.xz && \
    tar -xf Python-3.11.0.tar.xz && \
    cd Python-3.11.0 && \
    ./configure && \
    make && \
    make install && \
    cd .. && \
    rm -rf Python-3.11.0 Python-3.11.0.tar.xz

# Install Pip, problog, and script dependencies
RUN curl -o get-pip.py https://bootstrap.pypa.io/pip/get-pip.py
RUN python3 get-pip.py

RUN python3 -m pip install \
    cysignals \
    Cython \
    graphviz \
    numpy \
    problog \
    setuptools \
    pandas
RUN python3 -m pip install pysdd

# Get Rust
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

# Install OCaml dependencies
RUN opam init --yes --disable-sandboxing
RUN opam switch create 4.14.0
RUN opam switch 4.14.0
RUN opam install -y dune core core_unix menhir menhirlib ounit qcheck bignum smart-print

# Get rsdd-ocaml-dappl
ENV PATH="/root/.cargo/bin:${PATH}"
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN rustc --version
RUN git clone https://github.com/minsungc/rsdd-ocaml-dappl.git
RUN cd rsdd-ocaml-dappl && cargo vendor && cargo build

# Pin
RUN cd ..
RUN eval $(opam env)
RUN apt update && apt install -y rustc
run apt-get install -y cargo
RUN opam install -y conf-rust-2021 ppx_deriving
RUN opam pin -y rsdd rsdd-ocaml-dappl/

# Copy things over
COPY dune-project dappl/
COPY dappl.opam dappl/
COPY experiment.py dappl/
COPY experiment.sh dappl/
COPY README.md dappl/
COPY bin/ dappl/bin/
COPY derkinderen/ dappl/derkinderen/
COPY examples/ dappl/examples/
COPY experiments/ dappl/experiments/
COPY lib/ dappl/lib/
COPY numbers/ dappl/numbers/
COPY testgen/ dappl/testgen/
COPY kick_the_tires.py dappl/
COPY kick_the_tires.sh dappl/
COPY init.sh dappl/

RUN cd dappl && ls && eval $(opam config env) && eval $(opam env) && dune build

# Make experiment scripts runnable
RUN chmod +x dappl/experiment.sh
RUN chmod +x dappl/kick_the_tires.sh
RUN chmod +x dappl/init.sh

# Make entrypoint and working dir
RUN echo "alias dappl='./dappl/_build/install/default/bin/dappl'" >> ~/.bashrc

RUN apt-get install -y nano \
                        vim
# ENTRYPOINT ["bash", "-c", "cd dappl && eval $(opam env) && dune build && alias dappl='/dappl/_build/install/default/bin/dappl'"]

