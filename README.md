# CameraPricing Website

A professional camera pricing and comparison website built with Astro.js, designed to help users discover, compare, and find pricing information for cameras from leading brands.

## 🚀 Features

- **Clean, Modern Design**: Minimalist interface focused on camera discovery
- **Brand Showcase**: Featured camera brands with logos, descriptions, and pricing links
- **Camera Comparison**: Side-by-side comparison table for popular camera models
- **Responsive Layout**: Optimized for desktop, tablet, and mobile devices
- **Fast Performance**: Built with Astro.js for optimal loading speeds
- **Type Safety**: Full TypeScript support for better development experience

## 🛠️ Tech Stack

- **Framework**: [Astro.js](https://astro.build/) v5.8.0
- **Language**: TypeScript
- **Package Manager**: Bun
- **Styling**: Custom CSS with modern layouts
- **Linting**: Biome + ESLint + Prettier
- **Deployment**: Netlify ready

## 📁 Project Structure

```
src/
├── components/          # Reusable UI components
│   ├── Header.astro    # Navigation header
│   ├── Hero.astro      # Hero section with call-to-action
│   ├── ProductGrid.astro # Camera brand cards grid
│   ├── CameraTable.astro # Camera comparison table
│   ├── Footer.astro    # Site footer
│   └── ...
├── layouts/
│   └── Layout.astro    # Base page layout
├── pages/
│   └── index.astro     # Homepage
└── styles/             # Global styles

public/
├── images/
│   ├── brands/         # Brand logos (Canon, Sony, Nikon, etc.)
│   └── hero_image.png  # Hero section image
├── styles/
│   └── global.css      # Global CSS styles
└── favicon.svg         # Site favicon
```

## 🎯 Featured Camera Brands

- **Canon** - Industry-leading DSLR and mirrorless cameras
- **Sony** - Innovative mirrorless and professional cameras
- **Nikon** - Renowned for professional photography equipment
- **Fujifilm** - Premium mirrorless cameras with film heritage
- **Lumix (Panasonic)** - Advanced hybrid photo/video cameras
- **OM System (Olympus)** - Compact and weather-sealed cameras
- **Leica** - Luxury precision cameras
- **Hasselblad** - Medium format professional cameras
- **And more...**

## 🚀 Getting Started

### Prerequisites

- Node.js 18+ or Bun
- Git

### Installation

1. Clone the repository:
```bash
git clone https://github.com/kitjack/camera-pricing-website.git
cd camera-pricing-website
```

2. Install dependencies:
```bash
bun install
```

3. Start the development server:
```bash
bun run dev
```

4. Open [http://localhost:4321](http://localhost:4321) in your browser

### Available Scripts

- `bun run dev` - Start development server
- `bun run build` - Build for production
- `bun run preview` - Preview production build
- `bun run lint` - Run linting and type checking
- `bun run format` - Format code with Biome
- `bun run commit` - Automatically commit and push any changes
- `bun run watch-commit` - Watch for file changes and auto-commit them
- `bun run deploy` - Build the project and commit/push changes

### 🔄 Auto-Commit Features

This project includes automated git workflows:

1. **Manual Auto-Commit**: Run `bun run commit` to automatically commit and push any pending changes
2. **File Watcher**: Run `bun run watch-commit` to continuously monitor for changes and auto-commit them
3. **Deploy Command**: Run `bun run deploy` to build and automatically deploy changes

The auto-commit system will:
- ✅ Detect any file changes
- ✅ Add all changes to git
- ✅ Create descriptive commit messages with timestamps
- ✅ Push changes to the main branch automatically
- ✅ Provide colored terminal output for better visibility

## 🎨 Design System

### Color Palette
- **Primary**: Black and white for clean contrast
- **Accent**: Blue tones for interactive elements
- **Background**: Light grays for subtle sections

### Typography
- **Headers**: Clean, modern sans-serif
- **Body**: Readable font stack for optimal legibility

### Layout
- **Grid System**: CSS Grid for responsive brand cards
- **Flexbox**: For navigation and component alignment
- **Mobile-First**: Responsive design approach

## 📱 Responsive Design

The website is fully responsive with breakpoints for:
- **Mobile**: 320px - 768px
- **Tablet**: 768px - 1024px
- **Desktop**: 1024px+

## 🚀 Deployment

### Netlify (Recommended)

The project includes Netlify configuration:

1. Connect your GitHub repository to Netlify
2. Deploy automatically on push to main branch
3. Build command: `bun run build`
4. Publish directory: `dist`

### Manual Deployment

```bash
bun run build
# Upload the 'dist' folder to your hosting provider
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Commit your changes: `git commit -m 'Add amazing feature'`
4. Push to the branch: `git push origin feature/amazing-feature`
5. Open a Pull Request

## 📄 License

This project is private and proprietary.

## 📞 Contact

For questions or support, please open an issue in the GitHub repository.

---

Built with ❤️ using Astro.js