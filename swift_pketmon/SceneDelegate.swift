//
//  SceneDelegate.swift
//  swift_pketmon
//
//  Created by 申民鐡 on 2021/11/19.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
            guard let windowScen = (scene as? UIWindowScene) else { return }
  
//        let window = UIWindow(windowScene: windowScen)
//        window.rootViewController = PoketBookController()
//        window.makeKeyAndVisible()
//        self.window = window
//
        //self window에 uiwindow를 넣어준다.
        self.window = UIWindow(windowScene: windowScen)
        //포켓북 컨트롤러의 인스턴스를 만들고 컬렉션타입은UICollectionViewFlowLayout
        let poketBookController = PoketBookController(collectionViewLayout: UICollectionViewFlowLayout())
        //루트뷰 컨트롤러를 선언후 navigation컨트롤러로 루트를 poketbookcontorller로 지정 (루트가 포켓북이됨)
        let rootViewController = UINavigationController(rootViewController: poketBookController)
        //윈도우에 루트는 루트컨트롤러이다 라고 선언
        self.window?.rootViewController = rootViewController
        //그것을 메이크키앤드 비시블로 적용___???해준다.
        self.window?.makeKeyAndVisible()

//
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

