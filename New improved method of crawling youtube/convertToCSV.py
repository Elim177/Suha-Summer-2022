from pathlib import Path
import json
from io import FileIO
import os

output = [] # Accumulator
count=0
path = Path('C:/Users/suhas/git/Suha-Summer-2022/New improved method of crawling youtube/innertube') # Your innertube data path here
count = 0
for json_file in os.listdir(path): # Loop through each json file for the api
    
    api = json_file.split('.json')[0] # Get the api name
    if not json_file.endswith('.json'):
        continue
    json_content = json.loads((path / json_file).read_text('utf-8')) # Read json content
    
    link = 'https://youtu.be/' + json_content[0]['videoId']  # Get the first link
    output.append({'name': api, 'link': link}) # Add to accumulator

# Then, write the accumulator output to a file with json
Path('C:/Users/suhas/git/Suha-Summer-2022/New improved method of crawling youtube/yt_links.json').write_text(json.dumps(output))