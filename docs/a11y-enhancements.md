# Advanced Accessibility (A11y) Enhancements

## Overview

This feature focuses on improving the accessibility of the portfolio website to ensure it is usable by the widest possible audience, including individuals with disabilities. It covers semantic HTML, ARIA attributes, and color contrast considerations.

## Setup Instructions

Most accessibility enhancements involve reviewing and adjusting existing HTML and CSS. No new JavaScript files are typically added for these specific enhancements, but existing structures are refined.

### Semantic HTML

-   **Review HTML Structure:** Ensure that HTML elements are used for their intended semantic purpose (e.g., `<header>`, `<nav>`, `<main>`, `<section>`, `<footer>`).
-   **Headings:** Verify that heading levels (`<h1>` to `<h6>`) are used correctly and hierarchically to outline content structure.

### ARIA Attributes

-   **Interactive Elements:** Ensure interactive elements (buttons, links, form controls) have appropriate ARIA attributes (e.g., `aria-label` for clear descriptions, `aria-hidden` for decorative elements).
-   **Landmark Roles:** Use ARIA landmark roles (e.g., `role="navigation"`, `role="main"`, `role="contentinfo"`) on major sections to help screen reader users navigate.

### Color Contrast

-   **WCAG Compliance:** Manually check color combinations (text against background) to ensure they meet WCAG (Web Content Accessibility Guidelines) contrast ratios. Tools like WebAIM Contrast Checker can assist with this.

## Customization

-   **Color Palette:** When choosing or modifying colors, always consider their contrast ratios to maintain accessibility.
-   **ARIA Labels:** Customize `aria-label` values to be descriptive and helpful for screen reader users.

## Accessibility Notes

-   **Keyboard Navigation:** Ensure all interactive elements are reachable and operable using only the keyboard (e.g., using `Tab` key).
-   **Focus Indicators:** Maintain clear visual focus indicators (`:focus-visible` styles) for keyboard users.

## Troubleshooting

-   **Accessibility Audit Tools:** Use browser extensions (e.g., Lighthouse, axe DevTools) to identify common accessibility issues.
-   **Manual Testing:** Always perform manual testing with keyboard navigation and screen readers to catch issues automated tools might miss.

## Dependencies

No external libraries required.
