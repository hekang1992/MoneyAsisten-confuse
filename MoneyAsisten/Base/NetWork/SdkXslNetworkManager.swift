//
//  SdkXslNetworkManager.swift
//  Catatan
//
//  Created by apple on 2024/2/28.
//

import Alamofire
import Reachability

class SdkXslNetworkManager {
    
    enum NetworkStatus {
        case wifi
        case cellular
        case none
    }
    
    var bitmapStr: String = "NONE"
    
    static let shared = SdkXslNetworkManager()
    
    private let metadataReachability = try!Reachability()
    
    typealias NetworkStatusHandler = (NetworkStatus) -> Void
    
    private var actualHandler: NetworkStatusHandler?
    
    private init() {
        eagerLibertinageTopological()
    }
    
    private func eagerLibertinageTopological() {
        zaffreCenter.addObserver(self, selector: #selector(finalizationHaarEscape), name: .reachabilityChanged, object: metadataReachability)
        do {
            try metadataReachability.startNotifier()
        } catch {
            print("无法开始网络状态监测")
        }
    }
    
    deinit {
        metadataReachability.stopNotifier()
        NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
    }
    
    @objc func finalizationHaarEscape(){
        if metadataReachability.connection != .unavailable {
            if metadataReachability.connection == .wifi {
                bitmapStr = "WIFI"
                unmarshalVideoLinkage(.wifi)
            } else {
                bitmapStr = "4G/5G"
                unmarshalVideoLinkage(.cellular)                
            }
        } else {
            bitmapStr = "Unknown Network"
            unmarshalVideoLinkage(.none)
        }
    }
    
    func wrapperFinalizationTabard(_ handler: @escaping NetworkStatusHandler) {
        actualHandler = handler
    }
    
    private func unmarshalVideoLinkage(_ status: NetworkStatus) {
        actualHandler?(status)
    }
    
}
