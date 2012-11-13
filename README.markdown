Sandbox Splash Page Template
========================

Fork into new repo
--------------------
umm, press the 'fork' button ~:<


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

Setup new mailchimp account/list
----------------------------------------
create config/heroku_env.rb file with => 

    ENV["MAILCHIMP_API_KEY"] = "xxxx_put your key here_XXXX"
    ENV["MAILCHIMP_LIST_ID"] = "xxxxx_put your list id here_xxxx"


Add a new Google Analytics ID in app/views/layouts/application.html.erb
----------------------------------------
create a new one on GA.com. Insert into:

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'xxxx_put you GA ID Here_XXXX']);
    _gaq.push(['_setDomainName', 'xxxx_put your domain here_xxxx']);
  

Change site header/meta tags in app/views/layouts/application.html.erb
----------------------------------------
Start here where it says: 'SbxSplashPage CHANGE ME'


Deploy the splash page
======================

Set up Heroku App
----------------------------------------

Follow the instructions here: [Heroku.com](http://www.heroku.com/)


Add New Relic monitoring (prevents pages from idling 
------------------------------------------------------------
  $ heroku addons:add newrelic:standard

