# hubot-whois

A hubot script that looks up the whois information.

See [`src/whois.coffee`](src/whois.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install --save https://github.com/ganta/hubot-whois/tarball/v1.0.0`

Then add **hubot-whois** to your `external-scripts.json`:

```json
["hubot-whois"]
```

## Sample Interaction

```
user1>> hubot whois google.com
hubot>>
Domain Name: google.com
Registry Domain ID: 2138514_DOMAIN_COM-VRSN
Registrar WHOIS Server: whois.markmonitor.com
...
```
