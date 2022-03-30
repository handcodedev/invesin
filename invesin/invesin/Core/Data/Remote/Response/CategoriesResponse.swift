//
//  CategoriesResponse.swift
//  invesin
//
//  Created by Hendi kusuma Yuda on 24/03/22.
//

import Foundation

struct CategoriesResponse: Decodable {

  let categories: [CategoryResponse]
  
}

struct CategoryResponse: Decodable {

  private enum CodingKeys: String, CodingKey {
    case id = "idCategory"
    case title = "strCategory"
    case image = "strCategoryThumb"
    case description = "strCategoryDescription"
  }

  let id: String?
  let title: String?
  let image: String?
  let description: String?

}
