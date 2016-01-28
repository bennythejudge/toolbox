import requests
import pprint
import jenkins
from jenkinsapi.jenkins import Jenkins
from bs4 import BeautifulSoup
import re

# URL = 'https://ci-dev.service.dsd.io'
URL = 'http://ci.dsd.io'
headers = { 'Cookie': '_ga=GA1.2.1936921519.1433933780; JSESSIONID.eddd3cda=pr5o07sn0a8vd72zmyxrz3b5; screenResolution=1920x1200' }

def get_server_instance():
    jenkins_url = 'http://jenkins_host:8080'
    server = Jenkins(URL, username = 'bennythejudge', password = '7a47bceafd585e021b3c1ce7358caada')
    return server

def job_entry(href):
    return href and re.compile("^job\/").search(href)

def scrape_jenkins():
    job_list = []
    r = requests.get(URL, auth=('bennythejudge', '7a47bceafd585e021b3c1ce7358caada'))
    soup = BeautifulSoup(r._content, 'html.parser')
    m = re.compile("^job")
    
    for link in soup.find_all("a", href=re.compile("^job"), class_="model-link inside"):
        if not re.compile("^#").search(link.get_text()):
            text = link.get_text()
            job_list.append(text)
            # print "t: %s" % text
            # print "l: %s" % link
    # for link in soup.find_all("a", class_="model-link inside"):
        # if not re.search("^#", text):
        #    print "link: %s" % link
        #    print "text: %s" % text
    return job_list
        # link = link.get('href')
        # # print "%s" % link
        # if link:
        #    m = re.match(r"job\/(\w+)", link)
        #    if m:
        #       job = m.group(0)
        #       print job

def get_config_xml(job):
    URL = "http://ci.dsd.io/job/{0}/config.xml".format(job)
    r = requests.get(URL, auth=('bennythejudge', '7a47bceafd585e021b3c1ce7358caada'))
    soup = BeautifulSoup(r._content, 'html.parser')
    print(soup.prettify())
    
if __name__ == '__main__':
    jobs = scrape_jenkins()
    for j in jobs:
        print j
        get_config_xml(j)