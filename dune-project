(lang dune 3.18)
(using melange 0.1)

(name reactml_ssr)
(generate_opam_files true)
(source
 (github username/reponame))
(authors "Author Name <author@example.com>")
(maintainers "Maintainer Name <maintainer@example.com>")
(license LICENSE)

(documentation https://url/to/documentation)

(package
  (allow_empty)
 (name reactml_ssr)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends 
   ocaml 
   dune 
   dream
   melange
   reason-react 
   reason-react-ppx 
   server-reason-react 
   mlx 
   ocamlmerlin-mlx 
   ocaml-lsp-server 
   ocamlformat)
 (tags
  ("add topics" "to describe" your project)))

;; mlx 
(dialect
 (name mlx)
 (implementation
  (extension mlx)
  (merlin_reader mlx)
  (preprocess
   (run mlx-pp %{input-file}))))
