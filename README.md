# LampLight Landing Page

A modern, production-ready landing page built with **Astro**, **Tailwind CSS**, and **GSAP** animations. Optimized for performance, SEO, and accessibility.

## 🚀 Quick Start

### Prerequisites

- Node.js 18+ and npm/pnpm/yarn

### Installation

```bash
# Install dependencies
npm install

# Start development server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview
```

The dev server will start at `http://localhost:4321`

## 📁 Project Structure

```
/
├── .vscode/
│   └── settings.json          # VS Code editor settings
├── public/
│   └── favicon.svg            # Site favicon
├── src/
│   ├── components/
│   │   ├── Navigation.astro   # Responsive navbar with mobile menu
│   │   ├── Hero.astro         # Hero section with animations
│   │   ├── Features.astro     # Features grid
│   │   ├── Pricing.astro      # Pricing tiers
│   │   ├── Testimonials.astro # Customer testimonials
│   │   ├── CTA.astro          # Call-to-action with signup form
│   │   └── Footer.astro       # Footer with links
│   ├── layouts/
│   │   └── BaseLayout.astro   # Base layout with SEO & GSAP
│   ├── pages/
│   │   └── index.astro        # Homepage
│   └── styles/
│       └── global.css         # Global styles & Tailwind
├── netlify/
│   └── functions/
│       └── signup.ts          # Serverless signup function
├── astro.config.mjs           # Astro configuration
├── tailwind.config.cjs        # Tailwind configuration
├── tsconfig.json              # TypeScript configuration
└── package.json
```

## ✨ Features

- ⚡ **Lightning Fast** - Built with Astro for optimal performance
- 🎨 **Modern Design** - Beautiful UI with Tailwind CSS and gradients
- 🎬 **Smooth Animations** - GSAP-powered scroll animations
- 📱 **Fully Responsive** - Mobile-first design approach
- ♿ **Accessible** - WCAG compliant with ARIA labels
- 🔍 **SEO Optimized** - Meta tags, Open Graph, Twitter Cards
- 🎯 **Production Ready** - Optimized build with compression
- 📧 **Email Signup** - Serverless function for signups
- 🚢 **Deploy Ready** - Configured for Netlify/Vercel

## 🎨 Customization Guide

### Branding & Colors

Edit `tailwind.config.cjs` to customize colors:

```javascript
colors: {
  primary: {
    // Your primary color palette
    500: '#0ea5e9',
    600: '#0284c7',
    // ...
  },
  accent: {
    // Your accent color palette
    500: '#d946ef',
    600: '#c026d3',
    // ...
  },
}
```

### Content

1. **Site Title & Description**: Edit `src/layouts/BaseLayout.astro`
2. **Navigation Links**: Edit `src/components/Navigation.astro`
3. **Hero Section**: Edit `src/components/Hero.astro`
4. **Features**: Edit the `features` array in `src/components/Features.astro`
5. **Pricing Plans**: Edit the `plans` array in `src/components/Pricing.astro`
6. **Testimonials**: Edit the `testimonials` array in `src/components/Testimonials.astro`
7. **Footer Links**: Edit `src/components/Footer.astro`

### Email Integration

The signup form uses a serverless function at `netlify/functions/signup.ts`. 

To integrate with an email service provider:

1. Install the provider's SDK (e.g., `npm install @sendgrid/mail`)
2. Add your API key to `.env`:
   ```
   SENDGRID_API_KEY=your_api_key_here
   ```
3. Update `netlify/functions/signup.ts` with the integration code

**Example services**: SendGrid, Mailchimp, ConvertKit, Resend, Postmark

### Images

- Add images to `public/images/`
- Reference them in components: `<img src="/images/your-image.jpg" alt="Description" />`
- For OG images, update the `image` prop in `BaseLayout.astro`

## 🚀 Deployment

### Netlify

1. Push your code to GitHub/GitLab/Bitbucket
2. Connect your repository to Netlify
3. Build settings:
   - **Build command**: `npm run build`
   - **Publish directory**: `dist`
4. Add environment variables in Netlify dashboard (if using email integration)
5. Deploy!

### Vercel

1. Install Vercel CLI: `npm i -g vercel`
2. Run: `vercel`
3. Follow the prompts
4. For serverless functions, create `api/` directory and move functions there

### Custom Domain

Add your custom domain in your hosting provider's dashboard and update the `site` field in `astro.config.mjs`.

## 🎯 Performance Optimizations

- ✅ HTML compression enabled
- ✅ CSS minification
- ✅ JavaScript minification with Terser
- ✅ Automatic code splitting
- ✅ Font preconnection
- ✅ Lazy loading ready
- ✅ Static site generation (SSG)

## 🛠 Tech Stack

- **Framework**: [Astro](https://astro.build) v4.16+
- **Styling**: [Tailwind CSS](https://tailwindcss.com) v3.4+ (JIT mode)
- **Animations**: [GSAP](https://greensock.com/gsap/) v3.12+
- **Functions**: Netlify Functions / Vercel Functions
- **TypeScript**: Type-safe development

## 📝 Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run preview` - Preview production build locally

## 📄 License

This project is open source and available under the MIT License.

## 🤝 Support

For issues or questions, please open an issue on GitHub or contact support.

---

Made with ❤️ using Astro, Tailwind CSS, and GSAP
