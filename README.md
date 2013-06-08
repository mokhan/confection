# Confection

This is an example application that shows you how to use AWS S3 and CloudFront to optimize serving static assets.

## Heroku Setup

* clone or fork the repository.
* log in to your aws [s3 console](https://console.aws.amazon.com/s3/home).
* create a new s3 bucket
* log in to your aws [cloudfront console](https://console.aws.amazon.com/cloudfront/home)
* create a new download distribution and use your s3 bucket as the origin server.
* create a copy of the file .env.example called .env and add your AWS security credentials, bucket name and cloudfront domain.
* create a copy of database.yml.example called database.yml.
* create a copy of config/heroku_setup.sh.example called config/heroku_setup.sh and insert your settings.
* rake assets:precompile
* heroku create
* git push heroku master
* heroku run rake db:migrate
* heroku run rake db:seed
* bash script/heroku_setup.sh
* heroku open

** Never check your AWS security credentials in to a public repository **

[Demo](http://confection.herokuapp.com)

Enjoy!
