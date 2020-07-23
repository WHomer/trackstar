# README

This is a technical assessment given by Trakstar and completed by William Homer.

## Start Application

To run this application you will need ruby 2.7.1 and Rails 6.0.3.2 as well as Postgres database, once these are installed you can run the following commands to execute the program.

* bundle
* rake db:create
* rake db:seed
* rails s
* navigate in browser to sign in http://localhost:3000
* navigate in browser to http://localhost:3000/kudos to see kudos given and received
* navigate in browser to http://localhost:3000/kudos/new to give new kudos



## Notes

* rake user:weekly_kudos_available_reset would be set to a job that would run once a week, this job is to set all available_kudos in a user back to 3.

