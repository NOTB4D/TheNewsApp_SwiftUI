//
//  NewsDetailDatastore.swift
//  ThNews
//
//  Created by Eser Kucuker on 20.08.2022.
//

import Foundation

class NewsDetailDatastore: ObservableObject {
    @Published var displayedNews : NewsDetail.Fetch.ViewModel = NewsDetail.Fetch.ViewModel()

}
