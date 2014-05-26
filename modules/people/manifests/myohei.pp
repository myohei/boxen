class people::myohei {

  # libs
  include java
  ## php
  #include php::5_5_11
  include php::5_4_11
  include php::composer
  class { 'php::global':
    version => '5.4.11'
  }
  # db
  include mysql
  mysql::db{ 'mydb': }
  include wget
  include autoconf
  include libtool
  include pkgconfig
  include pcre
  include libpng
  include imagemagick
  include xquartz
  include vagrant
  include redis


  # software
  include skype
  include chrome
  include iterm2::stable
  include dashlane
  include dropbox
  include sequel_pro
  include virtualbox
  include alfred
  include mou
  include phpstorm
  include pycharm
  include imageoptim
  include hipchat
  include transmit
  include evernote
  include sublime_text_2
  # 出来なかった
  #include adobe_reader

  ## android
  include android::sdk
  include android::ndk
  include android::tools
  include android::platform_tools
  android::build_tools { '19.0.3': }
  android::extra { 'extra-google-google_play_services': }
  #include android::19
  include android::18
  include android::17
  include android::doc
  # android studioだめぽ
  #include android::studio

  # homebrew
  package{
    [
      'sqlite',
      'tree',
      'sshfs',
      'pyenv',
      'pyenv-virtualenv',
      'jenkins',
      'jetty',
      'elasticsearch',
    ]:
  }
  # other app
  package { 'TotalFinder':
      source   =>  "http://downloads.binaryage.com/TotalFinder-1.5.22.dmg",
      provider =>  pkgdmg;
  }
  exec { 'install gvm':
    command => 'curl -s get.gvmtool.net | bash';
  }
}
