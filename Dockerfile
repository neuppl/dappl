# Use an official OCaml image as a base
FROM ocaml/opam:debian-11-ocaml-4.14

# Set the working directory to root (optional)
WORKDIR /

# Install system dependencies
RUN sudo apt-get update && sudo apt-get install -y \
    build-essential \
    wget \
    curl \
    git \
    libgmp-dev \
    libffi-dev \
    libssl-dev \
    libpcre3-dev \
    python3.11

# Install Pip, problog, and script dependencies
RUN curl -o get-pip.py https://bootstrap.pypa.io/get-pip.py
RUN python3.11 get-pip.py
RUN python3.11 -m pip install graphviz numpy problog pysdd pandas

# Install OCaml dependencies
RUN opam install -y dune core core_unix menhir menhirlib ounit qcheck bignum sys
RUN opam pin rsdd https://github.com/minsungc/rsdd-ocaml-dappl.git

# Build the project
RUN eval $(opam env) && dune build
RUN alias dappl='_build/install/default/bin/dappl'

# Experiments
CMD ["python3.11","experiment.py"]
