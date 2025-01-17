#!/bin/bash

# SASS Automatic Setup (7-1 Pattern)

echo "============================"
echo "SASS AUTOMATIC SETUP (7-1 Pattern)"
echo "============================"
echo ""
echo "This script will create the necessary folders and files for your SASS project using the 7-1 pattern."
echo ""
echo "Please wait... Creating folders and files."

# Save the current directory path where the script is located
SCRIPT_DIR=$(pwd)

# Check if the root SASS folder exists and create it
echo ""
echo "Creating main SASS folder..."
if [ -d "sass" ]; then
    echo "- sass folder already exists"
else
    mkdir sass
    echo "+ SASS root folder created successfully."
fi

# Moving to the SASS folder
cd sass

# Create subfolders based on 7-1 pattern

# Abstracts folder
echo ""
echo "Creating abstracts folder..."
if [ -d "abstracts" ]; then
    echo "- abstracts folder already exists"
else
    mkdir abstracts
    echo "+ abstracts folder created successfully."
fi

# Base folder
echo ""
echo "Creating base folder..."
if [ -d "base" ]; then
    echo "- base folder already exists"
else
    mkdir base
    echo "+ base folder created successfully."
fi

# Components folder
echo ""
echo "Creating components folder..."
if [ -d "components" ]; then
    echo "- components folder already exists"
else
    mkdir components
    echo "+ components folder created successfully."
fi

# Layout folder
echo ""
echo "Creating layout folder..."
if [ -d "layout" ]; then
    echo "- layout folder already exists"
else
    mkdir layout
    echo "+ layout folder created successfully."
fi

# Pages folder
echo ""
echo "Creating pages folder..."
if [ -d "pages" ]; then
    echo "- pages folder already exists"
else
    mkdir pages
    echo "+ pages folder created successfully."
fi

# Themes folder
echo ""
echo "Creating themes folder..."
if [ -d "themes" ]; then
    echo "- themes folder already exists"
else
    mkdir themes
    echo "+ themes folder created successfully."
fi

# Utils folder
echo ""
echo "Creating utils folder..."
if [ -d "utils" ]; then
    echo "- utils folder already exists"
else
    mkdir utils
    echo "+ utils folder created successfully."
fi

# Vendors folder
echo ""
echo "Creating vendors folder..."
if [ -d "vendors" ]; then
    echo "- vendors folder already exists"
else
    mkdir vendors
    echo "+ vendors folder created successfully."
fi

# Create main files inside abstracts folder
echo ""
echo "Creating files in abstracts folder..."
echo "-------------------"

# _functions.scss
if [ -f "abstracts/_functions.scss" ]; then
    echo "- _functions.scss already exists"
else
    touch abstracts/_functions.scss
    echo "+ _functions.scss created successfully."
fi

# _mixins.scss
if [ -f "abstracts/_mixins.scss" ]; then
    echo "- _mixins.scss already exists"
else
    touch abstracts/_mixins.scss
    echo "+ _mixins.scss created successfully."
fi

# _variables.scss
if [ -f "abstracts/_variables.scss" ]; then
    echo "- _variables.scss already exists"
else
    touch abstracts/_variables.scss
    echo "+ _variables.scss created successfully."
fi

echo "-------------------"

# Create base files inside base folder
echo ""
echo "Creating files in base folder..."
echo "-------------------"

# _reset.scss
if [ -f "base/_reset.scss" ]; then
    echo "- _reset.scss already exists"
else
    touch base/_reset.scss
    echo "+ _reset.scss created successfully."
fi

# _typography.scss
if [ -f "base/_typography.scss" ]; then
    echo "- _typography.scss already exists"
else
    touch base/_typography.scss
    echo "+ _typography.scss created successfully."
fi

# _utilities.scss
if [ -f "base/_utilities.scss" ]; then
    echo "- _utilities.scss already exists"
else
    touch base/_utilities.scss
    echo "+ _utilities.scss created successfully."
fi

# _base.scss (New file added)
if [ -f "base/_base.scss" ]; then
    echo "- _base.scss already exists"
else
    touch base/_base.scss
    echo "+ _base.scss created successfully."
fi

echo "-------------------"

# Create files in components folder
echo ""
echo "Creating files in components folder..."
echo "-------------------"

# _buttons.scss
if [ -f "components/_buttons.scss" ]; then
    echo "- _buttons.scss already exists"
else
    touch components/_buttons.scss
    echo "+ _buttons.scss created successfully."
fi

echo "-------------------"

# Create files in pages folder
echo ""
echo "Creating files in pages folder..."
echo "-------------------"

# _home.scss
if [ -f "pages/_home.scss" ]; then
    echo "- _home.scss already exists"
else
    touch pages/_home.scss
    echo "+ _home.scss created successfully."
fi

# _contact.scss
if [ -f "pages/_contact.scss" ]; then
    echo "- _contact.scss already exists"
else
    touch pages/_contact.scss
    echo "+ _contact.scss created successfully."
fi

echo "-------------------"

# Create files in layout folder
echo ""
echo "Creating files in layout folder..."
echo "-------------------"

# _header.scss
if [ -f "layout/_header.scss" ]; then
    echo "- _header.scss already exists"
else
    touch layout/_header.scss
    echo "+ _header.scss created successfully."
fi

# _footer.scss
if [ -f "layout/_footer.scss" ]; then
    echo "- _footer.scss already exists"
else
    touch layout/_footer.scss
    echo "+ _footer.scss created successfully."
fi

# _sidebar.scss
if [ -f "layout/_sidebar.scss" ]; then
    echo "- _sidebar.scss already exists"
else
    touch layout/_sidebar.scss
    echo "+ _sidebar.scss created successfully."
fi

echo "-------------------"

# Create files in utils folder
echo ""
echo "Creating files in utils folder..."
echo "-------------------"

# _helpers.scss
if [ -f "utils/_helpers.scss" ]; then
    echo "- _helpers.scss already exists"
else
    touch utils/_helpers.scss
    echo "+ _helpers.scss created successfully."
fi

echo "-------------------"

# Create file in vendors folder
echo ""
echo "Creating files in vendors folder..."
echo "-------------------"

# _bootstrap.scss
if [ -f "vendors/_bootstrap.scss" ]; then
    echo "- _bootstrap.scss already exists"
else
    touch vendors/_bootstrap.scss
    echo "+ _bootstrap.scss created successfully."
fi

echo "-------------------"

# Create the main style.scss file
echo ""
echo "Creating main style.scss file..."
if [ -f "style.scss" ]; then
    echo "- style.scss already exists"
else
    touch style.scss
    echo "+ style.scss created successfully."
fi

# Write the @use imports into style.scss
echo ""
echo "Adding @use imports into style.scss..."
echo -e "@use \"abstracts/functions\";\n@use \"abstracts/mixins\";\n@use \"abstracts/variables\";\n@use \"base/reset\";\n@use \"base/typography\";\n@use \"base/utilities\";\n@use \"base/base\";\n@use \"components/buttons\";\n@use \"layout/header\";\n@use \"layout/footer\";\n@use \"layout/sidebar\";\n@use \"pages/home\";\n@use \"pages/contact\";\n@use \"utils/helpers\";\n@use \"vendors/bootstrap\";" >> style.scss

echo "-------------------"

# Final message
echo ""
echo "Setup completed successfully! 🎉"
echo ""
echo "All necessary @use imports have been added to your style.scss file."
echo "You can now modify these imports as needed."
echo ""

# Ask the user what to do with this script
echo ""
echo "What would you like to do with the \`sass_setup.sh\` file?"
echo "1. Delete the file"
echo "2. Add it to .gitignore"
echo "3. Leave it as is"
read -p "Enter your choice (1, 2, or 3): " choice

if [ "$choice" -eq 1 ]; then
    rm -- "$0"
    echo "The file has been deleted."
fi

if [ "$choice" -eq 2 ]; then
    echo "Checking for .gitignore file..."
    if [ -f "$SCRIPT_DIR/.gitignore" ]; then
        # If .gitignore exists, add sass_setup.sh to it if not already present
        if ! grep -Fxq "sass_setup.sh    # SASS setup shell script" "$SCRIPT_DIR/.gitignore"; then
            echo "sass_setup.sh    # SASS setup shell script" >> "$SCRIPT_DIR/.gitignore"
            echo "sass_setup.sh has been added to .gitignore with a comment."
        else
            echo "sass_setup.sh is already in .gitignore."
        fi
    else
        # If .gitignore does not exist, create it and add sass_setup.sh
        echo "sass_setup.sh    # SASS setup shell script" > "$SCRIPT_DIR/.gitignore"
        echo ".gitignore file created and sass_setup.sh has been added to it with a comment."
    fi
fi

if [ "$choice" -eq 3 ]; then
    echo "The file will remain as is."
fi

# Return to the original directory
cd "$SCRIPT_DIR"

echo "Script finished."
