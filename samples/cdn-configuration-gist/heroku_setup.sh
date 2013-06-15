heroku config:set FOG_PROVIDER=AWS
heroku config:set AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
heroku config:set AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
heroku config:set FOG_DIRECTORY=<bucketname>
heroku config:set ASSET_HOST=//<cloudfront subdomain>.cloudfront.net