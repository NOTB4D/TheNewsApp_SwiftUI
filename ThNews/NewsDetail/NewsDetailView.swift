//
//  NewsDetailView.swift
//  ThNews
//
//  Created by Eser Kucuker on 17.08.2022.
//

import SwiftUI

protocol NewsDetailDisplayLogic {
    func displayNewsDetail(viewModdel: NewsDetail.Fetch.ViewModel)
}

extension NewsDetailView: NewsDetailDisplayLogic {
    func displayNewsDetail(viewModdel: NewsDetail.Fetch.ViewModel) {
        news.displayedNews = viewModdel
        
    }
    func fecthNewsDetail() {
        interactor?.fetchNewsDetail(request: NewsDetail.Fetch.Request())
    }
}

struct NewsDetailView: View {
    
    @ObservedObject var news = NewsDetailDatastore()
    
    var interactor: NewsDetailBusinessLogic?
    var router: (NewsDetailRouterlogic & NewsDetailDataPassing)?
    
    var body: some View {
        NewDetailCell(item: news.displayedNews)
            .onAppear {
                fecthNewsDetail()
            }
    }
}

