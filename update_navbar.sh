#!/bin/bash

# Switch to navbar branch
git checkout feature/navbar

# Create branch documentation
cat > BRANCH_DOCS.md << 'EOL'
# Navbar Branch Documentation

This branch focuses on developing the responsive navigation bar.

## Features
- Responsive design with hamburger menu
- Smooth transitions and animations
- Accessible navigation
- Sticky positioning
- Glassmorphism effect

## Breakpoints
- Desktop: 992px and above
- Tablet: 768px - 991px
- Mobile: 767px and below

## Accessibility Features
- Keyboard navigable
- Proper ARIA attributes
- Focus states for interactive elements
- Semantic HTML structure
EOL

git add BRANCH_DOCS.md
git commit -m "docs(navbar): add comprehensive branch documentation"

# Create HTML structure
cat > index.html << 'EOL'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Navbar Development</title>
  <link rel="stylesheet" href="styles.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
  <nav>
    <div class="nav-container">
      <div class="brand">
        <a href="/">Mokwa Moffat Ohuru</a>
      </div>

      <input type="checkbox" id="nav-toggle" class="nav-toggle">
      <label for="nav-toggle" class="hamburger">
        <i class="fas fa-bars"></i>
        <span class="sr-only">Menu</span>
      </label>

      <div class="nav-links">
        <a href="#about">
          <i class="fas fa-user"></i>
          <span>About</span>
        </a>
        <a href="#projects">
          <i class="fas fa-code"></i>
          <span>Projects</span>
        </a>
        <a href="#contact">
          <i class="fas fa-envelope"></i>
          <span>Contact</span>
        </a>
      </div>
    </div>
  </nav>
</body>
</html>
EOL

git add index.html
git commit -m "feat(markup): implement navbar HTML structure

- Added semantic nav element
- Created responsive toggle system
- Included accessible hamburger menu
- Added proper ARIA attributes
- Implemented icon+text navigation links"

# Create CSS styles
cat > styles.css << 'EOL'
:root {
  --nav-bg: rgba(30, 41, 59, 0.8);
  --text-primary: #f8fafc;
  --link-primary: #38bdf8;
  --link-hover: #7dd3fc;
  --shadow-color: rgba(0, 0, 0, 0.3);
}

nav {
  background: var(--nav-bg);
  backdrop-filter: blur(10px);
  -webkit-backdrop-filter: blur(10px);
  position: sticky;
  top: 0;
  z-index: 1000;
  box-shadow: 0 2px 10px var(--shadow-color);
}

.nav-container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 1rem 2rem;
  max-width: 1400px;
  margin: 0 auto;
}

.brand a {
  font-size: 1.5rem;
  font-weight: 700;
  color: var(--link-primary);
  text-decoration: none;
}

.nav-links {
  display: flex;
  gap: 1.5rem;
}

.nav-links a {
  color: var(--text-primary);
  display: flex;
  align-items: center;
  gap: 0.5rem;
  font-weight: 500;
  position: relative;
}

.nav-links a::after {
  content: '';
  position: absolute;
  bottom: -5px;
  left: 0;
  width: 0;
  height: 2px;
  background: var(--link-hover);
  transition: width 0.3s ease;
}

.nav-links a:hover::after {
  width: 100%;
}

.nav-toggle {
  display: none;
}

.hamburger {
  display: none;
  cursor: pointer;
  font-size: 1.5rem;
  color: var(--text-primary);
}

.sr-only {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  white-space: nowrap;
  border-width: 0;
}

@media (max-width: 768px) {
  .nav-links {
    position: fixed;
    top: 70px;
    left: 0;
    width: 100%;
    background: var(--nav-bg);
    backdrop-filter: blur(10px);
    -webkit-backdrop-filter: blur(10px);
    flex-direction: column;
    align-items: center;
    padding: 1rem 0;
    max-height: 0;
    overflow: hidden;
    transition: max-height 0.5s ease;
  }

  .nav-toggle:checked ~ .nav-links {
    max-height: 500px;
  }

  .nav-links a {
    width: 100%;
    justify-content: center;
    padding: 1rem;
  }

  .hamburger {
    display: block;
  }
}
EOL

git add styles.css
git commit -m "feat(styles): implement responsive navbar styling

- Added glassmorphism effect with backdrop-filter
- Implemented smooth underline animation
- Created mobile-first responsive design
- Added proper z-index for stacking context
- Included accessible focus states
- Implemented hamburger menu transition"

# Return to main branch
git checkout main