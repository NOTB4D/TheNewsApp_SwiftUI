//
//  NewsRouter.swift
//  ThNews
//
//  Created by Eser Kucuker on 13.08.2022.
//


import SwiftUI

protocol NewsRoutingLogic: AnyObject {
    func routeToNewsDetail(item: String) -> NewsDetailView
    
}

protocol NewsDataPassing: AnyObject {
    var dataStore: NewsDataStore? { get }
}

final class NewsRouter: NewsRoutingLogic, NewsDataPassing {
 
    var view: NewsView?
    var dataStore: NewsDataStore?

    func routeToNewsDetail(item: String) -> NewsDetailView {
       let dv = NewsDetailView()
       let destv = dv.configureView()
        destv.router?.dataStore?.newsDetail = dataStore?.article?.first(where: {$0.title == item})
        return destv
    }
    
    func linkBuilder<Content: View>(item: String, @ViewBuilder content: () -> Content) -> some View {
        NavigationLink(destination: routeToNewsDetail(item: item)) {
        content()
      }
    }
}
