//
//  NewsView.swift
//  ThNews
//
//  Created by Eser Kucuker on 13.08.2022.
//

import SwiftUI
import SDWebImageSwiftUI

protocol NewsDisplayLogic {
   func displayNews(viewModel: News.Fetch.ViewModel)
}

extension NewsView: NewsDisplayLogic {
    func displayNews(viewModel: News.Fetch.ViewModel) {
        news.displayedNews = viewModel.news
    }
  

  func fetchIceCream() {
    let request = News.Fetch.Request(country: "tr")
      interactor?.fetchNews(request: request)
  }

}

struct NewsView: View {
    
    var interactor: NewsBusinessLogic?
    var router: NewsRouter?

  @ObservedObject var news = NewDataStore()

  var body: some View {
      List {
          
          ForEach(news.displayedNews) { item in
              
              router?.linkBuilder(item: item.title!) {
                  NewsCell(item: item)
              }
                  
              
          }
      }
      .background(.clear)
      .onAppear {
        fetchIceCream()
      }
  }
}


