# Slope One (Recommendation Algorithm)

## DESCRIPTION:

Ruby implementation of the [Slope One](http://en.wikipedia.org/wiki/Slope_One) recommendation algorithm. Ported from Bryan O’Sullivan's awesome [Python implementation](http://www.serpentine.com/blog/2006/12/12/collaborative-filtering-made-easy/). All credit goes to him, I just ruby-fied the code.

## SYNOPSIS:

    user_data = {
      "rob" => {
        "24" => 9.5,
        "Lost" => 8.2,
        "House" => 6.8
      },

      "bob" => {
        "24" => 3.7,
        "Big Bang Theory" => 2.1,
        "House" => 8.3
      },

      "tod" => {
        "24" => 9.5,
        "Lost" => 3.4,
        "House" => 5.5,
        "Big Bang Theory" => 9.3
      },

      "dod" => {
        "24" => 7.2,
        "Lost" => 5.1,
        "House" => 8.4,
        "The Event" => 7.8,
      }
    }

    slope_one = SlopeOne.new
    slope_one.insert(user_data)
    puts slope_one.predict({"House" => 3, "Big Bang Theory" => 7.5}).inspect

## INSTALL:

    gem install slope_one

or in your Gemfile:

    gem 'slope_one'

## LICENSE:

Copyright 2006 Bryan O'Sullivan <bos@serpentine.com> (Original implementation)  
Copyright 2010 Ashley Williams <hi@ashleyw.co.uk> (Ruby port)

This software may be used and distributed according to the terms
of the GNU General Public License, version 2 or later, which is
incorporated herein by reference.