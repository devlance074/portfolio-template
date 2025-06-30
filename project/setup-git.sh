#!/bin/bash

# Portfolio Template - Git Setup Script
# This script will help you push your portfolio template to GitHub

echo "🚀 Setting up Git for Portfolio Template"
echo "========================================"

# Check if git is installed
if ! command -v git >/dev/null 2>&1; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

# Initialize git repository
echo "📁 Initializing Git repository..."
git init

# Add remote origin
echo "🔗 Adding remote repository..."
git remote add origin https://github.com/devlance074/portfolio-template.git

# Create .gitignore if it doesn't exist
if [ ! -f .gitignore ]; then
    echo "📝 Creating .gitignore file..."
    cat > .gitignore << 'EOL'
# Dependencies
node_modules/
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# Production builds
dist/
build/

# Environment variables
.env
.env.local
.env.development.local
.env.test.local
.env.production.local

# IDE files
.vscode/
.idea/
*.swp
*.swo

# OS generated files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# Logs
logs
*.log

# Runtime data
pids
*.pid
*.seed
*.pid.lock

# Coverage directory used by tools like istanbul
coverage/

# Dependency directories
jspm_packages/

# Optional npm cache directory
.npm

# Optional eslint cache
.eslintcache

# Output of 'npm pack'
*.tgz

# Yarn Integrity file
.yarn-integrity

# parcel-bundler cache (https://parceljs.org/)
.cache
.parcel-cache

# next.js build output
.next

# nuxt.js build output
.nuxt

# vuepress build output
.vuepress/dist

# Serverless directories
.serverless

# Bolt specific
.bolt/
EOL
fi

# Add all files
echo "📦 Adding files to staging..."
git add .

# Commit files
echo "💾 Creating initial commit..."
git commit -m "Initial commit: Modern Portfolio Website Template

Features:
- Fully responsive design (mobile, tablet, desktop)
- Dark/Light mode toggle with smooth transitions
- Modern animations with Framer Motion
- Apple-like aesthetic with clean design
- Complete project showcase with modal views
- Contact form with validation
- Testimonials section
- SEO optimized and accessibility friendly

Tech Stack:
- React 18 + TypeScript
- Tailwind CSS for styling
- Framer Motion for animations
- Lucide React for icons
- Vite for build tooling

Sections:
- Hero with profile and CTA buttons
- About with skills and experience timeline
- Projects gallery with filters and modals
- Testimonials with client reviews
- Contact form with social links
- Sticky navigation with smooth scroll

Design:
- Modern gradient backgrounds
- Hover effects and micro-interactions
- Consistent 8px spacing system
- Professional color palette
- Typography hierarchy

Documentation:
- Comprehensive README with setup guide
- Customization instructions
- Deployment guides for multiple platforms
- MIT License for open source use

Ready for production use and easy customization!"

# Set main branch
echo "🌿 Setting main branch..."
git branch -M main

# Push to GitHub
echo "🚀 Pushing to GitHub..."
if git push -u origin main; then
    echo ""
    echo "✅ SUCCESS! Your portfolio template has been pushed to GitHub!"
    echo ""
    echo "🔗 Repository: https://github.com/devlance074/portfolio-template"
    echo "📖 View README: https://github.com/devlance074/portfolio-template#readme"
    echo ""
    echo "🎉 Next steps:"
    echo "   1. Visit your repository on GitHub"
    echo "   2. Enable GitHub Pages for free hosting"
    echo "   3. Customize the template with your information"
    echo "   4. Deploy to Netlify or Vercel for production"
    echo ""
else
    echo ""
    echo "❌ Push failed. This might be because:"
    echo "   1. Repository already has content"
    echo "   2. Authentication issues"
    echo "   3. Network connectivity problems"
    echo ""
    echo "💡 Try these solutions:"
    echo "   1. Force push: git push -f origin main"
    echo "   2. Check your GitHub authentication"
    echo "   3. Ensure repository exists and is accessible"
    echo ""
fi

echo "📋 Manual commands if needed:"
echo "   git init"
echo "   git remote add origin https://github.com/devlance074/portfolio-template.git"
echo "   git add ."
echo "   git commit -m 'Initial commit: Portfolio template'"
echo "   git branch -M main"
echo "   git push -u origin main"