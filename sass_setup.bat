@ECHO OFF
:: This batch file creates all necessary files for SASS using 7-1 Pattern

TITLE SASS Automatic Setup (7-1 Pattern)

ECHO ============================
ECHO SASS AUTOMATIC SETUP (7-1 Pattern)
ECHO ============================
ECHO/
ECHO This script will create the necessary folders and files for your SASS project using the 7-1 pattern.
ECHO/
PAUSE
ECHO Please wait... Creating folders and files.

:: Save current directory path to return after completion
SET "ORIGINAL_DIR=%CD%"

:: Check if the root SASS folder exists and create it
ECHO/
ECHO Creating main SASS folder...
if exist sass\NUL (
    echo - sass folder already exists
) else (
    mkdir sass
    echo + SASS root folder created successfully.
)

:: Moving to the SASS folder
cd sass

:: Create subfolders based on 7-1 pattern

:: Abstracts folder
ECHO/
ECHO Creating abstracts folder...
if exist abstracts\NUL (
    echo - abstracts folder already exists
) else (
    mkdir abstracts
    echo + abstracts folder created successfully.
)

:: Base folder
ECHO/
ECHO Creating base folder...
if exist base\NUL (
    echo - base folder already exists
) else (
    mkdir base
    echo + base folder created successfully.
)

:: Components folder
ECHO/
ECHO Creating components folder...
if exist components\NUL (
    echo - components folder already exists
) else (
    mkdir components
    echo + components folder created successfully.
)

:: Layout folder
ECHO/
ECHO Creating layout folder...
if exist layout\NUL (
    echo - layout folder already exists
) else (
    mkdir layout
    echo + layout folder created successfully.
)

:: Pages folder
ECHO/
ECHO Creating pages folder...
if exist pages\NUL (
    echo - pages folder already exists
) else (
    mkdir pages
    echo + pages folder created successfully.
)

:: Themes folder
ECHO/
ECHO Creating themes folder...
if exist themes\NUL (
    echo - themes folder already exists
) else (
    mkdir themes
    echo + themes folder created successfully.
)

:: Utils folder
ECHO/
ECHO Creating utils folder...
if exist utils\NUL (
    echo - utils folder already exists
) else (
    mkdir utils
    echo + utils folder created successfully.
)

:: Vendors folder
ECHO/
ECHO Creating vendors folder...
if exist vendors\NUL (
    echo - vendors folder already exists
) else (
    mkdir vendors
    echo + vendors folder created successfully.
)

:: Create main files inside abstracts folder
ECHO/
ECHO Creating files in abstracts folder...
ECHO -------------------

:: _functions.scss
if exist abstracts\_functions.scss (
    echo - _functions.scss already exists
) else (
    type nul >abstracts\_functions.scss
    echo + _functions.scss created successfully.
)

:: _mixins.scss
if exist abstracts\_mixins.scss (
    echo - _mixins.scss already exists
) else (
    type nul >abstracts\_mixins.scss
    echo + _mixins.scss created successfully.
)

:: _variables.scss
if exist abstracts\_variables.scss (
    echo - _variables.scss already exists
) else (
    type nul >abstracts\_variables.scss
    echo + _variables.scss created successfully.
)

ECHO -------------------

:: Create base files inside base folder
ECHO/
ECHO Creating files in base folder...
ECHO -------------------

:: _reset.scss
if exist base\_reset.scss (
    echo - _reset.scss already exists
) else (
    type nul >base\_reset.scss
    echo + _reset.scss created successfully.
)

:: _typography.scss
if exist base\_typography.scss (
    echo - _typography.scss already exists
) else (
    type nul >base\_typography.scss
    echo + _typography.scss created successfully.
)

:: _utilities.scss
if exist base\_utilities.scss (
    echo - _utilities.scss already exists
) else (
    type nul >base\_utilities.scss
    echo + _utilities.scss created successfully.
)

:: _base.scss (New file added)
if exist base\_base.scss (
    echo - _base.scss already exists
) else (
    type nul >base\_base.scss
    echo + _base.scss created successfully.
)

ECHO -------------------

:: Create files in components folder
ECHO/
ECHO Creating files in components folder...
ECHO -------------------

:: _buttons.scss
if exist components\_buttons.scss (
    echo - _buttons.scss already exists
) else (
    type nul >components\_buttons.scss
    echo + _buttons.scss created successfully.
)

ECHO -------------------

:: Create files in pages folder
ECHO/
ECHO Creating files in pages folder...
ECHO -------------------

:: _home.scss
if exist pages\_home.scss (
    echo - _home.scss already exists
) else (
    type nul >pages\_home.scss
    echo + _home.scss created successfully.
)

:: _contact.scss
if exist pages\_contact.scss (
    echo - _contact.scss already exists
) else (
    type nul >pages\_contact.scss
    echo + _contact.scss created successfully.
)

ECHO -------------------

:: Create files in layout folder
ECHO/
ECHO Creating files in layout folder...
ECHO -------------------

:: _header.scss
if exist layout\_header.scss (
    echo - _header.scss already exists
) else (
    type nul >layout\_header.scss
    echo + _header.scss created successfully.
)

:: _footer.scss
if exist layout\_footer.scss (
    echo - _footer.scss already exists
) else (
    type nul >layout\_footer.scss
    echo + _footer.scss created successfully.
)

:: _sidebar.scss
if exist layout\_sidebar.scss (
    echo - _sidebar.scss already exists
) else (
    type nul >layout\_sidebar.scss
    echo + _sidebar.scss created successfully.
)

ECHO -------------------

:: Create files in utils folder
ECHO/
ECHO Creating files in utils folder...
ECHO -------------------

:: _helpers.scss
if exist utils\_helpers.scss (
    echo - _helpers.scss already exists
) else (
    type nul >utils\_helpers.scss
    echo + _helpers.scss created successfully.
)

ECHO -------------------

:: Create file in vendors folder
ECHO/
ECHO Creating files in vendors folder...
ECHO -------------------

:: _bootstrap.scss
if exist vendors\_bootstrap.scss (
    echo - _bootstrap.scss already exists
) else (
    type nul >vendors\_bootstrap.scss
    echo + _bootstrap.scss created successfully.
)

ECHO -------------------

:: Create the main style.scss file
ECHO/
ECHO Creating main style.scss file...
if exist style.scss (
    echo - style.scss already exists
) else (
    type nul >style.scss
    echo + style.scss created successfully.
)

:: Write the @use imports into style.scss
ECHO/
ECHO Adding @use imports into style.scss...
(
    echo @use "abstracts/functions";
    echo @use "abstracts/mixins";
    echo @use "abstracts/variables";
    echo @use "base/reset";
    echo @use "base/typography";
    echo @use "base/utilities";
    echo @use "base/base";  :: Added _base.scss
    echo @use "components/buttons";
    echo @use "layout/header";
    echo @use "layout/footer";
    echo @use "layout/sidebar";
    echo @use "pages/home";
    echo @use "pages/contact";
    echo @use "utils/helpers";
    echo @use "vendors/bootstrap";
) >> style.scss

ECHO -------------------

:: Final message
ECHO/
ECHO Setup completed successfully! 🎉
ECHO/
ECHO All necessary @use imports have been added to your style.scss file.
ECHO You can now modify these imports as needed.
ECHO/

:: Return to the original directory
cd /d "%ORIGINAL_DIR%"

PAUSE
