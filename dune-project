(lang dune 3.10)
(name dappl)

(generate_opam_files true)

(using menhir 2.1)

(source
 (github username/reponame))

(authors "Minsung Cho <minsung@ccs.neu.edu>")

(maintainers "Minsung Cho <minsung@ccs.neu.edu>")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name dappl)
 (synopsis "dappl")
 (description "dappl")
 (depends ocaml dune core core_unix menhir menhirlib ounit qcheck bignum sys)
 )