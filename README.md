<img src = "https://yubikwetes.files.wordpress.com/2015/05/neighborhood-watch.gif"/>

# IP-DETECTIVE

> A simple CLI app using the Shodan API to return information pertaining to one's target IP address.

## Get Started...

> To use this on your machine you will need your own Shodan API Key.

Repo: 
> https://github.com/mattbmoorin/IP-DETECTIVE/blob/master/README.md

Next, run

```
bundle install
```

Insert your Key into API.rb

Now, run the app using

```
bin/run
```

Entering a valid IPv4 address generates a list of items related to it.

Select an item from the list using the on-screen instructions to display the 2nd level of data.

> Please note, not all IPs will return values for every attribute, in which case nothing is displayed when
the item in question is selected.

TODO:

* Add more attributes to the list

* Add a 3rd level of information for attributes that support it

* Add more functionality to the 'Show History' option

* Integrate the brilliant Shodanz gem (https://github.com/picatz/shodanz)

# CONTRIBUTING

Bug reports and pull requests are welcome on GitHub at https://github.com/mattbmoorin/ip-detective.

# LICENSE

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).