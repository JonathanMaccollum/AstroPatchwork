# AstroPatchwork
Project Patchwork DZI Proof Of Concept

Project Announcment Page:
https://www.reddit.com/r/astrophotography/comments/dlz1zb/happy_10th_birthday_rastrophotography_and_an/

The images linked in the project are assumed to be published under a CC BY-NC-SA license. Although the project itself probably falls under fair use, this will help with any copyright problems that arise. Your image won't be used commercially, and you will receive proper credit when the final mosaic is made.

This project is a static webpage (index.html) that consists of a powershell script (Patchwork.ps1) for generating the DZI files referenced.  The site can be deployed or run locally through a number of web hosting mechanisms. 

For one example:
* Install NPM
* Install the http-server component: ``npm install http-server``
  * https://www.npmjs.com/package/http-server
* Run the http-server: ``http-server . -p 8000``
* Launch the url in your browser: ``http://localhost:8000``

To generate the DZI files open the Patchwork.ps1 file in your favorite powershell.  Comment out/Uncomment/Add lines for the files you wish to reference.

Note: the first entry (Lefty's 17mm widefield mosaic) is the fixed background and all placed panels are relative to this image.  It is recommended to create this file using a MaxLevel of 11 or lower for development purposes as this takes a long time to run at it's full resolution. Running this script will overwrite existing files for that mosaic, and once created there's no need to re-run the script for that file again unless the source image has been modified.