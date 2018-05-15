# Resort map
A Rails application has been set up with the React On Rails gem for server-rendering React.

This application contains one url - `localhost:3000/resorts` which you will have to improve.

A list of `regions` along with arrays of their children `resorts` are setup in `resorts_controller`

Using this data, please:
1. render `ResortListApp` on the page using [React on Rails](https://github.com/shakacode/react_on_rails)
2. Render a dropdown using the three given `regions` as options. The dropdown has the default value of `'Colorado'`
3. Render the selected region's resorts as a list. Display their `name`, `review_score_avg` and `review_count` values.
4. Render a map using the Google Map Javascript API available on the page, you can either:
    1. use a React library such as `https://github.com/tomchentw/react-google-maps` for bonus points, or
    2. use vanilla Javascript and Google Map Javascript API in a `ComponentDidMount` callback
5. Draw the currently selected region's resorts onto the map as Google Map `Markers`, by using the provided `lat` and `lng` for each resort
6. On initial map load, and when the user selects a different region on the dropdown, pan and zoom the map so that it exactly fits all of that region's resort markers inside it
7. After clicking on a Marker, render a tooltip containing the resort's information
8. Cluster markers together if they overlap

You have discretion to design the page however you want. For the purposes of the demonstration, you only have to cater for Iphone 7 and Pixel 2 mobile devices, the page does not have to work properly on desktop. Bootstrap is made available on the page if you wish to use any of their utility classes to assist with layout. You can add and use any 3rd party package you like in this project, just include them into `package.json` and run `yarn`.

## Application steps for OSX:

### Install RVM + Ruby

```bash
# get key
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

# install RVM with Ruby
\curl -sSL https://get.rvm.io | bash -s stable --ruby
```

### Install Homebrew

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Install Yarn

```bash
brew install yarn
```

### Install Gems + Yarn packages

```bash
# bundler
gem install bundler

# foreman
gem install foreman

# within application folder
bundle install
yarn
```

### Setup credentials masterkey

```bash
# within application folder
touch config/master.key

# write separately provided key into this file
```

### Boot up server

```bash
foreman start -f Procfile.dev
```
