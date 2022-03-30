//
//  TabItem.swift
//  invesin
//
//  Created by Hendi kusuma Yuda on 24/03/22.
//

import SwiftUI

struct TabItem: View {

  var imageName: String
  var title: String
  var body: some View {
    VStack {
      Image(systemName: imageName)
      Text(title)
    }
  }

}

