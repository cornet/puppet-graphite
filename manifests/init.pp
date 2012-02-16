# Class: graphite
#
# Installs and configures the various parts that make up graphite:
# * whisper       - the backend store
# * carbon        - storage API
# * graphite-web  - the web frontend
#
class graphite {
  include graphite::whisper, graphite::carbon, graphite::web
}
