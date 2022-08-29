from __future__ import annotations

import time
from dataclasses import dataclass
from pathlib import Path

from hypy_utils import json_stringify

import innertube


@dataclass
class Video:
    videoId: str
    thumbnail: str
    title: str
    length: str
    views: int
    publish_time: str


def parse_video_renderer(video: dict):
    return Video(
        videoId=video['videoId'],
        thumbnail=video['thumbnail']['thumbnails'][-1]['url'],
        title=video['title']['runs'][0]['text'],
        length=video['lengthText']['simpleText'],
        views=video['viewCountText']['simpleText'].split(' ')[0],
        publish_time=video['publishedTimeText']['simpleText'],
    )


def parse_result(result: dict):
    contents = result['contents']
    sections = contents['twoColumnSearchResultsRenderer']['primaryContents']['sectionListRenderer']['contents']
    item_renderers = [s['itemSectionRenderer']['contents'] for s in sections if 'itemSectionRenderer' in s]
    item_renderers = [i for l in item_renderers for i in l]
    video_renderers = [s['videoRenderer'] for s in item_renderers if 'videoRenderer' in s]
    videos = [parse_video_renderer(v) for v in video_renderers]
    return videos


if __name__ == '__main__':
    client = innertube.InnerTube('WEB')

    out_path = Path('innertube')
    out_path.mkdir(parents=True, exist_ok=True)

    csv = Path('C:/Users/suhas/git/Suha-Summer-2022/New improved method of crawling youtube/List_of_all_TF_API.csv').read_text('utf-8')
    apis = csv.split('\n')[1:]

    for api in apis:
        # Check if already crawled
        out_api_path = (out_path / f'{api}.json')
        if out_api_path.exists():
            continue

        # Search and parse
        search = client.search(f'Tensorflow {api}')
        videos = parse_result(search)

        print()
        print(f'========================== {api} ==========================')
        for v in videos:
            print(f'> {v.videoId} : {v.title}')

        out_api_path.write_text(json_stringify(videos, indent=2), 'utf-8')
        (out_path / f'{api}.raw.json').write_text(json_stringify(search, indent=2), 'utf-8')

        time.sleep(0.2)

    print('hi')