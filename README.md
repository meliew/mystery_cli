# MysteryCLI

Welcome to MysteryCLI! MysteryCLI is a simple gem that helps mystery book lovers explore new sub-genres of mysteries. This little gem can help you find your latest binge read by providing a list of new releases available now. This gem scrapes Goodreads for sub-genres, descriptions, as well as book titles for the latest mystery releases.  

## Getting started

The instructions below will get a copy of MysteryCLI up and running on your local machine. Have fun! 

## Technology Requirements 

You'll need to have Ruby installed as well as the following gems: 

* Nokogiri 
* Open URI 
* Colorize 

## Set up 

To get MysteryCLI up and running you'll need to go to https://github.com/meliew/mystery_cli and select Clone or Download. Feel free to clone the repository, or download the files as a zip file to install on your local machine. If you're cloning, you'll copy the link provided when you click Clone or Download. Then, in your terminal you'll type: 

``` git clone (enter link) ```

Next, you'll need to install the gems by either typing: 

```bundle install ```

or you can install each individually. Here's an example:

``` gem install colorize ```

NOTE: If you're having issues installing your gem files, you might need to type 'sudo' in front of each install like so: 

``` sudo gem install colorize ```

Once you've cloned the files go ahead and cd (change directory) into the folder you've just created. You're ready to run! 


## Usage

Now that you're in the correct project folder you'll type the following into Terminal:

```bin/run ```

This will bring up a friendly intro and a list of available sub-genres.

After the introduction, you'll be asked to select a number for the sub-genre you'ld like to learn more about. After selecting a number you'll see a short bio about your selection. 

Selected a number that didn't exist? No worries, the program will ask for your input again. 

Wish you hadn't opened the program? Type ``` exit ``` at any time and you'll be out in a flash. 

After you view the bio of the sub-genre you picked, you'll have the following options: 
* View a list of new-releases for that sub-genre by typing 'y' for yes (or type 'n' for no)
* Go back and choose a different sub-genre by typing 'back'
* Say sayonara and quit the program by typing 'exit'

You can come back to MysteryCLI anytime you'd like to either learn about a different mystery genre, or find a new mystery novel to read. Enjoy! 

## Resources 

All info in the MysteryCLI has been lovingly scraped from the Goodreads website. 

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'meliew'/mystery_cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the MysteryCLI project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'meliew'/mystery_cli/blob/master/CODE_OF_CONDUCT.md).
