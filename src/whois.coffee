# Description
#   A hubot script that looks up the whois information
#
# Configuration:
#   None
#
# Commands:
#   hubot whois <domain> - looks up the whois information for a given domain
#
# Author:
#   Hideki IGARASHI <hideki.develop@gmail.com>

whois = require 'whois'

module.exports = (robot) ->
  robot.respond /whois\s+(.+)/, (msg) ->
    domain = msg.match[1]
    domain = domain.replace(/^https?:\/\//, '') if robot.adapterName == 'slack'

    whois.lookup domain, (err, data) ->
      if err
        msg.send "Lookup failed for `#{domain}`: #{err}"
      else
        data = "```\n#{data}\n```" if  robot.adapterName == 'slack'
        msg.send data
