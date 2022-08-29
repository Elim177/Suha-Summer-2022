# -*- coding: utf-8 -*-
"""
Created on Wed Jun 23 10:57:03 2021
@author: Maleknaz
Edited by: Suha Siddiqui
"""

import scrapy
import sys
import os
import json
from bs4 import BeautifulSoup
import requests # Request to website and download HTML contents
import time

QIDs = open("List_Of_Question_Id.csv", "r")
#headers = {'Key': ''}

for row in QIDs:
    QIDnums = QIDs.readline()
    QIDnum = QIDnums.splitlines()
    print("*******" + QIDnums)
    all_items = []
    #print("https://api.stackexchange.com/2.3/questions/"+ str(row) + "?order=desc&sort=activity&site=stackoverflow&filter=!nKzQUR3Egv")
    query = {"https://api.stackexchange.com/2.3/questions/"+ row + "?order=desc&sort=activity&site=stackoverflow&filter=!nKzQUR3Egv"}
    for i in query:
        new_query = i.replace('ï»¿', '').replace('\n', '')
    print(new_query)
    req=requests.get(new_query)
    Fj=req.json()
    myJ = json.loads(req.text)
    all_items.append(Fj)  #append the items on to list all items[] (the ones on the first page)
    
    
    # After you see that it has no more pages   
    print("No more Pages")
    resultFile = open(row.strip() + "_All_Pages" + ".json", "w")
    json.dump(all_items, resultFile)
    resultFile.close()
    
      
print("C'est fini!!!!!!!")