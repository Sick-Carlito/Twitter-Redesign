# Twitter-redesign

This is a simple rails application that implements the use of active records, associations and the CRUD functionalities of rails. The app allows users to Register/Sign-up and post opinions on various topics. Users can also follow one another, edit and delete their posts.

Things covered in the project:

- Models, Views, and Controllers (MVC)
- Routing
- Migrations
- Views with forms and helpers
- Adding gems for extra features


## Build with

- Ruby 2.7.0
- Rails 6.0.2
- sqlite3 1.4
- yarn bundler
- Rspec-rails
- devise

## How to run this app
To run it, clone this repository locally, and run these commands on your terminal.
```
Git clone git@github.com:Sick-Carlito/Twitter-Redesign.git

cd ~/twitter-redesign
rails s


rails db:migrate

```

Note: You might need to install this Gem if you are not running pg
```
gem 'sqlite3', '~> 1.4'
```

### Run tests

```
    rpsec --format documentation
```

#### To sign up
```
Visit localhost:3000/signup
```
![Alt image](https://github.com/Sick-Carlito/Twitter-Redesign/blob/readme/app/assets/images/image1.png)


then proceed to sign in

#### To sign in
```
Visit localhost:3000/signin
```
![Alt image](https://github.com/Sick-Carlito/Twitter-Redesign/blob/readme/app/assets/images/image2.png)

```
You will be directed to the home page where you can create posts
```
![Alt image](https://github.com/Sick-Carlito/Twitter-Redesign/blob/readme/app/assets/images/image3.png)

```
You can edit or delete your posts
```
![Alt image](https://github.com/Sick-Carlito/Twitter-Redesign/blob/readme/app/assets/images/image5.png)

```
You can see another users profile information 
```
![Alt image](https://github.com/Sick-Carlito/Twitter-Redesign/blob/readme/app/assets/images/image4.png)

### Potential future features

* Abbility to see trending topics
* Abbility for users to add cover image




## Author

- [Carl](https://github.com/Sick-Carlito/Twitter-Redesign)


#### Email
carlb1319@gmail.com


## Live version

- [Link](https://github.com/Sick-Carlito/Twitter-Redesign)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!
