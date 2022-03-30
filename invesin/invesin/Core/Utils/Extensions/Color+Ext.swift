//
//  Color+Ext.swift
//  invesin
//
//  Created by Hendi kusuma Yuda on 24/03/22.
//

import SwiftUI

extension Color {

  static var random: Color {
    return Color(
      red: .random(in: 0...1),
      green: .random(in: 0...1),
      blue: .random(in: 0...1)
    )
  }
  
}
