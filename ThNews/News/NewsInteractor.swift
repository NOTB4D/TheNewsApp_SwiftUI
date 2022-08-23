//
//  NewsInteractor.swift
//  ThNews
//
//  Created by Eser Kucuker on 13.08.2022.
//

import Foundation

protocol NewsBusinessLogic: AnyObject {
    func fetchNews(request: News.Fetch.Request)
}

protocol NewsDataStore: AnyObject {
    var article: [Article]? {get}
}

class NewsInteractor {
    var presenter: NewsPresentationLogic?
    var worker: NewsWorkingLogic = NewsWorker()
    
    var article: [Article]?
}

extension NewsInteractor: NewsBusinessLogic, NewsDataStore {
    
    func fetchNews(request: News.Fetch.Request) {
        worker.getNews(requst: NewsRequestModel(country: request.country)) { [weak self] result in
            switch result {
            case .success(let response):
                self?.article = response.articles
                guard let news = self?.article else { return }
                self?.presenter?.presentNews(response: News.Fetch.Response(article :news))
            case .failure(let error):
                self?.presenter?.presenterAlert(error: error)
            }
        }
    }
}
