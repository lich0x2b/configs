#!/usr/bin/python
# -*- coding: latin-1 -*-
import sys
import urllib
import os

if (len(sys.argv) > 1):
    f = urllib.urlopen('http://rss.accuweather.com/rss/liveweather_rss.asp?metric=1&locCode=' + sys.argv[1])
    raw = f.read()
    f.close()
    start = raw.find('<title>Currently')
    end = raw.find('C</title>')
    print raw[start + 18:end] + ' C'
else:
    print 'Usage  : ' + sys.argv[0] + ' < LOC CODE >'
    print 'Example: ' + sys.argv[0] + ' "EUR|RO|RO010|BUCHAREST"'
