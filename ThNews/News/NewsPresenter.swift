//
//  NewsPresenter.swift
//  ThNews
//
//  Created by Eser Kucuker on 13.08.2022.
//

import Foundation

protocol NewsPresentationLogic: AnyObject {
    func presentNews(response: News.Fetch.Response)
    func presenterAlert(error: Error)
}

 class NewsPresenter {
    
     var view: NewsDisplayLogic?
    
}

extension NewsPresenter: NewsPresentationLogic {

    func presentNews(response: News.Fetch.Response) {
        var news: [News.Fetch.ViewModel.New] = []
        
        response.article.forEach{
            news.append(News.Fetch.ViewModel.New(date: $0.publishedAt?.fromUTCToLocalDateTime(),
                                                 title: $0.title,
                                                 image: $0.urlToImage))
        }
        view?.displayNews(viewModel: News.Fetch.ViewModel(news: news))
    }
    
    func presenterAlert(error: Error) {
        //
    }
}
