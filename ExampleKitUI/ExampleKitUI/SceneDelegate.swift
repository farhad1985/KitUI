//
//  SceneDelegate.swift
//  ExampleKitUI
//
//  Created by Farhad on 6/22/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
                
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.backgroundColor = .white
        let vc = SPReceiptVC()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }

}

