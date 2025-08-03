# Navbar Documentation

## 1. Purpose and Importance

The Navbar (Navigation Bar) is a critical component of the portfolio website, serving as the primary means for users to navigate between different sections. Its key purposes include:
*   **Global Navigation:** Providing consistent access to main sections (e.g., GitHub, LinkedIn, Email).
*   **Brand Identity:** Displaying the portfolio owner's name as a clickable brand element.
*   **User Experience:** Ensuring intuitive and accessible navigation across all device sizes.
*   **Aesthetic Appeal:** Contributing to the modern and professional look of the website with a glassmorphism effect.

A well-designed and implemented navbar is fundamental for user satisfaction and overall site usability.

## 2. Implementation Details

### HTML Structure (`index.html`)

The navbar is structured using a `<nav>` HTML5 semantic element, which is appropriate for major navigation blocks. It contains three main parts:

```html
<nav>
  <div class="nav__logo">
    <a href="/">Mokwa Moffat Ohuru</a>
  </div>

  <!-- Hamburger Menu (for mobile) -->
  <input type="checkbox" id="hamburger-toggle" class="hamburger-toggle">
  <label for="hamburger-toggle" class="hamburger-icon">
    <i class="fa-solid fa-bars"></i>
  </label>

  <!-- Desktop Navigation -->
  <div class="nav__links">
    <a href="https://github.com/mokwathedeveloper" target="_blank" rel="noopener noreferrer" aria-label="View my GitHub profile">
      <i class="fa-brands fa-github"></i>
      <span>Github</span>
    </a>
    <a href="https://www.linkedin.com/in/mokwa-dev/" target="_blank" rel="noopener noreferrer" aria-label="View my LinkedIn profile">
      <i class="fa-brands fa-linkedin"></i>
      <span>Linkedin</span>
    </a>
    <a href="mailto:moffatmokwaohuru @gmail.com" aria-label="Send me an email">
      <i class="fa-solid fa-envelope"></i>
      <span>Email</span>
    </a>
  </div>
</nav>
```

*   **`div.nav__logo`**: Contains the main brand link, typically leading back to the homepage.
*   **`input[type="checkbox"]` (`hamburger-toggle`)**: This hidden checkbox is the core of the CSS-only hamburger menu. Its `checked` state controls the visibility of the mobile navigation.
*   **`<label>` (`hamburger-icon`)**: This element is visually styled as the hamburger icon and is associated with the `hamburger-toggle` checkbox, allowing it to toggle the checkbox's state when clicked.
*   **`div.nav__links`**: Contains the main navigation links (GitHub, LinkedIn, Email). On desktop, these are displayed inline; on mobile, they transform into a vertical menu.
*   **Links (`<a>`)**: Each link includes a Font Awesome icon (`<i>`) and text (`<span>`). External links use `target="_blank"` and `rel="noopener noreferrer"` for security and best practice.

### CSS Styling (`styles.css`)

The navbar's styling is defined within the `nav` and its descendant selectors in `styles.css`.

*   **Glassmorphism Effect (`nav`)**:
    *   `background: rgba(30, 41, 59, 0.6);` provides a semi-transparent background.
    *   `backdrop-filter: blur(10px);` and `-webkit-backdrop-filter: blur(10px);` create the frosted glass effect.
    *   `border-bottom`, `box-shadow`, `position: sticky`, `top: 0`, and `z-index` ensure it remains visible and layered correctly at the top of the viewport.
*   **Layout (`nav`)**:
    *   `display: flex`, `justify-content: space-between`, and `align-items: center` arrange the logo and links sections.
    *   `height` and `padding` control its dimensions.
*   **Desktop Navigation (`.nav__links a`)**:
    *   Links have a subtle underline animation on hover (`::after` pseudo-element) for enhanced interactivity.
    *   `transition` properties ensure smooth visual feedback.
    *   The `font-weight` for navigation links is set to `600`, ensuring consistency with loaded Google Fonts.
*   **Hamburger Menu (`.hamburger-toggle`, `.hamburger-icon`, `.nav__links`)**:
    *   The `hamburger-toggle` checkbox is `display: none` on desktop.
    *   The `hamburger-icon` is `display: none` on desktop and `display: block` on mobile.
    *   On mobile, `.nav__links` transforms into a column layout (`flex-direction: column`) and its visibility is controlled by `max-height` and `overflow: hidden` based on the `hamburger-toggle:checked` state (the "checkbox hack").
    *   `position: absolute`, `top`, `left`, and `width: 100%` position the mobile menu correctly.
    *   `background` and `backdrop-filter` are applied to the mobile menu for consistency.

## 3. Usage and Integration

The Navbar is placed at the very beginning of the `<body>` element in `index.html`, ensuring it's one of the first elements loaded and visible to the user. It is a self-contained component that integrates seamlessly with the rest of the page through standard HTML linking. No external JavaScript is required for its functionality, making it lightweight and performant.

## 4. Responsiveness and Accessibility

### Responsiveness

*   **Mobile-First Approach:** The CSS is designed with a mobile-first philosophy, ensuring core styles are applied for small screens, and then progressively enhanced for larger viewports using media queries.
*   **Media Queries:** Specific `@media (max-width: 768px)` and `@media (max-width: 600px)` rules adjust the navbar's layout, padding, and the appearance of the hamburger menu to provide an optimal experience on tablets and mobile devices.
*   **Fluid Sizing:** `clamp()` is used for font sizes and spacing where appropriate, contributing to fluid responsiveness.

### Accessibility

*   **Semantic HTML:** The use of `<nav>` clearly identifies the navigation region for assistive technologies.
*   **ARIA Attributes:** `aria-label` attributes are used on the navigation links (e.g., `aria-label="View my GitHub profile"`) to provide more descriptive context for screen reader users, improving their understanding of the link's purpose.
*   **Keyboard Navigation:** The navbar is fully navigable using a keyboard. The `:focus-visible` pseudo-class (globally defined) provides clear visual focus indicators for keyboard users.
*   **CSS-only Hamburger:** By avoiding JavaScript for the hamburger menu, potential accessibility issues related to script loading or execution failures are mitigated.
*   **`prefers-reduced-motion`:** The global implementation ensures that users who prefer less motion will not experience the hover animations, enhancing accessibility for those with vestibular disorders or motion sensitivities.

## 5. Customization

To customize the Navbar:

*   **Brand Name:** Modify the text within the `<a>` tag inside `div.left` in `index.html`.
*   **Navigation Links:** Adjust the `href`, `aria-label`, icon class (`<i>`), and text (`<span>`) for each `<a>` tag within `div.right` in `index.html`.
*   **Colors:** Modify CSS variables in the `:root` selector of `styles.css` such as `--page-bg`, `--link-primary`, `--text-primary`, and `--shadow-color` to change the navbar's color scheme.
*   **Glassmorphism Effect:** Adjust the `rgba` values for `background` and the `blur()` value for `backdrop-filter` in `styles.css`.
*   **Hamburger Icon:** The Font Awesome icon can be changed by updating the class within the `<i>` tag inside the `hamburger-icon` label.
*   **Mobile Menu Behavior:** Fine-tune the `max-height` and `transition` properties for `nav .right` within the media queries in `styles.css` to alter the mobile menu's animation.

## 6. Best Practices Demonstrated

The Navbar component showcases several best practices:

*   **Semantic HTML5:** Proper use of `<nav>` and other elements.
*   **Mobile-First Responsive Design:** Adapting gracefully to all screen sizes.
*   **Accessibility (A11y):** Comprehensive ARIA attributes and keyboard navigability.
*   **CSS-only Solutions:** Implementing complex UI (hamburger menu) without JavaScript for robustness and performance.
*   **Maintainable CSS:** Extensive use of CSS variables for easy theming and consistency.
*   **Visual Polish:** Modern glassmorphism effect and subtle hover animations.
*   **Performance:** Lightweight implementation with no reliance on JavaScript for core functionality.
