#!/usr/bin/python

import time
import urllib2

print("sent to GA")
urllib2.urlopen("http://www.google-analytics.com/collect?v=1&tid=UA-47009702-1&cid=123&t=pageview&dp=%2Ffootfall").close

