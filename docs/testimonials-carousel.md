# Testimonials Carousel

## Overview

This feature implements an interactive testimonials carousel to replace the static radio button system. It allows users to navigate between testimonials by clicking on indicator dots.

## Setup Instructions

1.  **Include the JavaScript file:** Add the following script tag to your `index.html` file, just before the closing `</body>` tag:

    ```html
    <script src="assets/js/testimonials.js"></script>
    ```

2.  **HTML Structure:** Ensure your `index.html` contains the following structure for the testimonials section:

    ```html
    <section id="testimonials" class="testimonial-section">
      <h2 class="section-title">Testimonials</h2>
      <div class="testimonial-carousel">
        <div class="carousel-slides">
          <!-- Testimonial cards go here -->
        </div>
        <div class="carousel-dots"></div>
      </div>
    </section>
    ```

## Customization

-   **Styling:** The active dot is styled with the `.active` class. You can customize the appearance of the active and inactive dots in your `styles.css` file.

## Accessibility Notes

-   The indicator dots are implemented as `<button>` elements with `aria-label` attributes to ensure they are accessible to screen readers.

## Troubleshooting

-   **Carousel not working:** Ensure that the JavaScript file is correctly linked in your `index.html` file and that the HTML structure matches the one described in the setup instructions.

## Dependencies

No external libraries required.
