# Apocalypse-Yao

Hi! If you're looking at this, please don't take it's current state as my best work. This was my first shot at building
a web app.
That's... why it looks the way it does.

This project was an attempt to provide a web forum that maximizes user expression, by allowing almost all visual content within each user's posts to be customized. It was an interesting concept, and now I know a lot more about how to do all this!

If you'd like to see what a couple more years of school, and a few out in the real world, have brought to the table, head over to the reimagined version: [Coup](https://github.com/Taconomicon/Coup)

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
