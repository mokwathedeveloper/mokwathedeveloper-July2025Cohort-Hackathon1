# Fade-in Animations on Scroll

## Overview

This feature adds subtle fade-in animations to sections as they are scrolled into view, enhancing the visual appeal and user experience of the portfolio.

## Setup Instructions

1.  **Include the JavaScript file:** Add the following script tag to your `index.html` file, just before the closing `</body>` tag:

    ```html
    <script src="assets/js/fadeInAnimations.js"></script>
    ```

2.  **HTML Structure:** Ensure your content is organized within `<section>` tags.

3.  **Styling:** Add the following CSS to your `styles.css` file:

    ```css
    section {
      opacity: 0;
      transform: translateY(20px);
      transition: opacity 0.6s ease-out, transform 0.6s ease-out;
    }

    section.fade-in-visible {
      opacity: 1;
      transform: translateY(0);
    }
    ```

## Customization

-   **Animation Trigger Point:** Adjust the `0.8` value in `fadeInAnimations.js` (e.g., `screenHeight * 0.8`) to control how much of the section needs to be visible before the animation triggers.
-   **Animation Duration and Type:** Modify the `transition` properties in `styles.css` to change the speed and easing of the fade-in effect.
-   **Initial Transform:** Change the `translateY` value in `styles.css` to alter the starting position of the animation.

## Accessibility Notes

-   The animations are subtle and should not hinder usability. For users who prefer reduced motion, consider adding a media query for `prefers-reduced-motion` to disable these animations.

## Troubleshooting

-   **Animations not appearing:**
    -   Ensure the JavaScript file is correctly linked in `index.html`.
    -   Verify that your sections are correctly defined with `<section>` tags.
    -   Check for any conflicting CSS rules that might override the `opacity` or `transform` properties.

## Dependencies

No external libraries required.
