# Deployment Guide

This guide covers multiple deployment options for your portfolio template.

## 🚀 Quick Deploy Options

### Netlify (Recommended)
1. **Drag & Drop Deploy:**
   - Run `npm run build`
   - Drag the `dist` folder to [Netlify Drop](https://app.netlify.com/drop)

2. **Git Integration:**
   - Connect your GitHub repository to Netlify
   - Build command: `npm run build`
   - Publish directory: `dist`

### Vercel
1. **GitHub Integration:**
   - Connect repository to [Vercel](https://vercel.com)
   - Auto-detects Vite configuration
   - Deploys automatically on push

### GitHub Pages
1. **Setup:**
   ```bash
   npm install --save-dev gh-pages
   ```

2. **Add to package.json:**
   ```json
   {
     "scripts": {
       "predeploy": "npm run build",
       "deploy": "gh-pages -d dist"
     },
     "homepage": "https://yourusername.github.io/portfolio-template"
   }
   ```

3. **Deploy:**
   ```bash
   npm run deploy
   ```

## 🔧 Build Configuration

### Environment Variables
Create `.env` file for customization:
```env
VITE_SITE_TITLE="Your Name - Portfolio"
VITE_SITE_DESCRIPTION="Your custom description"
VITE_CONTACT_EMAIL="your@email.com"
```

### Build Optimization
The template is already optimized with:
- Code splitting
- Asset optimization
- Tree shaking
- Minification

## 📊 Performance

Expected Lighthouse scores:
- Performance: 95+
- Accessibility: 100
- Best Practices: 100
- SEO: 100

## 🌐 Custom Domain

### Netlify
1. Go to Domain settings
2. Add custom domain
3. Configure DNS records

### Vercel
1. Project settings → Domains
2. Add your domain
3. Configure DNS

## 🔒 Security Headers

Add to `public/_headers` for Netlify:
```
/*
  X-Frame-Options: DENY
  X-Content-Type-Options: nosniff
  Referrer-Policy: strict-origin-when-cross-origin
  Permissions-Policy: camera=(), microphone=(), geolocation=()
```

## 📈 Analytics

### Google Analytics
Add to `index.html`:
```html
<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

## 🐛 Troubleshooting

### Build Issues
- Clear node_modules: `rm -rf node_modules && npm install`
- Clear cache: `npm run build -- --force`

### Deployment Issues
- Check build logs for errors
- Verify environment variables
- Ensure all dependencies are in package.json

## 📞 Support

If you encounter issues:
1. Check the GitHub Issues
2. Review deployment platform docs
3. Verify build locally first