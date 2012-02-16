# Class: graphite::whisper::install just installes the pacakge with no
# managed configuration. Ensure installed only to prevent surprise upgrades.
class graphite::whisper::install {

  package{'python-whisper':
    ensure  => present;
  }

}
