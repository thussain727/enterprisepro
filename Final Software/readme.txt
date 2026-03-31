To access the final software, please follow these instructions:

- Make a folder in your personal local area on your desktop, name it anything suitable, for example "final_sof"
- Download all the files in this folder on GitHub (Final Software) and save it in the folder you created in your local area.
- Make sure you have xampp downloaded, if not please download xampp using one of the options: https://www.apachefriends.org/download.html
- Once this has been downloaded, on your folders, please select This PC --> Local Disk --> xampp --> htdocs
- When you are in the htdocs folder please copy and paste the folder "final_sof" you created which has the final software in into htdocs
- Now open the xampp application from your desktop, search xampp and once opened press on apache (admin)
- Once this has been uploaded the browser may look something like localhost:8083/dashboard/
- Edit the link to replace dashboard with the correct name of your folder which should be in xampp, "final_sof"
- The link now should look like localhost:8083/final_sof/page1.html
- Go back to the xampp application and open mysql (admin)
- Once this has opened it should read phpmyadmin, in here press new and title the database name Staff, once created press
the import tab and when you choose the file, make sure the file you pick is called staff.sql which should be in that folder.
- Repeat this and make another database called sources, and go to import and pick sources_db_onedrive.sql.
- Now search localhost:8083/final_sof/page1.html
- From here the website should automatically launch, the staff database page should load results from the staff database
which you must create earlier to access otherwise the page will fail, the sources database page must also be created and 
imported with the correct file for the page to load and work as usual.
