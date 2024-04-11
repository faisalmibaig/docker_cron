# Debian Docker Container with cron
A flexible and versatile docker container for scheduling tasks using cron.

Prerequisites:  
1. A `scripts` folder in the same directory as the `docker-compose.yml` file
2. The `scripts` folder should contain at minimum one file called `cronfile` containing a list of all your cronjobs
3. Store any additional scripts into the `scripts` folder that you might need for your cronjobs

How the image works:  
1. When the container starts up, the entrypoint.sh script will load in the `cronfile` file
2. Once the cronfile is loaded in, cron will initiate in the forground

Build Instructions:  
Obtain and modify the build files. Use the following command to build the image (change the image name and tag as you please):  
`docker build . -t local/cron:1.0`
