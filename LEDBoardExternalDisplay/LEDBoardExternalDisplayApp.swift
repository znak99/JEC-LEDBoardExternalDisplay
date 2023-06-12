//
//  LEDBoardExternalDisplayApp.swift
//  LEDBoardExternalDisplay
//
//  Created by SeungWoo Hong on 2023/06/06.
//

import SwiftUI
import Combine

@main
struct LEDBoardExternalDisplayApp: App {
    
    @State var additionalWindows: [UIWindow] = []
    @StateObject var messageManager: GenerateMessageManager = .init()
    @StateObject var displayManager: DisplayManager = .init()
    
    // external display connected notification publisher
    private var sceneWillConnectPublisher: AnyPublisher<UIWindowScene, Never> {
        NotificationCenter.default.publisher(for: UIScene.willConnectNotification)
            .compactMap { $0.object as? UIWindowScene }
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
    
    // external display disconnected notification publisher
    private var sceneDidDisconnectPublisher: AnyPublisher<UIWindowScene, Never> {
        NotificationCenter.default.publisher(for: UIScene.didDisconnectNotification)
            .compactMap { $0.object as? UIWindowScene }
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(messageManager)
                .environmentObject(displayManager)
                .onReceive(sceneDidDisconnectPublisher, perform: sceneDidDisConnect)
                .onReceive(sceneWillConnectPublisher, perform: sceneWillConnect)
        }
    }
    
    private func sceneWillConnect(_ scene: UIWindowScene) {
        let window = UIWindow(frame: scene.screen.bounds)
        window.windowScene = scene
        
        let view = ExternalLEDBoardView()
            .environmentObject(messageManager)
            .environmentObject(displayManager)
        let controller = UIHostingController(rootView: view)
        
        window.rootViewController = controller
        window.isHidden = false
        
        additionalWindows.append(window)
        messageManager.isExternalDisplayConnected = true
    }
    
    private func sceneDidDisConnect(_ scene: UIWindowScene) {
        additionalWindows.removeAll{ $0.windowScene == scene }
        messageManager.isExternalDisplayConnected = false
    }
}


