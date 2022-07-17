//
//  Room.swift
//  UIKitTraining
//
//  Created by Noah's Ark on 2022/07/17.
//

import Foundation

struct Room {
    var title: String
    var genre: Genre
    var difficulty: Int
    var activity: Activity
    var maxParty: Int
    var timeLimit: Int
    var description: String
}

enum Genre: String {
    case fantasy = "판타지"
    case comedy = "코메디"
    case horror = "공포"
}

enum Activity: String {
    case low = "적음"
    case middle = "보통"
    case high = "많음"
}

let roomSampleArray: [Room] = [
    Room(
        title: "타임 트레블: 의문의 편지",
        genre: .fantasy,
        difficulty: 4,
        activity: .low,
        maxParty: 4,
        timeLimit: 75,
        description: "뉴욕의 잘나가는 커리어우먼 도로시 설리반. 기업 연회 일정을 마치고, 오피스텔 캔자스힐타워 51층 집으로 돌아온다"
    ),
    Room(
        title: "타임 트레블: 의문의 편지",
        genre: .fantasy,
        difficulty: 4,
        activity: .low,
        maxParty: 4,
        timeLimit: 75,
        description: "뉴욕의 잘나가는 커리어우먼 도로시 설리반. 기업 연회 일정을 마치고, 오피스텔 캔자스힐타워 51층 집으로 돌아온다"
    ),
    Room(
        title: "타임 트레블: 의문의 편지",
        genre: .fantasy,
        difficulty: 4,
        activity: .low,
        maxParty: 4,
        timeLimit: 75,
        description: "뉴욕의 잘나가는 커리어우먼 도로시 설리반. 기업 연회 일정을 마치고, 오피스텔 캔자스힐타워 51층 집으로 돌아온다"
    )
]
