"""
    获取论坛数据来建设自己的论坛
    coding by 谢志颖 2113302
    
"""

import os
from bs4 import BeautifulSoup as bs
import requests
import pymysql as sql


# CREATE TABLE `ru_blog` (
#   `id` int(11) NOT NULL AUTO_INCREMENT,
#   `pubDate` varchar(225) DEFAULT NULL,
#   `title` varchar(225) DEFAULT NULL,
#   `summary` varchar(2000) DEFAULT NULL,
#   `infoSource` varchar(225) DEFAULT NULL,
#   `sourceUrl` varchar(225) DEFAULT NULL,
#   `image` mediumblob,
#   PRIMARY KEY (`id`),
#   UNIQUE KEY `id` (`id`)
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |

username=""
password=""
database=""
theHost=""
counter=1

project_dir = '/var/www/html/Internet_database_develepment_R-U_War'
db_setting_file = open(project_dir + "/common/config/main-local.php")
main_local = db_setting_file.readlines()
db_setting_file.close()

for line in main_local:
    if line.find('dsn') >= 0:
        host = line[line.find("mysql:host=") + 11 : line.find(";dbname=")]
        database = line[line.find(";dbname=") + 8 : line.find("',")]
    elif line.find("username") >= 0:
        username = line[line.find("'username' => '") + 15 : line.find("',")]
    elif line.find("password") >= 0:
        password = line[line.find("'password' => '") + 15: line.find("',")]

connect = sql.connect(host=theHost,
                      user=username,passwd=password,db=database)
cur = connect.cursor()
cur.execute("use `{}`".format(database))

header={'User-Agent':"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36"}


def convertToBinaryData(filename):
    # Convert digital data to binary format
    with open(filename, 'rb') as file:
        binaryData = file.read()
    return binaryData

def crawlBlog(webUrl:str):
    """通过爬虫获取文章内容存储在数据库中
    Args:
        webUrl (str): 网页链接
    """
    global cur
    global counter
    getRequest=requests.get(webUrl,headers=header)
    getRequest.raise_for_status() 
    bsobj=bs(getRequest.text,'html.parser',from_encoding=getRequest.encoding)
    content= bsobj.find("div",{"class":"searchListOne"})
    for blog in content.find_all("li"):
        content = blog.find("div")
        source = blog.find("p",{"class":"source"})
        if not content : continue
        title = content.find("a",{"target":"_blank"})
        theSQL="""insert into ru_blog(pubDate,title,infoSource,summary,sourceUrl,image) values(%s,%s,%s,%s,%s,%s)"""
        theData=[source.find("span").get_text(),title.get_text(),source.find("a").get_text(),content.find("p").get_text(),title["href"],convertToBinaryData(project_dir+"/image/"+str(counter%10)+".jpg")]
        cur.execute(theSQL,theData)
        counter+=1
    
if __name__=="__main__":
    url="https://search.tianya.cn/bbs?q=俄乌战争"
    for i in range(50):
        if i:
            crawlBlog(url+"&pn="+str(i+1))
            print("page "+str(i+1)+" done.")
        else: crawlBlog(url)
    cur.connection.commit()
        
cur.close()
connect.close()