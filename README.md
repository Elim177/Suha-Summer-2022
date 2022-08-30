# crawl-youtube

## This branch includes
  - crawl-youtube
    - Using innertube api, tensorflow videos related videos are crawled per api name
  
## Files/Folders in this branch
  - Old method of crawling youtube and results
    - This was my original method of scraping the youtube videos related to each tensorflow api symbol. It used the official Youtube API but it was unsuccessful because we were limited by quotas and it was taking long. 
  - New improved method of crawling youtube
    - This uses innertube API which efficiently scrapes the first few related videos per API name (provided by Azalea). The folder contains a file which saves each api youtube video to an innertube subfile and saves each link to the yt_links.json file to use in the tf-frontend branch