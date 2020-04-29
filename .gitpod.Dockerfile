FROM gitpod/workspace-full

USER root

RUN apt-get update && apt-get install -y opam && eval $(opam env) && opam init -y --disable-sandboxing && opam switch create 4.10.0 && opam install -y dune && opam install -y merlin && eval $(opam env)