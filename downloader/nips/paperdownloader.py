#!/usr/bin/env python
#coding=utf-8
from pyquery import PyQuery as pq
import sys,os,time,urllib

url_base = "http://papers.nips.cc"

#argument process
y = 1987 #default
if len(sys.argv)==2 :
    if sys.argv[1].isdigit() & (int(sys.argv[1])>1987) & (int(sys.argv[1])<2020):
        y = sys.argv[1]

if y == 1987 :
    url = url_base+"/book/neural-information-processing-systems-1987"
else:
    url = url_base+"/book/advances-in-neural-information-processing-systems-"+str(int(y)-1987)+"-"+str(int(y))

print("open webpage:"+url)

#file process
filespath = str(y)
if not os.path.exists(filespath):
    print("create path:",filespath)
    os.mkdir(filespath)


#webpage process

doc = pq(url) #解析网页

print("process webpage")
papers = doc(".main-container div ul li").children().items()

i= 0
for sp,paper in enumerate(papers):
    if paper('a').attr.href.find('paper')>=0:
        i = i + 1
        filename = str(y)+'/'+paper('a').attr.href[7:] + '.pdf'
        fileurl = url_base+paper('a').attr.href+'.pdf'
        if not os.path.exists(filename):
            print(i,'downloading :',fileurl)
            urllib.urlretrieve(fileurl, filename)
            print ('file:%s,download success',filename)
        else:
            print('file:%s exists,skip',filename)
        time.sleep(0.1)
