# Performance Optimization

## Overview

This feature focuses on improving the loading speed and overall performance of the portfolio website through various optimization techniques.

## Setup Instructions

### Image Optimization

1.  **Responsive Images with `srcset` and `<picture>`:**
    For each image, generate multiple sizes and formats (e.g., `.webp` for modern browsers, `.jpg` as a fallback).
    Update `index.html` to use the `<picture>` element with `<source>` tags for different formats and `srcset` for different resolutions.

    Example:
    ```html
    <picture>
      <source srcset="images/hero-headshot.webp" type="image/webp">
      <img src="images/hero-headshot.jpg" alt="Mokwa Moffat Ohuru headshot" loading="lazy">
    </picture>
    ```

2.  **Lazy Loading:**
    Add `loading="lazy"` attribute to `<img>` tags for images that are not immediately visible on page load (e.g., images in sections further down the page).

    Example:
    ```html
    <img src="images/hero-headshot.webp" alt="Mokwa Moffat Ohuru headshot" loading="lazy">
    ```

### Code Minification

1.  **CSS Minification:**
    The `styles.css` file will be minified to remove whitespace and comments, reducing its file size.

2.  **JavaScript Minification:**
    All JavaScript files in `assets/js/` will be minified to reduce their file size.

## Customization

-   **Image Sizes:** You can adjust the sizes and number of responsive image variants based on your specific needs and target devices.
-   **Lazy Loading Threshold:** Browsers handle `loading="lazy"` automatically, but for more fine-grained control, you could implement a custom Intersection Observer.

## Accessibility Notes

-   Ensure `alt` attributes are always provided for `<img>` tags for screen reader users.

## Troubleshooting

-   **Images not loading:** Double-check `srcset` paths and fallback `src` attributes.
-   **Minification issues:** If minified code causes errors, ensure your original code is valid and consider using online minifiers for debugging.

## Dependencies

No external libraries are directly added for these optimizations, but external tools might be used for minification and image generation.
