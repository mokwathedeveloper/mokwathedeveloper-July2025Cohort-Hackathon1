# Active Navigation Links

## Overview

This feature highlights the active navigation link in the header based on the user's scroll position. As the user scrolls through different sections of the page, the corresponding navigation link will receive an 'active' class, providing a visual indicator of their current location.

## Setup Instructions

1.  **Include the JavaScript file:** Add the following script tag to your `index.html` file, just before the closing `</body>` tag:

    ```html
    <script src="assets/js/activeNav.js"></script>
    ```

2.  **HTML Structure:** Ensure your navigation links have `href` attributes that correspond to the `id` of your sections (e.g., `<a href="#skills">` for `<section id="skills">`).

3.  **Styling:** Add the following CSS to your `styles.css` file to style the active link:

    ```css
    .nav__links a.active {
      color: var(--link-hover); /* Or any other active state style */
      font-weight: bold;
    }

    .nav__links a.active::after {
      width: 100%; /* Ensure the underline is full width for active link */
    }
    ```

## Customization

-   **Active State Styling:** You can customize the appearance of the active navigation link by modifying the `.nav__links a.active` CSS rules in your `styles.css` file.
-   **Scroll Offset:** The `sectionHeight / 3` value in `activeNav.js` determines how far into a section the user needs to scroll before it becomes active. You can adjust this value.

## Accessibility Notes

-   This feature primarily provides a visual cue. Ensure that your navigation is still usable without this visual highlight for users who may not perceive color or visual changes.

## Troubleshooting

-   **Links not activating:**
    -   Verify that the `href` attributes of your navigation links exactly match the `id` attributes of your sections.
    -   Ensure the JavaScript file is correctly linked in `index.html`.
    -   Check for any conflicting CSS rules that might override the active state styling.

## Dependencies

No external libraries required.
