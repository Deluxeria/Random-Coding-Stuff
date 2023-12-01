# Creating directory in user's desktop
mkdir $home\Desktop\"Joe Bart's Mods"

# Variables
$url = "https://dl.dropboxusercontent.com/scl/fi/7tec7kmyu02uzgsvmwjyf/mods.zip?rlkey=x2zk7j3r0escm9fcg42vzc2d5&dl=0"
$dest = "$home\Desktop\Joe Bart's Mods\mods.zip"
$readme = "$home\Desktop\Joe Bart's Mods\ReadMe.txt"

# Downloading zip file, unzipping and deleting the zip file leaving only mods folder
Invoke-WebRequest -Uri $url -OutFile $dest
Expand-Archive -LiteralPath "$home\Desktop\Joe Bart's Mods\mods.zip" -DestinationPath "$home\Desktop\Joe Bart's Mods"
Remove-Item -Path "$home\Desktop\Joe Bart's Mods\mods.zip"

# Creating ReadMe.txt
New-Item $readme -ItemType File -Value ("Use with forge 47.2.16 [1.20.1]" + [Environment]::NewLine)
Add-Content $readme "Personally I use ATLauncher (https://atlauncher.com/downloads), here's how to make a instance in ATLauncher that has Joe Bart's Mods:"
Add-Content $readme "1. Download ATLauncher and launch it"
Add-Content $readme "2. Go to the Create Pack tab"
Add-Content $readme "3. Choose Minecraft Version 1.20.1 and Forge as Loader (Loader Version: 47.2.16) - You can also optionally change the Instance Name at the top"
Add-Content $readme "4. Click Create Instance and go to the Instances tab"
Add-Content $readme "5. There you will se the Instance, press the Open Folder button"
Add-Content $readme "6. You will now have the instance folder open in front of you, now just drag and drop the mods folder from your Desktop\Joe Bart's Mods\ in to the instance folder"
Add-Content $readme "7. Now you can close the instance folder and go back into ATLauncher and press Play"
Add-Content $readme "8. And now you're done!"
Add-Content $readme ""
Add-Content $readme "If you need help, you can contact me on Discord @Deluxeria"
Add-Content $readme ""
Add-Content $readme "Made by Deluxeria"