# SASS Setup Scripts (7-1 Pattern)

## Introduction:

This project contains two scripts to automatically set up the folder structure and files for a **SASS** project using the **7-1 Pattern**. The 7-1 Pattern is a widely-used folder structure for organizing SASS projects into 7 main folders, helping developers maintain a clean, scalable, and organized project.

## Folder and File Structure:

The scripts will create the following **SASS** folder and file structure:
sass/
│
├── base/
│ ├── \_base.scss # Base styles
│ ├── \_reset.scss # Reset/normalize
│ ├── \_typography.scss # Typography rules
│ └── \_utilities.scss # Utility classes
│
├── components/
│ └── \_buttons.scss # Buttons styles
│
├── layout/
│ ├── \_header.scss # Header styles
│ ├── \_footer.scss # Footer styles
│ └── \_sidebar.scss # Sidebar styles
│
├── pages/
│ ├── \_home.scss # Home page styles
│ └── \_contact.scss # Contact page styles
│
├── themes/ # Folder for themes
│
├── utils/
│ ├── \_functions.scss # SASS functions
│ ├── \_helpers.scss # Helper classes
│ ├── \_mixins.scss # Mixins
│ └── \_variables.scss # Variables
│
├── vendors/
│ └── \_bootstrap.scss # Vendor-specific styles (e.g., Bootstrap)
│
├── style.scss # Main file where all the imports are included
└── .gitignore # (Optional, for version control)

## How to Use:

#### **1. On Windows**:

- Download the `sass_setup.bat` script.
- Open **Command Prompt** in the folder where the script is located.
- Run the script using the command:
  sass_setup.bat

#### **2. On Linux/macOS**:

- Download the `sass_setup.sh` script.
- Open **Terminal** in the folder where the script is located.
- Make the script executable by running:
  chmod +x sass_setup.sh

- Then execute the script with the following command:
  ./sass_setup.sh

## What the Scripts Will Do:

- The scripts will create all the necessary folders and files for your SASS project using the **7-1 Pattern**.
- They will also create a `style.scss` file and include all the necessary `@use` imports.
- After running the script, your project will be ready for you to start organizing your SASS styles and building your project with ease.

### Additional Notes:

- Make sure you're working in an empty folder or a new project to avoid overwriting any existing files.
- The scripts have been tested on Windows, Linux, and macOS systems, and can be modified to suit your specific needs.
- The **.gitignore** file is included to keep your Git repository clean.
