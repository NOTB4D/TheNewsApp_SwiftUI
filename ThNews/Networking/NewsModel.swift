//
//  NewsModel.swift
//  ThNews
//
//  Created by Eser Kucuker on 13.08.2022.
//

import Foundation

struct NewsList: Codable, Equatable {
    let status:String?
    let totalResult: Int?
    let articles: [Article]?
}


struct Article: Codable, Equatable{
    let source: Source?
    let author, title, description, url, urlToImage, publishedAt, content: String?
}

struct Source: Codable, Equatable {
    let id: String?
    let name: String?
}
