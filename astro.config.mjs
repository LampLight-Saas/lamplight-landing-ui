import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';

// https://astro.build/config
export default defineConfig({
    integrations: [tailwind()],
    output: 'static',
    site: 'https://your-domain.com',
    compressHTML: true,
    build: {
        inlineStylesheets: 'auto',
    },
    vite: {
        build: {
            cssMinify: true,
            minify: 'terser',
            terserOptions: {
                compress: {
                    drop_console: true,
                },
            },
        },
    },
});
