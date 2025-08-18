# Upgrade Notes

This guide explains how to maintain your custom overrides when updating the portfolio template.

## Maintaining Custom Overrides

If you have followed the recommended practice of creating a `custom-styles.css` file for your modifications, upgrading is straightforward.

1.  **Backup Your `custom-styles.css`:** Before making any changes, create a backup of your `custom-styles.css` file.

2.  **Update the Core Files:** Replace the old `index.html` and `styles.css` with the new versions from the updated template.

3.  **Review Changes:** Check the release notes for the new version to see if there are any changes that might affect your customizations.

4.  **Test Your Site:** Open your `index.html` in a browser and verify that your custom styles are still being applied correctly. If you encounter any issues, you may need to adjust your `custom-styles.css` to account for changes in the core styles.

## Resolving Conflicts

If you have modified the core `styles.css` file directly, you will need to manually merge your changes with the new version.

1.  **Use a diff tool:** Use a tool like `diff` or a visual diff tool to compare your modified `styles.css` with the new version.

2.  **Identify your changes:** Isolate the changes you made to the original file.

3.  **Apply your changes to the new file:** Carefully add your modifications to the new `styles.css` file.

To avoid this manual process in the future, it is highly recommended to move your customizations to a separate `custom-styles.css` file.
