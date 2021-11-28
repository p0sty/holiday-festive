holiday-festive
===============

A simple festive animation for the Moorescloud Holiday light.

If you were lucky enough to own one, now archived here - https://web.archive.org/web/20140531015443/http://moorescloud.com:80/

I couldn't find one in the defaults, so I added one :D

Merry Christmas everyone :)

I've done it in bash because it runs locally on the light (when ssh'd through developer mode) and has few dependencies.

usage is ./festive.sh holidayipaddress.

NEW in 2021:
added start-christmascountdown.sh - 30 days from christmas the animation will get faster closer to christmas, then wind down to new years
can run directly on the holiday or on another bash supported device - if no host is specified it assumes it's running locally
usage ./start-christmascountdown.sh holidayIPaddress

NEW in 2017:
Added the ability to close your ssh window.

you can now start the animation with 

./start-festive.sh

and stop with

./stop-festive.sh

this basically takes over the lights function completely, so if you want to use any of the other apps, you'll need to do this.
