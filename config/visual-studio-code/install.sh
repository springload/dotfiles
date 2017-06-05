#!/usr/bin/env bash
source ../../lib.sh

bot "Installing Visual Studio code extensions and config."

code -v > /dev/null
if [[ $? -eq 0 ]];then
    ok "Installing extensions please wait..."
    code --install-extension TwentyChung.jsx
    code --install-extension anseki.vscode-color
    code --install-extension bibhasdn.django-html
    code --install-extension christian-kohler.npm-intellisense
    code --install-extension dbaeumer.vscode-eslint
    code --install-extension donjayamanne.python
    code --install-extension dzannotti.vscode-babel-coloring
    code --install-extension eg2.vscode-npm-script
    code --install-extension qinjia.seti-icons
    code --install-extension t-sauer.autolinting-for-javascript
    code --install-extension timothymclane.react-redux-es6-snippets
    code --install-extension xabikos.JavaScriptSnippets

    ok "Extensions for VSC have been installed. Please restart your VSC."
else
    error "It looks like the command 'code' isn't accessible."
    error "Please make sure you have Visual Studio Code installed"
    error "And that you executed this procedure: https://code.visualstudio.com/docs/setup/mac"
fi

read -r -p "Do you want to overwrite user config? [y|N] " configresponse
if [[ $configresponse =~ ^(y|yes|Y) ]];then
    read -r -p "Do you want to back up your current user config? [Y|n] " backupresponse
    if [[ $backupresponse =~ ^(n|no|N) ]];then
        ok "Skipping user config save."
    else
        cp $HOME/Library/Application\ Support/Code/User/settings.json $HOME/Library/Application\ Support/Code/User/settings.backup.json
        ok "Your previous config has been saved to: $HOME/Library/Application Support/Code/User/settings.backup.json"
    fi
    cp ./vincent-config.json $HOME/Library/Application\ Support/Code/User/settings.json

    ok "New user config has been written. Please restart your VSC."
else
    ok "Skipping user config overwriting.";
fi
