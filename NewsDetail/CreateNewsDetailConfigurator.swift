//
//  CreateNewsDetailConfigurator.swift
//  ThNews
//
//  Created by Eser Kucuker on 20.08.2022.
//

import SwiftUI

extension NewsDetailView {
    func configureView() -> NewsDetailView {
        var view = self
        let interactor = NewsDetailInteractor()
        let presenter = newsDetailPresenter()
        let router = NewsDetailRouter()
        view.interactor = interactor
        view.router = router
        interactor.presenter = presenter
        presenter.view = view
        router.view = view
        router.dataStore = interactor
        return view
    }
}
