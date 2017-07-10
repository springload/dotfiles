# Visual Studio Code tricks&tips

> Have a look at our default config in [`settings.json`](settings.json).

## Use of the install script

First of all, make sure you've installed Visual Studio Code and went through [this process](https://code.visualstudio.com/docs/setup/mac#_command-line) to install `code` shell command.

Now run these commands:

```sh
cd YOUR_PATH_TO_ALL_YOUR_REPOS/dotfiles
cd ./config/visual-studio-code
./install.sh
```

The script asks you if you want to install the extensions. Type `y` for yes. Defaults to no. 

`Do you want to install VSC extensions? [y|N]`

This will install or update to the last version all the extensions [listed below] (#useful-extensions)

Then you will be asked if you want to overwrite your own config.

`Do you want to overwrite user config? [y|N]`

If you answer `y`, you will have the possibility to save your previous config as a backup.

`Do you want to back up your current user config? [Y|n]`

Then the script will overwrite your current user config.

You will need to restart your Visual Studio Code for all the above to take effect.


## Useful Shortcuts

- CMD + N => New file
- CMD + , => Settings
- CMD + P => Look for a file across the project
- CMD + F => Find in the file
- CMD + SHIFT + F => Find in all files
- Select text then CMD + D => Will search and select same text across file so you can modify all of them at once.
- ALT + UP (or DOWN) => Move line up/down

## Useful Extensions

### Javascript:
- “Babel ES6/ES7”: Syntax coloring for ES6
- “ESLint”: Linting directly in VSC
- “jsx”: Support for JSX in VSC
- "npm": This extension supports running npm scripts defined in the package.json file and validating the installed modules against the dependencies defined in the package.json.
- “npm intelliSense”: Auto complete for packages from package.json
- "Javascript (ES6) code snippets: Some useful shortcuts for ES6 JS
- “React Redux ES6 Snippets”: creates containers/stateless components/reducers/etc skeletons directly for you
- “Autolinting for Javascript”: Automatically activates the correct linting for your project
- "React Code Snippets"
- "Javascript Console Utils": Quick keys for adding/removing console.logs 


### CSS
- “Color Picker”: details/picker of hexa colors directly into code
- "IntelliSense for CSS class names": provides CSS class name completion
- "Sass": Indented Sass syntax highlighting, autocomplete & snippets
- "SCSS IntelliSense": (Variables, Mixins and Functions) for all files in the workspace.

### Python/Wagtail
- “Python”: linting, debug, etc for Python
- “Django Template”: Autocomplete for if/else etc

### HTML

- "HTML Snippets"

### General
- “Seti-icons”: beautiful icons for file explorer
- "Path Intellisense"
- "Prettify JSON Extension": Prettify ugly JSON inside VSCode
- "SVG Viewer"
- "theme-dark-monokai"
