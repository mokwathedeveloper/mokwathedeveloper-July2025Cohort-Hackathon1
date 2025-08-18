# Deployment Guide

This document provides instructions for deploying your portfolio to various hosting platforms.

## GitHub Pages

GitHub Pages is a free and easy way to deploy your static site directly from your GitHub repository.

1.  **Enable GitHub Pages:**
    *   Go to your repository settings on GitHub.
    *   Navigate to the "Pages" section.
    *   Select the branch you want to deploy from (usually `main` or `master`).
    *   Choose the `/(root)` directory.
    *   Save your changes.

2.  **URL Structure:**
    *   Your site will be available at `https://<your-username>.github.io/<your-repo-name>/`.

## Netlify

Netlify offers a powerful and flexible platform for deploying static sites.

1.  **Sign up and connect your GitHub account.**
2.  **Create a new site from Git:**
    *   Choose your repository.
    *   Configure the build settings (for a pure HTML/CSS project, no build command is needed).
    *   The publish directory should be the root of your project.
3.  **Deploy the site.**

## Vercel

Vercel is another excellent option for deploying static sites, especially those built with front-end frameworks.

1.  **Sign up and connect your GitHub account.**
2.  **Import your project:**
    *   Select your repository.
    *   Vercel will automatically detect that it is a static site.
    *   No build command is necessary.
3.  **Deploy.**

## Caching

To ensure that your visitors always see the latest version of your site, you can configure caching headers. For static sites, a common strategy is to use a `Cache-Control` header.

```
Cache-Control: public, max-age=3600
```

This tells the browser to cache the assets for one hour. Most hosting platforms handle this automatically.

## SEO (Search Engine Optimization)

To improve your site's visibility in search engines, consider the following:

*   **Meta Tags:** Ensure your `index.html` has a descriptive `<title>` and `<meta name="description">`.
*   **Open Graph:** Add Open Graph meta tags for better social media sharing.
*   **Sitemap:** Create a `sitemap.xml` file to help search engines crawl your site.

## Post-Deployment Checklist

- [ ]  Verify that all pages and links work correctly.
- [ ]  Check the console for any errors.
- [ ]  Test the site on different devices and browsers.
- [ ]  Run a performance audit using tools like Lighthouse or PageSpeed Insights.
