import { defineConfig } from 'astro/config';

export default defineConfig({
  site: 'https://gopro-clone.netlify.app',
  outDir: './dist',
  publicDir: './public',
  server: {
    host: '0.0.0.0',
    port: 3000,
  },
});
