//
//  NewsWorker.swift
//  ThNews
//
//  Created by Eser Kucuker on 13.08.2022.
//

import Foundation

protocol NewsWorkingLogic: AnyObject {
    func getNews(requst: NewsRequestModel, complation: @escaping ((Result<NewsList,Error>) -> Void))
}

final class NewsWorker: NewsWorkingLogic {
    
    func getNews(requst: NewsRequestModel, complation: @escaping ((Result<NewsList, Error>) -> Void)) {
        Request().requesdt(model: NewsList.self, parameters: requst.dictionary) { result in
            switch result {
            case .success(let response):
                complation(.success(response))
            case .faillure(let error):
                complation(.failure(error))
            }
        }
    }
    
    
}
