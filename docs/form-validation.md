# Form Validation

## Overview

This feature adds real-time validation to the contact form, providing immediate feedback to the user on input errors. It checks for required fields and valid email format.

## Setup Instructions

1.  **Include the JavaScript file:** Add the following script tag to your `index.html` file, just before the closing `</body>` tag:

    ```html
    <script src="assets/js/formValidation.js"></script>
    ```

2.  **HTML Structure:** Ensure your form inputs have `id` attributes (e.g., `id="name"`, `id="email"`, `id="message"`) and are wrapped in a `.form-group` div.

    ```html
    <form>
      <div class="form-group">
        <input type="text" id="name" autocomplete="name" required>
        <label for="name">Name</label>
        <small></small> <!-- For error messages -->
      </div>
      <!-- Other form groups -->
      <button type="submit">Send Message</button>
    </form>
    ```

3.  **Styling:** Add the following CSS to your `styles.css` file to style validation feedback:

    ```css
    .form-group small {
      color: #e74c3c; /* Red for error messages */
      position: absolute;
      bottom: -20px;
      left: 0;
      visibility: hidden;
      opacity: 0;
      transition: all 0.3s ease;
    }

    .form-group.error small {
      visibility: visible;
      opacity: 1;
    }

    .form-group.error input,
    .form-group.error textarea {
      border-color: #e74c3c; /* Red border for invalid fields */
    }
    ```

## Customization

-   **Validation Rules:** You can extend the `formValidation.js` file to add more complex validation rules (e.g., minimum length for message, phone number format).
-   **Error Messages:** Customize the error messages in the `showError` function.
-   **Styling:** Adjust the colors and positioning of error messages and input borders in `styles.css`.

## Accessibility Notes

-   Error messages are visually associated with their respective fields.

## Troubleshooting

-   **Validation not working:**
    -   Ensure the JavaScript file is correctly linked in `index.html`.
    -   Verify that your HTML structure matches the expected `.form-group` and `id` attributes.
    -   Check for any JavaScript errors in the browser console.

## Dependencies

No external libraries required.
