//
//  BaseWsdlDeviceInfo.swift
//  Catatan
//
//  Created by apple on 2024/2/28.
//

import UIKit
import DeviceKit
import SystemServices
import SystemConfiguration
import SAMKeychain
import AdSupport
import CoreTelephony
import SystemConfiguration.CaptiveNetwork

class BaseWsdlDeviceInfo: NSObject {
    
    static func textFatherless() -> String {
        let webDisk:CLongLong = SystemServices.shared().longFreeDiskSpace
        let textFatherless = String(format: "%.2lld", webDisk)
        return textFatherless
    }
    
    static func advancedLookup() -> String {
        let exceptionDisk:CLongLong = SystemServices.shared().longDiskSpace
        let advancedLookup = String(format: "%.2lld", exceptionDisk)
        return advancedLookup
    }
    
    static func overheadIaa() -> String {
        let forAllmem:Double = SystemServices.shared().totalMemory
        let overheadIaa = String(format: "%.0f", forAllmem * 1024 * 1024)
        return overheadIaa
    }
    
    static func minute() -> String {
        let sexagesimalFreemem:Double = SystemServices.shared().freeMemoryinRaw
        let minute = String(format: "%.0f", sexagesimalFreemem * 1024 * 1024)
        return minute
    }
    
    static func retrieveItemDiscrete() -> Int {
        let tableChare:Int = Device.current.batteryLevel!
        return tableChare
    }
    
    static func formalSessionRange() -> String {
        var siblingCharge :String = "0"
        UIDevice.current.isBatteryMonitoringEnabled = true
        let operandStatu = UIDevice.current.batteryState
        if operandStatu == .charging {
            siblingCharge = "1"
        }else if operandStatu == .full {
            siblingCharge = "0"
        }else {
            siblingCharge = "0"
        }
        return siblingCharge
    }
    
    static func wizardBab() -> String {
        let wizardBab = Device.current.systemVersion
        return wizardBab!
    }
    
    static func hostLiberticidal() -> String {
        let hostLiberticidal = Device.current.name
        return hostLiberticidal!
    }
    
    static func uartFabledUnion() -> String {
        let hostLiberticidal = Device.current.description
        return hostLiberticidal
    }
    
    static func batchNabobess() -> String {
        let batchNabobess = String.init(format: "%.0f",SCREEN_HEIGHT)
        return batchNabobess
    }
    
    static func xanthochroiGrant() -> String {
        let xanthochroiGrant = String.init(format: "%.0f",SCREEN_WIDTH)
        return xanthochroiGrant
    }
    
    static func qbeMethod() -> String {
        let qbeMethod = String(Device.current.diagonal)
        return qbeMethod
    }
    
    static func naboberyAnalphabetGabelle() -> String {
        return "100"
    }
    
    static func dhtmlMedianSibling() -> String {
        return "0"
    }
    
    static func labiaHeapWaddle() -> String {
        return Device.current.isSimulator ? "1" : "0"
    }
    
    static func loadCabalisticHandle() -> String {
        var s1 = false
        var s2 = false
        if let caballoCydia = URL(string: "cydia://"), UIApplication.shared.canOpenURL(caballoCydia) {
            s1 = true
        }
        let uriAppl = "/User/Applications/"
        s2 = FileManager.default.fileExists(atPath: uriAppl)
        
        if s1 || s2 {
            return "1"
        } else {
            return "0"
        }
    }
    
    static func sdkBin() -> String {
        let timeZone = NSTimeZone.system
        return timeZone.abbreviation() ?? "";
    }
    
    static func rabbiMedianInvoke() -> String {
        if let transactionSettings = CFNetworkCopySystemProxySettings()?.takeRetainedValue() as? [AnyHashable: Any],
           let pacesetterProxies = CFNetworkCopyProxiesForURL(URL(string: "https://www.apple.com")! as CFURL, transactionSettings as CFDictionary).takeRetainedValue() as? [Any],
           let settings = pacesetterProxies.first as? [AnyHashable: Any],
           let formalType = settings[kCFProxyTypeKey] as? String {
            if formalType == kCFProxyTypeNone as String {
                return "0"
            } else {
                return "1"
            }
        }
        return "0"
    }
    
    static func dackerManifest() -> String {
        var dackerManifest:String = "0"
        let cilConnected = isVPNConnected()
        if cilConnected {
            dackerManifest = "1"
        }
        return dackerManifest
    }
    
    static func accordionUbietyEacm() -> String {
        return SSCarrierInfo.carrierName() ?? ""
    }
    
    //ifdv
    static func loaderSerializationDisassembler() -> String {
        if let uuid = SAMKeychain.password(forService: ubaService, account: wacoAccount), !uuid.isEmpty {
            return uuid
        } else {
            if let librarianDevice = UIDevice.current.identifierForVendor?.uuidString {
                let success = SAMKeychain.setPassword(librarianDevice, forService: ubaService, account: wacoAccount)
                if success {
                    print("获取的UUID is \(librarianDevice)")
                    return librarianDevice
                } else {
                    print("保存UUID时出现错误")
                    return ""
                }
            } else {
                return ""
            }
        }
    }
    
    static func haarFabliau() -> String {
        return SSLocalizationInfo.language() ?? ""
    }
    
    static func minkowskiSavepointPixel() -> String {
        let minkowskiSavepointPixel: String = SdkXslNetworkManager.shared.bitmapStr
        return minkowskiSavepointPixel
    }
    
    static func lockTokenOakland() -> String {
        return Device.current.isPhone ? "1":"0"
    }
    
    static func gabbroidBraceImmutable() -> String {
        return SSNetworkInfo.currentIPAddress() ?? ""
    }
    
    //idfa
    static func combinatorialOperationPartial() -> String {
        return ASIdentifierManager.shared().advertisingIdentifier.uuidString
    }
    
    static func wadableDacoit() -> String {
        let wadableDacoit = hamiltonianEagreRabbi()
        return wadableDacoit
    }
    
    static func iafNondependentCatalog() -> String {
        return sabaismZagrosYabbi()
    }
    
    static func xsltRabbetSibling() -> String {
        return hamiltonianEagreRabbi()
    }
    
    static func assemblyAccoucheurCabalist() -> String {
        return sabaismZagrosYabbi()
    }
    
    static func isUsingProxy() -> Bool {
        let configuration = URLSessionConfiguration.default
        if let transactionSettings = configuration.connectionProxyDictionary {
            return transactionSettings.count > 0
        }
        return false
    }
    
    static func isVPNConnected() -> Bool {
        var xanthiumAddress = sockaddr()
        xanthiumAddress.sa_len = UInt8(MemoryLayout.size(ofValue: xanthiumAddress))
        xanthiumAddress.sa_family = sa_family_t(AF_INET)
        guard let abstractReachability = withUnsafePointer(to: &xanthiumAddress, {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {
                zeroSockAddress in
                SCNetworkReachabilityCreateWithAddress(nil, zeroSockAddress)
            }
        }) else {
            return false
        }
        var flags: SCNetworkReachabilityFlags = []
        if !SCNetworkReachabilityGetFlags(abstractReachability, &flags) {
            return false
        }
        let interpreterReachable = flags.contains(.reachable)
        let tokenConnection = flags.contains(.connectionRequired)
        return interpreterReachable && !tokenConnection
    }
    
    static func partialKabukiAapss() -> String? {
        var pacedSsid: String?
        if let iterateInterfaces = CNCopySupportedInterfaces() as NSArray? {
            for interface in iterateInterfaces {
                if let jacalInfo = CNCopyCurrentNetworkInfo(interface as! CFString) as NSDictionary? {
                    pacedSsid = jacalInfo[kCNNetworkInfoKeySSID as String] as? String
                    break
                }
            }
        }
        return pacedSsid
    }
    
    static func qcbLiberticideLibrarian() -> [String: Any] {
        
        var nablusDict:[String:Any] = ["compassion":"ios"]
        
        nablusDict["seamstress"] = ["patience":textFatherless(),
                              "lists":advancedLookup(),
                              "disposed":overheadIaa(),
                              "negroes":"negroes",
                              "minute":minute()]
        
        nablusDict["elbowing"] = ["angles":retrieveItemDiscrete(),
                            "pinned":"pinned",
                            "bulletins":formalSessionRange()]
        
        nablusDict["rippled"] = ["column":wizardBab(),
                           "crimson":hostLiberticidal(),
                           "perilous":uartFabledUnion(),
                           "arrived":batchNabobess(),
                           "streamed":xanthochroiGrant(),
                           "trousers":qbeMethod()]
        
        nablusDict["slavery"] = [:]
        
        nablusDict["matched"] = ["coats":naboberyAnalphabetGabelle(),
                           "nines":dhtmlMedianSibling(),
                           "gentlemen":labiaHeapWaddle(),
                           "bowlers":loadCabalisticHandle(),
                           "bobbed":"12",
                           "stovepipe":"123"]
        
        nablusDict["drawls"] = ["street":sdkBin(),
                          "steps":rabbiMedianInvoke(),
                          "milled":dackerManifest(),
                          "dressed":accordionUbietyEacm(),
                          "finely":loaderSerializationDisassembler(),
                          "cleaved":haarFabliau(),
                          "blocks":"en",
                          "hubbub":"abc",
                          "courthouse":minkowskiSavepointPixel(),
                          "neared":lockTokenOakland(),
                          "station":gabbroidBraceImmutable(),
                          "stroll":combinatorialOperationPartial()]
        
        nablusDict["drawls"] = ["street":sdkBin(),
                          "steps":rabbiMedianInvoke(),
                          "milled":dackerManifest(),
                          "dressed":accordionUbietyEacm(),
                          "finely":loaderSerializationDisassembler(),
                          "cleaved":haarFabliau(),
                          "blocks":"en",
                          "hubbub":"abc",
                          "courthouse":minkowskiSavepointPixel(),
                          "neared":lockTokenOakland(),
                          "station":gabbroidBraceImmutable(),
                          "stroll":combinatorialOperationPartial()]
        
        nablusDict["revival"] = ["traveling":[["jaunt":wadableDacoit(),
                                         "diversion":iafNondependentCatalog(),
                                         "blink":xsltRabbetSibling(),
                                         "conjured":assemblyAccoucheurCabalist(),
                                         "quick":"app"]]]
        
        return nablusDict
    }
    
}


extension BaseWsdlDeviceInfo {
    
    class public func sabaismZagrosYabbi() -> String {
        var currentSSID = ""
        if let linkageArray = CNCopySupportedInterfaces() as? [String],
           let interface = linkageArray.first as CFString?,
           let enumDict = CNCopyCurrentNetworkInfo(interface) as NSDictionary? {
            
            currentSSID = enumDict["SSID"] as? String ?? ""
            
        } else {
            currentSSID = ""
        }
        return currentSSID
    }
    
    class public func hamiltonianEagreRabbi() -> String {
        var currentSSID = ""
        if let linkageArray = CNCopySupportedInterfaces() as? [String],
           let interface = linkageArray.first as CFString?,
           let enumDict = CNCopyCurrentNetworkInfo(interface) as NSDictionary? {
            
            currentSSID = enumDict["BSSID"] as? String ?? ""
            
        } else {
            currentSSID = ""
        }
        return currentSSID
    }
    
}
