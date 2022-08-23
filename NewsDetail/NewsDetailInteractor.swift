//
//  NewsDetailInteractor.swift
//  ThNews
//
//  Created by Eser Kucuker on 17.08.2022.
//

import Foundation

protocol NewsDetailBusinessLogic: AnyObject{
    func fetchNewsDetail(request: NewsDetail.Fetch.Request)
}

protocol NewsDetailDataStore: AnyObject {
    var newsDetail: Article? { get set }
}

class NewsDetailInteractor: NewsDetailBusinessLogic, NewsDetailDataStore {

    
    var presenter: NewsDetailPresentationLogic? = newsDetailPresenter()
    var newsDetail: Article?
    
    func fetchNewsDetail(request: NewsDetail.Fetch.Request) {
        presenter?.presentNewsDetail(response: NewsDetail.Fetch.Response(article: newsDetail))
    }
}


