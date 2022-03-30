//
//  CategoryMapper.swift
//  invesin
//
//  Created by Hendi kusuma Yuda on 24/03/22.
//

final class CategoryMapper {

  static func mapCategoryResponsesToDomains(
    input categoryResponses: [CategoryResponse]
  ) -> [CategoryModel] {

    return categoryResponses.map { result in
      return CategoryModel(
        id: result.id ?? "",
        title: result.title ?? "Unknow",
        image: result.image ?? "Unknow",
        description: result.description ?? "Unknow"
      )
    }
  }
  
}

