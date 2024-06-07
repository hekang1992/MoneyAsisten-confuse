//
//  AppDelegate.swift
//  Catatan
//
//  Created by apple on 2024/2/26.
//

import UIKit
import IQKeyboardManagerSwift
import AppTrackingTransparency
import HandyJSON
import AppsFlyerLib

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var unmanagedUpload: Bool = false
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow.init(frame: UIScreen.main.bounds)
        noti()
        keyboardManager()
//        getFontNames()
        getPush()
        window?.rootViewController = DaccaBackgroundViewController()
        window?.makeKeyAndVisible()
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        if #available(iOS 14.0, *) {
            ATTrackingManager.requestTrackingAuthorization { status in
                // Handle the tracking authorization status if needed
            }
        }
    }
    
    func keyboardManager(){
        IQKeyboardManager.shared.keyboardDistanceFromTextField = 5.pix()
        IQKeyboardManager.shared.shouldResignOnTouchOutside = true
        IQKeyboardManager.shared.enable = true
    }
    
    func noti(){
        zaffreCenter.addObserver(self, selector: #selector(setUpRootVc(_:)), name: NSNotification.Name(SET_ROOTVC), object: nil)
    }
    
    @objc func setUpRootVc(_ notification: Notification){
        windowAnimation()
        if let userInfo = notification.userInfo {
            if let value = userInfo["cleaved"] as? String {
                if value == "uu" {
                    window?.rootViewController = LiteralListViewController()
                }else{
                    window?.rootViewController = UbicationWadableViewController(rootViewController: FatherlessAapamoorViewController())
                }
            }
        }else {
            window?.rootViewController = LiteralListViewController()
        }
        googleMarket()
    }
    
    //google
    func googleMarket() {
        if self.unmanagedUpload == false {
            let loaderSerializationDisassembler = BaseWsdlDeviceInfo.loaderSerializationDisassembler()
            let combinatorialOperationPartial = BaseWsdlDeviceInfo.combinatorialOperationPartial()
            let nablusDict = ["finely":loaderSerializationDisassembler,"stroll":combinatorialOperationPartial]
            ParserPachalicApiWork.shared.requestAPI(params: nablusDict as [String : Any], pageUrl: forTrouble, method: .post) { [weak self] model in
                let rabbanistAwareness = model.awareness
                if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                    let nablusDict = model.hovered
                    let googleModel = JSONDeserializer<HoveredModel>.deserializeFrom(dict: nablusDict)
                    if let googleModel = googleModel {
                        self?.upLoadGoole(googleModel.decades ?? "", googleModel.trapped ?? "")
                        self?.unmanagedUpload = true
                        print("googleMarket>>>>>>success")
                    }
                }
            } errorBlock: { error in
                
            }
        }
    }
    
    func upLoadGoole(_ appid: String, _ key: String) {
        AppsFlyerLib.shared().appleAppID = appid
        AppsFlyerLib.shared().appsFlyerDevKey = key
        AppsFlyerLib.shared().delegate = self
        AppsFlyerLib.shared().start()
    }
    
    func windowAnimation() {
        let transition = CATransition()
        transition.duration = 0.25
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        self.window?.layer.add(transition, forKey: "animation")
    }
    
    func getFontNames() {
        let familyNames = UIFont.familyNames
        for familyName in familyNames {
            let fontNames = UIFont.fontNames(forFamilyName: familyName)
            for fontName in fontNames {
                print("--------\tfontName-------- = \(fontName)")
            }
        }
    }
}

extension AppDelegate: UNUserNotificationCenterDelegate, AppsFlyerLibDelegate {
    
    func onConversionDataSuccess(_ conversionInfo: [AnyHashable : Any]) {
        print("conversionInfo>>>>>>>>>\(conversionInfo)")
    }
    
    func onConversionDataFail(_ error: any Error) {
        print("error>>>>>>>>>\(error)")
    }
    
    func getPush() {
        let center = UNUserNotificationCenter.current()
        center.delegate = self
        center.requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
        }
        if #available(iOS 16.0, *) {
            center.setBadgeCount(0) { error in
                
            }
        } else {
            
        }
        UIApplication.shared.registerForRemoteNotifications()
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        var strToken = ""
        for byte in deviceToken {
            strToken += String(format: "%02x", byte)
        }
        print("strToken===\(strToken)")
    }
    
}
