(lang dune 3.10)
(name dappl)

(generate_opam_files true)

(using menhir 2.1)

(source
 (github username/reponame))

(authors "Minsung Cho")

(maintainers "Minsung Cho")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name dappl)
 (synopsis "dappl")
 (description "dappl")
 (depends ocaml dune core core_unix menhir ounit qcheck bignum)
 )