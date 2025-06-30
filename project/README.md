# Modern Portfolio Website Template

A beautiful, fully responsive portfolio website template built with React, TypeScript, and Tailwind CSS. Features a modern design with smooth animations, dark/light mode toggle, and a complete project showcase system.

![Portfolio Preview](https://alexxportfolio.netlify.app/)

## ✨ Features

### 🎨 Design & UI
- **Modern Apple-like aesthetic** with clean, minimal design
- **Fully responsive** - works perfectly on mobile, tablet, and desktop
- **Dark/Light mode toggle** with smooth transitions
- **Smooth scroll animations** powered by Framer Motion
- **Interactive hover effects** and micro-interactions
- **Professional gradient backgrounds** and subtle shadows

### 📱 Sections Included
- **Hero Section** - Eye-catching introduction with profile image and CTA buttons
- **About Section** - Skills showcase with icons and experience timeline
- **Projects Gallery** - Filterable portfolio with modal view and image sliders
- **Testimonials** - Client reviews with avatars and ratings
- **Contact Form** - Functional contact form with validation and social links
- **Sticky Header** - Navigation with smooth scroll to sections
- **Footer** - Professional footer with quick links and contact info

### 🛠 Technical Features
- **TypeScript** for type safety and better development experience
- **Modular component structure** for easy customization
- **Responsive design** with mobile-first approach
- **SEO optimized** with proper meta tags and semantic HTML
- **Performance optimized** with lazy loading and efficient animations
- **Accessibility friendly** with proper ARIA labels and keyboard navigation

## 🚀 Quick Start

### Prerequisites
- Node.js (version 16 or higher)
- npm or yarn package manager

### Installation

1. **Clone or download this template**
   ```bash
   git clone <https://github.com/devlance074/portfolio-template.git>
   cd portfolio-template
   ```

2. **Install dependencies**
   ```bash
   npm install
   # or
   yarn install
   ```

3. **Start the development server**
   ```bash
   npm run dev
   # or
   yarn dev
   ```

4. **Open your browser**
   Navigate to `http://localhost:5173` to see your portfolio

## 📝 Customization Guide

### 1. Personal Information
Edit the `src/data/portfolioData.ts` file to customize all content:

```typescript
export const portfolioData = {
  personal: {
    name: "Your Name",
    title: "Your Title",
    tagline: "Your tagline",
    bio: "Your bio",
    location: "Your Location",
    email: "your@email.com",
    phone: "+1 (555) 123-4567",
    avatar: "path/to/your/image.jpg",
    resume: "path/to/your/resume.pdf"
  },
  // ... more sections
};
```

### 2. Social Media Links
Update your social media profiles in the same file:

```typescript
social: {
  github: "https://github.com/yourusername",
  linkedin: "https://linkedin.com/in/yourusername",
  twitter: "https://twitter.com/yourusername",
  dribbble: "https://dribbble.com/yourusername",
  behance: "https://behance.net/yourusername"
}
```

### 3. Skills & Experience
Customize your skills and work experience:

```typescript
skills: [
  {
    category: "Frontend",
    items: ["React", "TypeScript", "Next.js", "Tailwind CSS"]
  }
],
experience: [
  {
    year: "2023 - Present",
    title: "Your Job Title",
    company: "Company Name",
    description: "Job description"
  }
]
```

### 4. Projects
Add your own projects with images and details:

```typescript
projects: [
  {
    id: 1,
    title: "Project Name",
    category: "Web", // Web, Mobile, or Design
    description: "Project description",
    image: "path/to/project/image.jpg",
    images: ["image1.jpg", "image2.jpg"], // For slider
    tech: ["React", "Node.js", "MongoDB"],
    github: "https://github.com/yourusername/project",
    live: "https://yourproject.com",
    featured: true // Shows "Featured" badge
  }
]
```

### 5. Testimonials
Add client testimonials:

```typescript
testimonials: [
  {
    id: 1,
    name: "Client Name",
    role: "Client Role",
    company: "Company Name",
    avatar: "path/to/client/avatar.jpg",
    content: "Testimonial content"
  }
]
```

### 6. Colors & Styling
Customize the color scheme in `tailwind.config.js`:

```javascript
theme: {
  extend: {
    colors: {
      primary: {
        // Your primary color palette
        500: '#3b82f6', // Main blue
        600: '#2563eb', // Darker blue
      }
    }
  }
}
```

### 7. Images
Replace placeholder images with your own:
- **Profile image**: Update the `avatar` field in `portfolioData.ts`
- **Project images**: Add your project screenshots to the `public` folder
- **Testimonial avatars**: Add client photos for testimonials

## 🎨 Customization Tips

### Changing the Color Scheme
1. Update the primary colors in `tailwind.config.js`
2. Modify gradient backgrounds in components
3. Update hover states and accent colors

### Adding New Sections
1. Create a new component in `src/components/`
2. Import and add it to `src/App.tsx`
3. Update the navigation in `src/components/Header.tsx`

### Modifying Animations
- Animations are handled by Framer Motion
- Customize timing and effects in individual components
- Add new animations using the `motion` components

## 📱 Responsive Design

The template is built with a mobile-first approach:
- **Mobile**: < 768px
- **Tablet**: 768px - 1024px  
- **Desktop**: > 1024px

All components automatically adapt to different screen sizes using Tailwind's responsive utilities.

## 🌙 Dark Mode

Dark mode is implemented using:
- Tailwind CSS dark mode classes
- React Context for state management
- Local storage for persistence
- Smooth transitions between themes

## 📦 Build & Deployment

### Build for Production
```bash
npm run build
# or
yarn build
```

### Deploy to Netlify
1. Build the project: `npm run build`
2. Upload the `dist` folder to Netlify
3. Or connect your Git repository for automatic deployments

### Deploy to Vercel
1. Install Vercel CLI: `npm i -g vercel`
2. Run: `vercel`
3. Follow the prompts

### Deploy to GitHub Pages
1. Install gh-pages: `npm install --save-dev gh-pages`
2. Add to package.json:
   ```json
   "scripts": {
     "predeploy": "npm run build",
     "deploy": "gh-pages -d dist"
   }
   ```
3. Run: `npm run deploy`

## 🔧 Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run preview` - Preview production build
- `npm run lint` - Run ESLint

## 📁 Project Structure

```
src/
├── components/          # React components
│   ├── Header.tsx      # Navigation header
│   ├── Hero.tsx        # Hero section
│   ├── About.tsx       # About section
│   ├── Projects.tsx    # Projects gallery
│   ├── Testimonials.tsx # Testimonials section
│   ├── Contact.tsx     # Contact form
│   └── Footer.tsx      # Footer
├── contexts/           # React contexts
│   └── ThemeContext.tsx # Dark/light mode
├── data/              # Data files
│   └── portfolioData.ts # All content data
├── App.tsx            # Main app component
├── main.tsx          # App entry point
└── index.css         # Global styles
```

## 🎯 SEO Optimization

The template includes:
- Semantic HTML structure
- Meta tags for social sharing
- Proper heading hierarchy
- Alt text for images
- Structured data markup ready

To optimize further:
1. Update meta tags in `index.html`
2. Add your own favicon
3. Include Google Analytics (optional)
4. Add sitemap.xml for better indexing

## 🔍 Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## 🤝 Contributing

This is a template project, but if you'd like to contribute improvements:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## 📄 License

### MIT License

Copyright (c) 2024 Portfolio Website Template

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

### Usage Rights

✅ **You CAN:**
- Use this template for personal projects
- Use this template for commercial projects
- Modify and customize the code
- Distribute modified versions
- Use it for client work

❌ **You CANNOT:**
- Claim this template as your own original work
- Sell this template as-is without significant modifications
- Remove or modify the license file

### Attribution

While not required, attribution is appreciated:
- Link back to the original template repository
- Mention the template in your project credits
- Share your customized version with the community

## 🆘 Support & Help

### Common Issues

**Q: The development server won't start**
A: Make sure you have Node.js 16+ installed and run `npm install` first

**Q: Images aren't loading**
A: Check that image paths are correct in `portfolioData.ts` and images exist in the `public` folder

**Q: Dark mode isn't working**
A: Ensure your browser supports localStorage and JavaScript is enabled

**Q: Animations are laggy**
A: Try reducing motion in your system settings or disable animations in the code

### Getting Help

- Check the [Issues](https://github.com/devlance074/portfolio-template/issues) section
- Review the code comments for guidance
- Refer to the documentation for React, Tailwind CSS, and Framer Motion

## 🎉 Showcase

Built something amazing with this template? We'd love to see it! Share your customized portfolio:

- Tag us on social media
- Submit a showcase PR
- Add your site to the community gallery

---

**Happy coding! 🚀**

Made with ❤️ by DevLance for the developer community