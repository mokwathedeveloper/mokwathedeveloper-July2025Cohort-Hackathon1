# HTML Code Quality Refactoring Branch Documentation

This branch focuses on enhancing the overall code quality of the `index.html` and `styles.css` files, aligning with best practices for maintainability, performance, and user experience. The goal is to implement comprehensive image optimization, lazy loading, and advanced CSS techniques to further impress judges.

## Key Areas of Focus

-   **Comprehensive Image Optimization:** Extending the use of `srcset` and `sizes` attributes to all images within the `index.html` file to ensure optimal image delivery based on device and viewport.
-   **Lazy Loading for Images:** Implementing `loading="lazy"` for images that are not critical for the initial page load, thereby improving perceived performance and reducing initial bandwidth consumption.
-   **Semantic CSS and Specificity:** Improving CSS organization and specificity through structured naming conventions and the use of logical properties for better internationalization.
-   **Font Loading Optimization:** Implementing `font-display=swap` to prevent Flash of Invisible Text (FOIT) and enhance perceived loading performance.

## Key Areas of Focus

-   **Comprehensive Image Optimization:** Extending the use of `srcset` and `sizes` attributes to all images within the `index.html` file to ensure optimal image delivery based on device and viewport.
-   **Lazy Loading for Images:** Implementing `loading="lazy"` for images that are not critical for the initial page load, thereby improving perceived performance and reducing initial bandwidth consumption.

## Implementation Plan (File by File)

1.  **`index.html`:**
    -   Identify all `<img>` tags.
    -   For each `<img>` tag, add `srcset` and `sizes` attributes with appropriate image variations (assuming these variations exist or can be generated).
    -   For images below the fold (not immediately visible on page load), add the `loading="lazy"` attribute.

## Code Quality Improvements

I recently refactored the CSS to remove duplicate selectors, which will improve the maintainability of the code. Additionally, I addressed compatibility issues by removing experimental CSS animation properties (`animation-timeline`, `animation-range-start`, `animation-range-end`) from the `section` selector, ensuring broader browser support. Furthermore, I removed vendor prefixes and addressed deprecated CSS properties for improved cross-browser compatibility and adherence to modern standards. Finally, I resolved HTML validation errors by removing trailing slashes from void elements and correcting `mailto` href attributes.