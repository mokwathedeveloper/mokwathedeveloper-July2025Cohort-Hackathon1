# Hero Section Documentation

## 1. Purpose and Importance

The Hero Section serves as the primary entry point and first impression of the portfolio website. Its main objectives are:
*   **Immediate Engagement:** To capture the visitor's attention within the first few seconds.
*   **Clear Introduction:** To introduce Mokwa Moffat Ohuru as a software developer, highlighting key skills and a professional headshot.
*   **Navigation Gateway:** To provide clear calls-to-action (CTAs) that guide visitors to other important sections of the portfolio (Skills, Projects, Education, Contact).
*   **Brand Identity:** To establish the visual tone and professional aesthetic of the portfolio.

A well-crafted hero section is crucial for user retention and encouraging further exploration of the site.

## 2. Implementation Details

### HTML Structure (`index.html`)

The hero section is encapsulated within a `<section>` element with the class `hero-section`. This semantic choice clearly defines its role as a distinct, self-contained part of the document.

```html
<section class="hero-section">
  <div class="text">
    <h1>Hi, I'm Mokwa Moffat Ohuru </h1>
    <p>...</p>
    <div class="links">
      <a href="#skills">...</a>
      <a href="#projects">...</a>
      <a href="#education">...</a>
      <a href="#contact">...</a>
    </div>
  </div>
  <div class="headshot">
    <img src="images/hero-headshot.webp" alt="..." srcset="..." sizes="...">
  </div>
</section>
```

*   **`div.text`**: Contains the main heading (`<h1>`), a descriptive paragraph (`<p>`), and a container for internal navigation links (`div.links`).
*   **`div.headshot`**: Holds the professional headshot image.
*   **`<h1>`**: Uses a gradient text effect for visual appeal.
*   **Internal Links**: Each link within `div.links` uses a Font Awesome icon (`<i>`) and descriptive text (`<span>`) to clearly indicate its destination.

### CSS Styling (`styles.css`)

The styling for the hero section is primarily handled within the `.hero-section` and its child selectors in `styles.css`.

*   **Layout (`.hero-section`)**:
    *   Uses `display: flex` to arrange the text content and headshot side-by-side on larger screens.
    *   `justify-content: center` and `align-items: center` ensure vertical and horizontal alignment.
    *   `gap` provides consistent spacing between the text and image.
    *   `background-color: transparent !important; box-shadow: none !important; border: none !important;` overrides default section styles to allow the body's animated gradient background to show through.
*   **Headshot Styling (`.hero-section .headshot img`)**:
    *   `width: clamp(250px, 30vw, 350px)` provides fluid sizing for responsiveness.
    *   `aspect-ratio: 1/1` and `border-radius: 50%` ensure a perfect circular shape.
    *   `border` and `box-shadow` add visual emphasis.
    *   `transition` properties create a subtle hover effect (though the hover effect is defined on the parent `.hero-section .headshot` in the original CSS, it applies to the image).
    *   `object-fit: cover` prevents image distortion.
*   **Text Styling (`.hero-section .text h1`)**:
    *   `font-size: clamp(2.5rem, 5vw, 3.5rem)` ensures fluid typography.
    *   `background: linear-gradient(...)`, `-webkit-background-clip: text`, and `color: transparent` create a visually appealing gradient text effect.
*   **Links Styling (`.hero-section .text .links a`)**:
    *   Styled as prominent buttons with a linear gradient background, `padding`, `border-radius`, and `box-shadow`.
    *   `transition` properties provide smooth hover and active states (`transform: scale(1.05) translateY(-2px)`).

## 3. Usage and Integration

The Hero Section is designed to be the first content block within the `<main>` element of `index.html`. It is self-contained and does not require external JavaScript for its core functionality, relying solely on HTML and CSS. The internal links (`#skills`, `#projects`, etc.) seamlessly integrate with other sections of the portfolio, providing a smooth user experience through `scroll-behavior: smooth` defined in `html` styles.

## 4. Responsiveness and Accessibility

### Responsiveness

*   **Fluid Layout:** The use of `flexbox` and `gap` for the main layout, combined with `clamp()` for sizing elements like the headshot and fonts, ensures the hero section adapts gracefully to various screen sizes.
*   **Media Queries:** At smaller screen sizes (e.g., `max-width: 768px`), a media query in `styles.css` adjusts the `hero-section` to `flex-direction: column-reverse`, stacking the headshot above the text for optimal mobile viewing. Text alignment is also adjusted to `center`.

### Accessibility

*   **Semantic HTML:** The use of `<section>`, `<h1>`, and `<p>` provides clear semantic meaning for screen readers.
*   **`alt` attribute:** The `alt` attribute on the `<img>` tag (`alt="A professional headshot of Mokwa Moffat Ohuru, a full-stack software developer."`) provides a descriptive text alternative for visually impaired users.
*   **`aria-label`:** While not directly on the hero section's internal links, the overall navigation links in the `nav` element utilize `aria-label` for enhanced accessibility.
*   **Responsive Images (`srcset`, `sizes`):** These attributes ensure that appropriate image sizes are loaded based on the user's viewport and device pixel ratio, improving performance and user experience for all.
*   **`prefers-reduced-motion`:** The global implementation of `@media (prefers-reduced-motion: reduce)` ensures that users who prefer less motion on their devices will have animations disabled, preventing potential discomfort.

## 5. Customization

To customize the Hero Section:

*   **Text Content:** Modify the `<h1>` and `<p>` tags within `div.text` in `index.html`.
*   **Headshot Image:** Replace `images/hero-headshot.webp` with your own image. Ensure it's optimized for web and consider providing `srcset` and `sizes` for responsiveness.
*   **Internal Links:** Adjust the `href` attributes and text content of the `<a>` tags within `div.links` in `index.html`.
*   **Colors and Fonts:** Modify the CSS variables in the `:root` selector of `styles.css` (e.g., `--link-primary`, `--text-primary`, `--gradient-start`, `--gradient-end`) to change the color scheme.
*   **Layout Adjustments:** Fine-tune `gap` values, `padding`, or `margin` in `styles.css` for spacing.
*   **Animations:** Adjust `transition` and `box-shadow` properties for the headshot in `styles.css` to modify its visual effects.

## 6. Best Practices Demonstrated

The Hero Section exemplifies several web development best practices:

*   **Semantic HTML5:** Using appropriate tags for structure and meaning.
*   **Mobile-First Responsive Design:** Ensuring optimal viewing across all devices.
*   **Accessibility (A11y):** Prioritizing usability for all users, including those with disabilities.
*   **Performance Optimization:** Utilizing `.webp` image format and responsive image attributes.
*   **Maintainable CSS:** Employing CSS variables for easy theme management.
*   **Engaging UI/UX:** Subtle animations and clear calls-to-action enhance user experience.
*   **Fluid Typography:** Using `clamp()` for scalable text.
