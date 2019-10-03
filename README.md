# Apocalypse-Yao

Hi! If you're looking here, please don't take it's current state (as of 10/19) as my best work. This was my first shot at building
a web-app. That's... why it looks the way it does.

But it was an interesting concept, and now I know a lot more about how to do all this! If only Rails was still being used :(

Still, I'm going to bring out a broom and do some Fall cleaning (is that a thing? There's Spring cleaning...),
and see what a couple more years of school, and a few out in the real world, have brought to the table.

# Versions

* Ruby version: 2.6.5
* Rails version: 5.0.0

# Requred Packages

- Paperclip
- Imagemagick
- Devise
- SimpleForum

# Deployment

This is a Rails web-forum that allows user-customized posts. To run the server, simply clone and run: `rails s`

You may need to run the following to update the database to your local machine: `rake db:migrate`

Additionally, you need to have Imagemagick and Paperclip installed to handle image file control.