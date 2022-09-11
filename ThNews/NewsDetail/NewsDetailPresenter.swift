//
//  NewsDetailPresenter.swift
//  ThNews
//
//  Created by Eser Kucuker on 17.08.2022.
//

import Foundation

protocol NewsDetailPresentationLogic: AnyObject {
    func presentNewsDetail(response: NewsDetail.Fetch.Response)
}

class newsDetailPresenter {
    var view: NewsDetailView? = NewsDetailView()
}

extension newsDetailPresenter: NewsDetailPresentationLogic {
   
    func presentNewsDetail(response: NewsDetail.Fetch.Response) {
        view?.displayNewsDetail(viewModdel: NewsDetail.Fetch.ViewModel(
            image: response.article?.urlToImage ?? "",
            title: response.article?.title ?? "",
            description: response.article?.description ?? "")
        )
    }
    
    
}
