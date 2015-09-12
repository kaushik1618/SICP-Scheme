#!/usr/bin/python

import urllib

url_template = "http://www.archive.org/download/MIT_Structure_of_Computer_Programs_1986/lec%s%s_512kb.mp4"

videos = [ url_template % (index, sub_index) for index in range(1,11) for sub_index in ['a', 'b'] ]

for video in videos:
    print "Downloading %s ..." % video.split('/')[-1]
    urllib.urlretrieve( video, video.split('/')[-1] )
