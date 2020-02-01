# AstroPatchwork
Project Patchwork DZI Proof Of Concept

Project Announcment Page:
https://www.reddit.com/r/astrophotography/comments/dlz1zb/happy_10th_birthday_rastrophotography_and_an/

The images linked in the project are assuming to be published under a CC BY-NC-SA license. Although the project itself probably falls under fair use, this will help with any copyright problems that arise. Your image won't be used commercially, and you will receive proper credit when the final mosaic is made.

This project is a static webpage (index.html) that consists of a powershell script (Patchwork.ps1) for generating the DZI files referenced.  The site can be deployed or run locally through a number of web hosting mechanisms. For one example:
* Install NPM
* Install the http-server component: ``npm install http-server``
  * https://www.npmjs.com/package/http-server
* Run the http-server: ``http-server . -p 8000``
* Launch the url in your browser: ``http://localhost:8000``
