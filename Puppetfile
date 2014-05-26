# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.4.2"

# Support for default hiera data in modules

github "module-data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",     "1.0.1"
github "foreman",     "1.2.0"
github "gcc",         "2.0.100"
github "git",         "2.3.1"
github "go",          "1.1.0"
github "homebrew",    "1.9.2"
github "hub",         "1.3.0"
github "inifile",     "1.0.3", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.3"
github "nodejs",      "3.7.0"
github "openssl",     "1.0.0"
github "phantomjs",   "2.1.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "7.2.4"
github "stdlib",      "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.1.1"


# Optional/custom modules. There are tons available at
# https://github.com/boxen.

# libs
## language
github "java",        "1.4.0"
github "php",         "1.2.1"
# github "python",      "1.1.1"
mod "python", :git => 'git@github.com:boxen/puppet-python.git', :ref => 'master'
github "android",     "1.2.0"

## db
github "mysql",       "1.2.0"
## tools
github "wget",        "1.0.1"
github "autoconf",    "1.0.0"
github "libtool",     "1.0.0"
github "pkgconfig",   "1.0.0"
github "pcre",        "1.0.0"
github "libpng",      "1.0.0"
github "imagemagick", "1.2.0"
github "xquartz",     "1.1.1"
github "vagrant",     "3.0.7"
github "redis",	      "3.0.2"

# software
github "skype",       "1.0.3", :repo => "FinalAngel/puppet-skype"
github "dropbox",     "1.2.0"
github "dashlane",    "1.0.1"
github "iterm2",      "1.0.4"
github "chrome",      "1.1.2"
github "sequel_pro",  "1.0.1"
github "virtualbox",  "1.0.11"
github "alfred",      "1.1.8"
github "mou",         "1.1"
github "phpstorm",    "1.0.4"
github "pycharm",     "1.0.4"
github "imageoptim",  "0.0.2"
github "hipchat",     "1.1.1"
github "transmit",    "1.0.2"
github "evernote",    "2.0.4"
github "adobe_reader","1.2.0"
github "sublime_text_2", "1.1.2"
