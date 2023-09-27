//
//  DeepLinkManager.swift
//  Runner
//
//  Created by Nextsavy on 26/09/23.
//

import Foundation
struct DeeplinkManager {
    
    let channelName = "com.nst.dltest.deeplink/deeplinkmanager"
    
    let methodChannel: FlutterMethodChannel
    
    init(with flutterEngine: FlutterEngine) {
        methodChannel = FlutterMethodChannel(name: channelName, binaryMessenger: flutterEngine.binaryMessenger)
    }
    
}
