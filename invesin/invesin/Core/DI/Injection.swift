//
//  Injection.swift
//  invesin
//
//  Created by Hendi kusuma Yuda on 24/03/22.
//

import Foundation

final class Injection: NSObject {
  
  private func provideRepository() -> MealRepositoryProtocol {

    let remote: RemoteDataSource = RemoteDataSource.sharedInstance

    return MealRepository.sharedInstance(remote)
  }

  func provideHome() -> HomeUseCase {
    let repository = provideRepository()
    return HomeInteractor(repository: repository)
  }

  func provideDetail(category: CategoryModel) -> DetailUseCase {
    let repository = provideRepository()
    return DetailInteractor(repository: repository, category: category)
  }

}
