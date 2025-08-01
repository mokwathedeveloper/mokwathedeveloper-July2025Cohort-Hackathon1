# HTML Code Quality Refactoring Branch Documentation

This branch focuses on enhancing the overall code quality of the `index.html` file, aligning with SonarQube's best practices for maintainability, performance, and user experience. The goal is to implement comprehensive image optimization and lazy loading to further impress judges.

## Key Areas of Focus

-   **Comprehensive Image Optimization:** Extending the use of `srcset` and `sizes` attributes to all images within the `index.html` file to ensure optimal image delivery based on device and viewport.
-   **Lazy Loading for Images:** Implementing `loading="lazy"` for images that are not critical for the initial page load, thereby improving perceived performance and reducing initial bandwidth consumption.

## Implementation Plan (File by File)

1.  **`index.html`:**
    -   Identify all `<img>` tags.
    -   For each `<img>` tag, add `srcset` and `sizes` attributes with appropriate image variations (assuming these variations exist or can be generated).
    -   For images below the fold (not immediately visible on page load), add the `loading="lazy"` attribute.
