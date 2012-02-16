# Class: graphite::carbon
# Installs the carbon data API for graphite
class graphite::carbon {
  include graphite::carbon::install
  include graphite::carbon::service
}
