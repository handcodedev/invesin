//
//  DetailPresenter.swift
//  invesin
//
//  Created by Hendi kusuma Yuda on 24/03/22.
//

import SwiftUI

class DetailPresenter: ObservableObject {

  private let detailUseCase: DetailUseCase

  @Published var category: CategoryModel
  @Published var errorMessage: String = ""
  @Published var loadingState: Bool = false

  init(detailUseCase: DetailUseCase) {
    self.detailUseCase = detailUseCase
    category = detailUseCase.getCategory()
  }

}
