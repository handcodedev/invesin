//
//  SceneDelegate.swift
//  invesin
//
//  Created by Hendi kusuma Yuda on 26/03/22.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  
  var window: UIWindow?
  
  func scene(
    _ scene: UIScene,
    willConnectTo session: UISceneSession,
    options connectionOptions: UIScene.ConnectionOptions
  ) {
    let homeUseCase = Injection.init().provideHome()

    let homePresenter = HomePresenter(homeUseCase: homeUseCase)

    let contentView = ContentView()
      .environmentObject(homePresenter)

    if let windowScene = scene as? UIWindowScene {
      let window = UIWindow(windowScene: windowScene)
      window.rootViewController = UIHostingController(rootView: contentView)
      self.window = window
      window.makeKeyAndVisible()
    }
  }
  
}
