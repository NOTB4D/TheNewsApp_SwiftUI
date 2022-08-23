//
//  NewDataStore.swift
//  ThNews
//
//  Created by Eser Kucuker on 13.08.2022.
//

import Foundation

class NewDataStore: ObservableObject {
  @Published var displayedNews : [News.Fetch.ViewModel.New] = []

}
