# Versionary - a simple gem that allows you to compare version numbers

This was extracted from the [RiverGlide ruby template project](https://github.com/RiverGlide/ruby_project_template)

## Synopsis

A simple, comparable, [rational](http://docs.rubygems.org/read/chapter/7), version number object.

Allows you to do things like this:

    raise "not the right version" unless VersionNumber.of( RUBY_VERSION ) >= VersionNumber.of( '1.9'2' )
    raise "not the right version" unless VersionNumber.of( RUBY_VERSION ) >= '1.9.2'

Or any other comparison between any VersionNumber you create:

    VersionNumber.of( '0.9.10' ) > '0.9.9'
    VersionNumber.of( '0.9.9' ) < '0.9.10'
    VersionNumber.of( '0.9.10' ) >= '0.9.9'
    VersionNumber.of( '0.9.10' ) == '0.9.10'

As you can see, it does a numerical (rather than alphabetical) comparison of the major, minor and build numbers.

It doesn't do version bumping or anything like that - but if you want to to, fork it, branch, add that ability and send us a pull request :-)

## Usage

If you're using bundler, reference the gem in your Gemfile or gemspec as a runtime dependency and bundler will do the rest... 
Or, `gem install versionary` and then:

    require 'versionary/version_number'
