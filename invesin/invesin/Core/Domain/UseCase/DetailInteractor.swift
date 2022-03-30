//
//  DetailInteractor.swift
//  invesin
//
//  Created by Hendi kusuma Yuda on 24/03/22.
//

import Foundation

protocol DetailUseCase {

  func getCategory() -> CategoryModel

}

class DetailInteractor: DetailUseCase {

  private let repository: MealRepositoryProtocol
  private let category: CategoryModel

  required init(
    repository: MealRepositoryProtocol,
    category: CategoryModel
  ) {
    self.repository = repository
    self.category = category
  }

  func getCategory() -> CategoryModel {
    return category
  }

}
