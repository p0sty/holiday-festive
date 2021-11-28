#!/usr/bin/python
#
"""
A Blinky app (after @kcarruthers) built upon the Secret API for Holiday by Moorescloud
A very simple app creates random colours and sends them to the string using the Secret API

Homepage and documentation: http://dev.moorescloud.com/

Copyright (c) 2013, Mark Pesce.
License: MIT (see LICENSE for details)
edited by posty 2018
"""

__author__ = 'Mark Pesce'
__version__ = '1.0b4'
__license__ = 'MIT'

import sys, time, threading, random 
from holidaysecretapi import HolidaySecretAPI 

# Here's a thread that handles the blink-making while other things (potentially) go on.
#
class Blinkyapp(threading.Thread):

    def run(self):
        """Gonna make some pretty pretty colours here"""
        global addr
        self.terminate = False
        self.holiday = HolidaySecretAPI(addr=addr)
        while True:
            if self.terminate:
                return
            ln = 0
            while (ln < self.holiday.NUM_GLOBES):
                # r = random.randint(0, 63)
                # g = random.randint(0, 63)
                # b = random.randint(0, 63)
                #r = 63
                #g = 63
                #b = 63
                # Now based on another random value, squash one of these values
                cn = random.randint(0,4)
                if (cn == 0):
                    r = 255
                    g = 65
                    b = 51
                elif (cn == 1):
                    r = 255
                    g = 180
                    b = 51
                elif (cn == 2):
                    r = 245
                    g = 252
                    b = 50
                elif (cn == 3):
                    r = 43
                    g = 214
                    b = 75
                else:
                    r = 43
                    g = 98
                    b = 214
                self.holiday.setglobe(ln, r, g, b)
                ln = ln+1            

                self.holiday.render()       # Send the colours out
            time.sleep(0.02)       # And finally, wait. was 0.2 - 0.15

# ZOMFG LET'S DO SOME TESTING
#
if __name__ == '__main__':
    if len(sys.argv) > 1:
        addr = sys.argv[1]          # Pass IP address of Holiday on command line
    else:
        sys.exit(1)                 # If not there, fail

    app = Blinkyapp()               # Instance thread & start it
    app.start()
    while True:
        try:
            time.sleep(0.1)
        except KeyboardInterrupt:
            app.terminate = True
            sys.exit(0)
