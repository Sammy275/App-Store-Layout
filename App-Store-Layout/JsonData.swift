//
//  JsonData.swift
//  App-Store-Layout
//
//  Created by Saim on 15/09/2023.
//


struct AppStoreData {
    private init() {}
    
    static func getFakeData() -> String {
        """
        [
          {
            "id": 1,
            "type": "big_banner",
            "heading": "Happy Kids",
            "subtitle": "Hello",
            "items": [
              {
                "id": 1,
                "update_message": "Quick Update",
                "heading": "Motivation - Daily quotes",
                "subheading": "Discover the new design!",
                "title": "Motivation",
                "subtitle": "Daily meditation",
                "in_app_purchase": false
              },
              {
                "id": 2,
                "update_message": "Quick Update",
                "heading": "Youtube",
                "subheading": "Venture into wonder",
                "title": "Youtube",
                "subtitle": "Enjoy free streaming",
                "in_app_purchase": false
              },
              {
                "id": 3,
                "update_message": "MAJOR UPDATE",
                "heading": "TikTok",
                "subheading": "Grow your audience",
                "title": "TikTok",
                "subtitle": "Stay updated with lates trends",
                "in_app_purchase": false
              }
            ]
          },
          {
            "id": 2,
            "type": "three_row",
            "heading": "Must-Have Apps",
            "subtitle": "Grow your app development skills",
            "items": [
              {
                "id": 9,
                "title": "SoundCloud - Music & Playlists",
                "subtitle": "Find your next song and beats"
              },
              {
                "id": 10,
                "title": "Youtube: Watch, Listen, Stream",
                "subtitle": "Videos, Music and Live Streams"
              },
              {
                "id": 11,
                "title": "TikTok - Videos, Music & LIVE",
                "subtitle": "Watch, discover and stream!"
              },
              {
                "id": 12,
                "title": "SoundCloud - Music & Playlists",
                "subtitle": "Find your next song and beats"
              },
              {
                "id": 13,
                "title": "Youtube: Watch, Listen, Stream",
                "subtitle": "Videos, Music and Live Streams"
              },
              {
                "id": 14,
                "title": "TikTok - Videos, Music & LIVE",
                "subtitle": "Watch, discover and stream!"
              }
            ]
          },
          {
            "id": 3,
            "type": "two_row",
            "heading": "Iphone Essentials",
            "subtitle": null,
            "items": [
              {
                "id": 15,
                "title": "SoundCloud - Music & Playlists",
                "subtitle": "Find your next song and beats"
              },
              {
                "id": 16,
                "title": "Youtube: Watch, Listen, Stream",
                "subtitle": "Videos, Music and Live Streams"
              },
              {
                "id": 17,
                "title": "TikTok - Videos, Music & LIVE",
                "subtitle": "Watch, discover and stream!"
              },
              {
                "id": 18,
                "title": "SoundCloud - Music & Playlists",
                "subtitle": "Find your next song and beats"
              },
              {
                "id": 19,
                "title": "Youtube: Watch, Listen, Stream",
                "subtitle": "Videos, Music and Live Streams"
              },
              {
                "id": 20,
                "title": "TikTok - Videos, Music & LIVE",
                "subtitle": "Watch, discover and stream!"
              }
            ]
          },
          {
            "id": 5,
            "type": "three_row",
            "heading": "Grow your business",
            "subtitle": "",
            "items": [
              {
                "id": 25,
                "title": "SoundCloud - Music & Playlists",
                "subtitle": "Find your next song and beats"
              },
              {
                "id": 26,
                "title": "Youtube: Watch, Listen, Stream",
                "subtitle": "Videos, Music and Live Streams"
              },
              {
                "id": 27,
                "title": "TikTok - Videos, Music & LIVE",
                "subtitle": "Watch, discover and stream!"
              },
              {
                "id": 28,
                "title": "SoundCloud - Music & Playlists",
                "subtitle": "Find your next song and beats"
              },
              {
                "id": 29,
                "title": "Youtube: Watch, Listen, Stream",
                "subtitle": "Videos, Music and Live Streams"
              },
              {
                "id": 30,
                "title": "TikTok - Videos, Music & LIVE",
                "subtitle": "Watch, discover and stream!"
              }
            ]
          },
          {
            "id": 4,
            "type": "small_banner",
            "heading": "World for Kids",
            "subtitle": null,
            "items": [
              {
                "id": 21,
                "title": "World of shapes and color"
              },
              {
                "id": 22,
                "title": "Youtube: Watch, Listen, Stream"
              },
              {
                "id": 23,
                "title": "TikTok - Videos, Music & LIVE"
              },
              {
                "id": 24,
                "title": "SoundCloud - Music & Playlists"
              }
            ]
          }
        ]
"""
    }
}
