#!/usr/bin/env bash
source ./lib.sh

read -r -p "This is going to take A WHILE. And eat bandwith. You may want to start it in the evening. Let's go? [y|N] " response
if [[ $response =~ ^(y|yes|Y) ]];then
    ok
else
    exit -1;
fi

read -r -p "install IE8 - XP? [y|N] " ie8response
if [[ $ie8response =~ ^(y|yes|Y) ]];then
    ok "will install IE8 - XP."
else
    ok "will skip IE8 - XP.";
fi

read -r -p "install IE9 - Win7? [y|N] " ie9response
if [[ $ie9response =~ ^(y|yes|Y) ]];then
    ok "will install IE9 - Win7.";
else
    ok "will skip IE9 - Win7.";
fi

read -r -p "install IE10 - Win 8? [y|N] " ie10response
if [[ $ie10response =~ ^(y|yes|Y) ]];then
    ok "will install IE10 - Win 8.";
else
    ok "will skip IE10 - Win 8.";
fi

read -r -p "install IE11 - Win 8.1? [y|N] " ie11response
if [[ $ie11response =~ ^(y|yes|Y) ]];then
    ok "will install IE11 - Win 8.1.";
else
    ok "will skip IE11 - Win 8.1.";
fi

read -r -p "install Microsoft Edge - Win10? [y|N] " edgeresponse
if [[ $edgeresponse =~ ^(y|yes|Y) ]];then
    ok "will install Microsoft Edge - Win10.";
else
    ok "will skip Microsoft Edge - Win10.";
fi

# IE8 - XP
if [[ $ie8response =~ ^(y|yes|Y) ]];then
    curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/OSX/IE8_XP/IE8.XP.For.MacVirtualBox.ova"

    ok "IE8 installed";
fi

# IE9 - Win7
if [[ $ie9response =~ ^(y|yes|Y) ]];then
    curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/OSX/IE9_Win7/IE9.Win7.For.MacVirtualBox.part{1.sfx,2.rar,3.rar,4.rar,5.rar}"

    chmod +x IE9.Win7.For.MacVirtualBox.part1.sfx
    ./IE9.Win7.For.MacVirtualBox.part1.sfx

    ok "IE9 installed";
fi



# IE10 - Win8
if [[ $ie10response =~ ^(y|yes|Y) ]];then
    curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/OSX/IE10_Win8/IE10.Win8.For.MacVirtualBox.part{1.sfx,2.rar,3.rar}"

    chmod +x IE10.Win8.For.MacVirtualBox.part1.sfx
    ./IE10.Win8.For.MacVirtualBox.part1.sfx

    ok "IE10 installed";
fi

# IE11 – Win8.1
if [[ $ie11response =~ ^(y|yes|Y) ]];then
    curl -O "https://az412801.vo.msecnd.net/vhd/VMBuild_20141027/VirtualBox/IE11/Windows/IE11.Win8.1.For.Windows.VirtualBox.zip.00{1,2,3,4,5,6}"
    ok "IE11 installed";
fi

# Microsoft Edge - Win10
if [[ $edgeresponse =~ ^(y|yes|Y) ]];then
    curl -O "https://az792536.vo.msecnd.net/vms/VMBuild_20150801/VirtualBox/MSEdge/Mac/Microsoft%20Edge.Win10.For.Mac.VirtualBox.zip.00{1,2,3,4,5,6}"
    ok "Edge installed";
fi
