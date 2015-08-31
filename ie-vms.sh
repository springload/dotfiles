#!/usr/bin/env bash

read -r -p "This is going to take A WHILE. And eat bandwith. You may want to start it in the evening. Let's go? [y|N] " response
if [[ $response =~ ^(y|yes|Y) ]];then
    ok
else
    exit -1;
fi

# IE8 - XP
curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/OSX/IE8_XP/IE8.XP.For.MacVirtualBox.ova"

# IE9 - Win7
curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/OSX/IE9_Win7/IE9.Win7.For.MacVirtualBox.part{1.sfx,2.rar,3.rar,4.rar,5.rar}"

chmod +x IE9.Win7.For.MacVirtualBox.part1.sfx
./IE9.Win7.For.MacVirtualBox.part1.sfx

# IE10 - Win8
curl -O "https://az412801.vo.msecnd.net/vhd/IEKitV1_Final/VirtualBox/OSX/IE10_Win8/IE10.Win8.For.MacVirtualBox.part{1.sfx,2.rar,3.rar}"

chmod +x IE10.Win8.For.MacVirtualBox.part1.sfx
./IE10.Win8.For.MacVirtualBox.part1.sfx

# IE11 – Win8.1
curl -O "https://az412801.vo.msecnd.net/vhd/VMBuild_20141027/VirtualBox/IE11/Windows/IE11.Win8.1.For.Windows.VirtualBox.zip.00{1,2,3,4,5,6}"

# Microsoft Edge - Win10
curl -O "https://az792536.vo.msecnd.net/vms/VMBuild_20150801/VirtualBox/MSEdge/Mac/Microsoft%20Edge.Win10.For.Mac.VirtualBox.zip.00{1,2,3,4,5,6}"
