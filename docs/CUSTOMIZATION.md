# Customizing Your Portfolio

This guide provides instructions on how to customize the visual appearance and structure of your portfolio.

## CSS Variables

The primary method for customizing the theme is through CSS variables. These variables allow you to change colors, fonts, and spacing without rewriting entire CSS rules.

### Core Variables

The core variables are defined in `styles.css`. Here are the key variables you can modify:

```css
:root {
  --primary-color: #3498db;
  --secondary-color: #2ecc71;
  --background-color: #f4f4f4;
  --text-color: #333;
  --font-family: 'Arial', sans-serif;
}
```

- `--primary-color`: Main brand color, used for links, buttons, and highlights.
- `--secondary-color`: Used for secondary actions or accents.
- `--background-color`: The default background color for the site.
- `--text-color`: The default text color.
- `--font-family`: The primary font for the site.

### Theming

You can create a dark theme by overriding these variables within a media query or a specific class.

```css
/* Dark Theme */
@media (prefers-color-scheme: dark) {
  :root {
    --background-color: #333;
    --text-color: #f4f4f4;
  }
}

/* Or with a class */
.dark-mode {
  --background-color: #333;
  --text-color: #f4f4f4;
}
```

## Typography

Font sizes and styles are also controlled by CSS variables.

```css
:root {
  --font-size-base: 16px;
  --font-size-h1: 2.5rem;
  --font-size-h2: 2rem;
  --font-size-h3: 1.5rem;
}
```

## Layout Utilities

The layout is built on a simple grid system. You can adjust the container width and gutter spacing.

```css
:root {
  --container-width: 1140px;
  --gutter-width: 20px;
}
```

## Accessibility (A11y)

Ensure that any color changes meet WCAG contrast guidelines. Use online tools to check the contrast between your chosen text and background colors.

## Safe Overrides

To make future updates easier, it is recommended to create a `custom-styles.css` file for your overrides.

1.  Create a new file named `custom-styles.css`.
2.  Link it in `index.html` *after* the main `styles.css`:

```html
<link rel="stylesheet" href="styles.css">
<link rel="stylesheet" href="custom-styles.css">
```

3.  Add your custom CSS rules to `custom-styles.css`. For example:

```css
/* custom-styles.css */
:root {
  --primary-color: #e74c3c; /* Change primary color to red */
}
```
