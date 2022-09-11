//
//  NewsDetailRouter.swift
//  ThNews
//
//  Created by Eser Kucuker on 17.08.2022.
//

import Foundation
import UIKit


protocol NewsDetailRouterlogic: AnyObject {
 
}

protocol NewsDetailDataPassing: AnyObject {
    var dataStore: NewsDetailDataStore? { get }
}

final class NewsDetailRouter: ObservableObject , NewsDetailRouterlogic, NewsDetailDataPassing {

    var view: NewsDetailView?
    var dataStore: NewsDetailDataStore?

}
