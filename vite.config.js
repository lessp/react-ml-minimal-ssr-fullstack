import { defineConfig } from "vite";
import { nodeResolve } from "@rollup/plugin-node-resolve";
import path from "path";
import tailwindcss from "@tailwindcss/vite";

export default defineConfig({
  plugins: [nodeResolve(), tailwindcss()],
  root: "public",
  build: {
    outDir: "../dist",
    emptyOutDir: true,
  },
});
