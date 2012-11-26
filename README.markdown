Sandbox Splash Page Template
========================

Fork into new repo
--------------------
umm, press the 'fork' button ~:<
Rename the fork to something meaningful e.g. Doggyloot_for_blind_lab_rats


Clone to your machine
--------------------
Ask someone if you don't know how to do this


Customize the splash page
==========================

update welcome/index file
----------------------------------------
This is where the bulk of your new splash page content goes. E.G. explainer text,  quotes, photos

update app/assets/stylesheets/application.css
----------------------------------------
This is where the stylesheet for your splash page lives.

Change site header/meta tags in app/views/layouts/application.html.erb
----------------------------------------
Start here where it says: 'SbxSplashPage CHANGE ME'

Add a new Google Analytics ID in app/views/layouts/application.html.erb
----------------------------------------
update this part
	_gaq.push(['_setAccount', '<%= ENV["GOOGLE_ANALYTICS_ID"] %>']);

Set up Heroku App
----------------------------------------
Follow the instructions here: [Heroku.com](http://www.heroku.com/)
you may need to do this the first time: https://devcenter.heroku.com/articles/keys

Deploy the splash page
======================
Make a Heroku Account
	$ cd/your_app 
	$ Heroku Create
	$ git push heroku master

Setup new mailchimp account/list
----------------------------------------
Signup at Mailchimp.com and create a list
Grab your api key and list id key and add them to Heroku like this (from the command line):

$ heroku config:add MAILCHIMP_API_KEY=my-api-key-here
$ heroku config:add MAILCHIMP_LIST_ID=my-list-id-here

test your mailing list, if it's not working read this: https://devcenter.heroku.com/articles/config-vars#setting-up-config-vars-for-a-deployed-application

Add Google Analytics to your deployed app:
----------------------------------------

$ heroku config:add GOOGLE_ANALYTICS_ID=my-ga-id-here
$ heroku config:add DOMAIN_NAME=my-domain-name-here

Add New Relic monitoring (prevents pages from idling 
------------------------------------------------------------
  $ heroku addons:add newrelic:standard

