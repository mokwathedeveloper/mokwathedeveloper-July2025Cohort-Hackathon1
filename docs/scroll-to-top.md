# Scroll to Top Button

## Overview

This feature adds a floating "scroll to top" button that appears when the user scrolls down the page. Clicking the button smoothly scrolls the page to the top.

## Setup Instructions

1.  **Include the JavaScript file:** Add the following script tag to your `index.html` file, just before the closing `</body>` tag:

    ```html
    <script src="assets/js/scrollToTop.js"></script>
    ```

2.  **Styling:** Add the following CSS to your `styles.css` file to style the button:

    ```css
    .scroll-to-top {
      position: fixed;
      bottom: 20px;
      right: 20px;
      background-color: var(--primary-color);
      color: white;
      border: none;
      border-radius: 50%;
      width: 50px;
      height: 50px;
      font-size: 24px;
      cursor: pointer;
      opacity: 0;
      transform: translateY(100px);
      transition: opacity 0.3s, transform 0.3s;
    }

    .scroll-to-top.show {
      opacity: 1;
      transform: translateY(0);
    }
    ```

## Customization

-   **Scroll Threshold:** You can change the scroll distance at which the button appears by modifying the `300` value in `scrollToTop.js`.
-   **Styling:** You can customize the button's appearance by modifying the CSS in your `styles.css` file.

## Accessibility Notes

-   The button is a `<button>` element, which is accessible by default.

## Troubleshooting

-   **Button not appearing:** Ensure that the JavaScript file is correctly linked in your `index.html` file and that you have added the necessary CSS to your `styles.css` file.

## Dependencies

No external libraries required.
