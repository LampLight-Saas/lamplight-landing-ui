# LampLight Landing Page

A modern, production-ready landing page for converting OpenAPI specs into beautiful, hosted documentation. Built with **Astro**, **Tailwind CSS**, and **GSAP** animations. Features comprehensive dark mode support, system color scheme detection, and mobile-first responsive design.

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
│   │   ├── Navigation.astro   # Responsive navbar with mobile menu & theme toggle
│   │   ├── Hero.astro         # Hero section with animations
│   │   ├── Workflow.astro     # 3-step spec-to-site workflow
│   │   ├── TechSpecs.astro    # API format support and integration listings
│   │   ├── ScaleSmart.astro   # API transformation workflow with documentation
│   │   ├── Features.astro     # Features grid
│   │   ├── Pricing.astro      # Pricing tiers
│   │   ├── Testimonials.astro # Customer testimonials
│   │   ├── CTA.astro          # Call-to-action with signup form
│   │   └── Footer.astro       # Footer with links (light scheme)
│   ├── layouts/
│   │   └── BaseLayout.astro   # Base layout with SEO, GSAP & theme logic
│   ├── pages/
│   │   └── index.astro        # Homepage
│   └── styles/
│       └── global.css         # Global styles & Tailwind
├── netlify/
│   └── functions/
│       └── signup.ts          # Serverless signup function
├── astro.config.mjs           # Astro configuration
├── tailwind.config.cjs        # Tailwind configuration with dark mode
├── tsconfig.json              # TypeScript configuration
└── package.json
```

## ✨ Features

- ⚡ **Lightning Fast** - Built with Astro for optimal performance
- 🎨 **Modern Design** - Beautiful UI with Tailwind CSS and gradients
- � **Dark Mode** - Complete dark mode support with system detection and manual toggle
- �� **Smooth Animations** - GSAP-powered scroll animations with smooth transitions
- 📱 **Fully Responsive** - Mobile-first design with mobile theme toggle
- ♿ **Accessible** - WCAG AA compliant with ARIA labels and proper contrast ratios
- 🔍 **SEO Optimized** - Meta tags, Open Graph, Twitter Cards
- 🎯 **Production Ready** - Optimized build with compression and pre-paint theme logic
- 📧 **Email Signup** - Serverless function for signups with environment variables
- 🚢 **Deploy Ready** - Configured for Netlify/Vercel with TypeScript support
- 🔄 **Theme Persistence** - localStorage-based theme preference with system fallback
- 🎨 **Tech Specs** - API format support and integration listings
- 🚀 **ScaleSmart** - API transformation workflow with documentation generation

## 🎨 Customization Guide

### Dark Mode Configuration

The project includes comprehensive dark mode support with:

- **System Detection**: Automatically detects `prefers-color-scheme`
- **Manual Toggle**: Desktop and mobile theme toggles
- **Persistent State**: localStorage-based theme preference
- **WCAG AA Compliance**: Proper contrast ratios in both modes
- **Smooth Transitions**: CSS transitions for theme changes

Dark mode is configured in `tailwind.config.cjs` using class-based strategy:

```javascript
darkMode: 'class', // or 'media' for system-only
```

Theme logic is implemented in `src/layouts/BaseLayout.astro` with pre-paint script to avoid flash.

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
2. **Navigation Links**: Edit `src/components/Navigation.astro` (includes theme toggle)
3. **Hero Section**: Edit `src/components/Hero.astro`
4. **Workflow**: Edit `src/components/Workflow.astro` (3-step spec-to-site process)
5. **Tech Specs**: Edit `src/components/TechSpecs.astro` (API formats and integrations)
6. **ScaleSmart**: Edit `src/components/ScaleSmart.astro` (API transformation workflow)
7. **Features**: Edit the `features` array in `src/components/Features.astro`
8. **Pricing Plans**: Edit the `plans` array in `src/components/Pricing.astro`
9. **Testimonials**: Edit the `testimonials` array in `src/components/Testimonials.astro`
10. **Footer Links**: Edit `src/components/Footer.astro` (light scheme with dark mode support)

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

## ⚙️ Configuration Requirements

### Environment Variables

Create a `.env` file in the root directory for email integration:

```bash
# Email Service Integration (Optional)
SENDGRID_API_KEY=your_sendgrid_api_key_here
MAILCHIMP_API_KEY=your_mailchimp_api_key_here
CONVERTKIT_API_KEY=your_convertkit_api_key_here
RESEND_API_KEY=your_resend_api_key_here
```

### Tailwind Configuration

The project uses Tailwind CSS with dark mode support. Key configuration in `tailwind.config.cjs`:

```javascript
module.exports = {
  darkMode: 'class', // Class-based dark mode strategy
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      colors: {
        primary: {
          500: '#0ea5e9',
          600: '#0284c7',
        },
        accent: {
          500: '#d946ef',
          600: '#c026d3',
        },
      },
      fontFamily: {
        display: ['Inter', 'system-ui', 'sans-serif'],
        body: ['Inter', 'system-ui', 'sans-serif'],
      },
    },
  },
  plugins: [],
}
```

### TypeScript Configuration

TypeScript is configured for strict type checking. Key settings in `tsconfig.json`:

- Target: ES2022
- Module: ESNext
- Strict mode enabled
- Astro integration configured

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

## 📖 Usage Examples

### Dark Mode Implementation

The dark mode system includes automatic system detection and manual toggle functionality:

```javascript
// Theme toggle event (works for both desktop and mobile)
window.dispatchEvent(new Event('toggle-theme'));

// Theme state is automatically persisted in localStorage
// System preference is used as fallback when no stored preference exists
```

### Component Usage

Each component is self-contained and can be customized independently:

```astro
---
// Example: Using the Hero component
import Hero from '../components/Hero.astro';
---

<Hero />
```

### Email Integration Example

The signup form integrates with serverless functions:

```typescript
// netlify/functions/signup.ts
export default async (req: Request) => {
  const { email } = await req.json();
  
  // Add your email service integration here
  // Example: SendGrid, Mailchimp, ConvertKit, Resend
  
  return new Response(JSON.stringify({ success: true }), {
    status: 200,
    headers: { 'Content-Type': 'application/json' },
  });
};
```

### Theme Customization

Dark mode classes follow Tailwind's dark: prefix pattern:

```html
<!-- Light mode: white background, dark text -->
<!-- Dark mode: gray-950 background, light text -->
<div class="bg-white text-gray-900 dark:bg-gray-950 dark:text-gray-100">
  Content with dark mode support
</div>
```

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

## 🤝 Contribution Guidelines

We welcome contributions to the LampLight project! Here's how you can help:

### Getting Started

1. **Fork the repository** on GitHub
2. **Clone your fork** locally:
   ```bash
   git clone https://github.com/your-username/lamplight-landing-ui.git
   cd lamplight-landing-ui
   ```
3. **Install dependencies**:
   ```bash
   npm install
   ```
4. **Create a feature branch**:
   ```bash
   git checkout -b feature/your-feature-name
   ```

### Development Workflow

1. **Start the development server**:
   ```bash
   npm run dev
   ```
2. **Make your changes** following our coding standards
3. **Test your changes**:
   ```bash
   npm run build
   npm run preview
   ```
4. **Ensure dark mode compatibility** for any UI changes
5. **Check accessibility** with WCAG AA standards
6. **Test across browsers** (Chrome, Firefox, Safari, Edge)
7. **Test responsive behavior** on mobile, tablet, and desktop

### Code Standards

- **Follow existing code style** and conventions
- **Use TypeScript** for type safety
- **Add dark mode variants** for all new UI components
- **Include ARIA labels** for accessibility
- **Use semantic HTML** elements
- **Comment complex logic** appropriately
- **Test theme transitions** between light and dark modes

### Submitting Changes

1. **Commit your changes** with clear, descriptive messages
2. **Push to your fork**:
   ```bash
   git push origin feature/your-feature-name
   ```
3. **Create a Pull Request** on GitHub
4. **Describe your changes** and link any related issues
5. **Wait for review** from maintainers

### What We're Looking For

- 🌙 Dark mode improvements and bug fixes
- ♿ Accessibility enhancements
- 📱 Mobile experience improvements
- 🎨 UI/UX enhancements
- ⚡ Performance optimizations
- 📝 Documentation improvements
- 🐛 Bug fixes and issue resolution

## 📄 License

This project is open source and available under the MIT License.

## 📞 Contact Information

### Maintainers

- **Project Lead**: [Your Name] - [@your_twitter](https://twitter.com/your_twitter)
- **UI/UX Lead**: [Team Member] - [@their_twitter](https://twitter.com/their_twitter)
- **Technical Lead**: [Team Member] - [@their_twitter](https://twitter.com/their_twitter)

### Support Channels

- **GitHub Issues**: [Report bugs or request features](https://github.com/your-username/lamplight-landing-ui/issues)
- **Discussions**: [General questions and community chat](https://github.com/your-username/lamplight-landing-ui/discussions)
- **Email**: support@lamplight-docs.com
- **Twitter**: [@LampLightDocs](https://twitter.com/LampLightDocs)

### Business Inquiries

For business partnerships, licensing, or commercial support:
- **Email**: business@lamplight-docs.com
- **Contact Form**: [lamplight-docs.com/contact](https://lamplight-docs.com/contact)

---

Made with ❤️ using Astro, Tailwind CSS, and GSAP
