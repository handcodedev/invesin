import Foundation

protocol HomeUseCase {

  func getCategories(completion: @escaping (Result<[CategoryModel], Error>) -> Void)

}

class HomeInteractor: HomeUseCase {

  private let repository: MealRepositoryProtocol
  
  required init(repository: MealRepositoryProtocol) {
    self.repository = repository
  }
  
  func getCategories(
    completion: @escaping (Result<[CategoryModel], Error>) -> Void
  ) {
    repository.getCategories { result in
      completion(result)
    }
  }

}
