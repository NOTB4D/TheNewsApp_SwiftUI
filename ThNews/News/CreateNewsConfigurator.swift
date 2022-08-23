//
//  CreateNewsConfigurator.swift
//  ThNews
//
//  Created by Eser Kucuker on 13.08.2022.
//

import SwiftUI

extension NewsView {
    func configureView() -> some View{
        var view = self
        let interactor = NewsInteractor()
        let presenter = NewsPresenter()
        let router = NewsRouter()
        view.interactor = interactor
        view.router = router
        interactor.presenter = presenter
        presenter.view = view
        router.view = view
        router.dataStore = interactor
        return view
    }
}
