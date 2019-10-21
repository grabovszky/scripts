import requests
import re

url = input('Enter a URL (include `http://`): ')

website = requests.get(url)

html = website.text

# use re.findall to grab all the links
links = re.findall('"((http|ftp)s?://.*?)"', html)
emails = re.findall('([\w\.,]+@[\w\.,]+\.\w+)', html)


print("\nFound {} links".format(len(links)))
for email in emails:
    print(email)
