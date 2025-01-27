# React - OCaml + MLX SSR Template

A minimal server-side rendering (SSR) and client-side hydration setup using OCaml with MLX.

## How it works

1. `public/index.html` contains our base template with static assets
2. Vite bundles this into `dist/index.html` with processed assets
3. `GenerateRootTemplate.ml` takes `dist/index.html` and creates a template function that preserves all assets:
   ```ocaml
   let render content = "..." ^ content ^ "..."
   ```

## Development

```sh
bun install
dune pkg lock

bun run build
dune build
dune exec src/server/Main.exe
```

