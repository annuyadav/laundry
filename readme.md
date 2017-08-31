# ToDo App
User can update its profile, profile pic.

## Getting Started
* This application contains full authentication system and registration process for user, implemented with the help of devise gem.
* Added custom forms, their design and mailer style and content for device gem.
* User sign up, confirmation are must to enter in the system.
* User needs to sign in before adding, viewing or editing Laundry.
* User can update his profile (first name, last name and email).
* User can update his password (old password confirmation).
* User can change his/her profile picture (by double clicking the profile picture in view profile).
* User can crop the image while updating profile picture (Done with the help of jQuery).


### Prerequisites
Assuming you have installed `git`, `ruby` and `rvm`.


### Installing

```
git clone git@github.com:annuyadav/laundry.git
cd laundry
```

This will automatically create a gemset name `laundry`. Install `bundler` if you don't have.

```
gem install bundler
```

Now install all other gems using command

```
bundle install
```

Next, create datbase and run migrations.


```
rake db:create db:migrate
```


## Running the program

Start server

```
rails s
```

Open browser tab and go to `http://localhost:3000`

