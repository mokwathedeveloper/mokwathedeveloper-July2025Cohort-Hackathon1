# HTML Code Quality Refactoring Branch Documentation

This branch focuses on enhancing the overall code quality of the `index.html` and `styles.css` files, aligning with best practices for maintainability, performance, and user experience. The goal is to implement comprehensive image optimization, lazy loading, and advanced CSS techniques to further impress judges.

## Key Areas of Focus

-   **Semantic HTML Structure:** Ensured correct top-level semantic structuring of `index.html`, with `<header>`, `<main>`, and `<footer>` elements as direct children of `<body>`, resolving nesting errors and improving document outline.
-   **Comprehensive Image Optimization:** Extended the use of `srcset` and `sizes` attributes to all images within the `index.html` file to ensure optimal image delivery based on device and viewport.
-   **Lazy Loading for Images:** Implemented `loading="lazy"` for images that are not critical for the initial page load, thereby improving perceived performance and reducing initial bandwidth consumption.
-   **Semantic CSS and Specificity:** Improved CSS organization and specificity through structured naming conventions and the use of logical properties for better internationalization.
-   **Font Loading Optimization:** Implemented `font-display=swap` to prevent Flash of Invisible Text (FOIT) and enhance perceived loading performance.
-   **CSS Refactoring:** Removed duplicate CSS selectors and addressed compatibility issues by removing experimental CSS animation properties (`animation-timeline`, `animation-range-start`, `animation-range-end`) from the `section` selector, ensuring broader browser support. Removed vendor prefixes and addressed deprecated CSS properties for improved cross-browser compatibility and adherence to modern standards.
-   **HTML Validation:** Resolved HTML validation errors by removing trailing slashes from void elements and correcting `mailto` href attributes.

## Implementation Plan (File by File)

1.  **`index.html`:**
    -   Corrected the semantic nesting of `<header>`, `<main>`, and `<footer>` elements.
    -   Identified all `<img>` tags and added `loading="lazy"` attribute for images below the fold.
    -   Ensured `srcset` and `sizes` attributes are correctly used for responsive image delivery.
2.  **`styles.css`:**
    -   Refactored CSS to remove duplicate selectors.
    -   Removed experimental CSS animation properties and vendor prefixes.
    -   Addressed deprecated CSS properties.