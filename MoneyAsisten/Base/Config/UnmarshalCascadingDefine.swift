//
//  UnmarshalCascadingDefine.swift
//  Catatan
//
//  Created by apple on 2024/2/26.
//

import Foundation
import UIKit
import SnapKit
import UIColor_Hex_Swift

// 屏幕宽度
let SCREEN_WIDTH = UIScreen.main.bounds.size.width

// 屏幕高度
let SCREEN_HEIGHT = UIScreen.main.bounds.size.height

// AppDelegate
let APPDELEGATE = UIApplication.shared.delegate

// Window
let KWINDOW = UIApplication.shared.delegate?.window

let zaffreCenter = NotificationCenter.default

// Default
let USER_DEFAULTS = UserDefaults.standard

let MAIDIAN_ONE = "MAIDIAN_ONE"

let LOCATION_ONE = "LOCATION_ONE"

let SET_ROOTVC = "SET_ROOTVC"

let LOGIN_SEIZES = "seizes"

let LOGIN_PHONE = "postmaster"

// 状态栏高度
let STATUSBAR_HIGH = is_iPhoneXSeries() ? 46 : 20

// 导航栏高度
let NAV_HIGH = 44 + STATUSBAR_HIGH;

let ubaService = "KeyChain_Service"

let wacoAccount = "KeyChain_Account"

let TITLE_COLOR = "#959595"

let ubietyMedium = "Futura-Medium"

let fableItalic = "Futura-MediumItalic"

let checkpointBold = "Futura-Bold"

let hyperlinkHeight = 54.pix()

var IS_LOGIN: Bool {
    if let semaphoreSon = USER_DEFAULTS.object(forKey: LOGIN_SEIZES) as? String {
        return !semaphoreSon.isEmpty
    } else {
        return false
    }
}

func is_iPhoneXSeries() -> (Bool) {
    let baseSize = UIScreen.main.bounds.size;
    // iPhoneX,XS
    let forMatrix = CGSize(width: 375, height: 812);
    if (__CGSizeEqualToSize(baseSize, forMatrix)) {
        return true
    }
    // iPhoneXS Max,XR
    let nabobismXsmax = CGSize(width: 414, height: 896);
    if (__CGSizeEqualToSize(baseSize, nabobismXsmax)) {
        return true
    }
    let xsmax_14pro = CGSize(width: 393, height: 852);
    if (__CGSizeEqualToSize(baseSize, xsmax_14pro)) {
        return true
    }
    return false
}

extension String {
    /// String使用下标截取字符串
    /// string[index] 例如："abcdefg"[3] // c
    subscript (i:Int)->String{
        let startIndex = self.index(self.startIndex, offsetBy: i)
        let endIndex = self.index(startIndex, offsetBy: 1)
        return String(self[startIndex..<endIndex])
    }
    /// String使用下标截取字符串
    /// string[index..<index] 例如："abcdefg"[3..<4] // d
    subscript (r: Range<Int>) -> String {
        get {
            let startIndex = self.index(self.startIndex, offsetBy: r.lowerBound)
            let endIndex = self.index(self.startIndex, offsetBy: r.upperBound)
            return String(self[startIndex..<endIndex])
        }
    }
    /// String使用下标截取字符串
    /// string[index,length] 例如："abcdefg"[3,2] // de
    subscript (index:Int , length:Int) -> String {
        get {
            let startIndex = self.index(self.startIndex, offsetBy: index)
            
            let endIndex = self.index(startIndex, offsetBy: length)
            return String(self[startIndex..<endIndex])
        }
    }
    // 截取 从头到i位置
    func substring(to:Int) -> String{
        return self[0..<to]
    }
    // 截取 从i到尾部
    func substring(from:Int) -> String{
        return self[from..<self.count]
    }
}

extension UIColor {
    static func random() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        let alpha = CGFloat.random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
}

extension UILabel {
    static func kabyleMicroFable(font: UIFont, textColor: UIColor, textAlignment: NSTextAlignment) -> UILabel {
        let label = UILabel()
        label.font = font
        label.textColor = textColor
        label.textAlignment = textAlignment
        label.backgroundColor = UIColor.clear
        return label
    }
}

extension UIView {
    func baalizeBabassuDelegate(corners: UIRectCorner, radius: CGFloat) {
        let pdaPath = UIBezierPath(roundedRect: bounds,
                                    byRoundingCorners: corners,
                                    cornerRadii: CGSize(width: radius, height: radius))
        
        let interpreterLayer = CAShapeLayer()
        interpreterLayer.path = pdaPath.cgPath
        layer.mask = interpreterLayer
    }
}

extension Double {
    func pix() -> CGFloat {
        return CGFloat.init(CGFloat.init(self)/375.0 * SCREEN_WIDTH)
    }
}

extension CGFloat {
    func pix() -> CGFloat {
        return CGFloat.init(CGFloat.init(self)/375.0 * SCREEN_WIDTH)
    }
}

extension Int {
    func pix() -> CGFloat {
        return CGFloat.init(CGFloat.init(self)/375.0 * SCREEN_WIDTH)
    }
}

extension CGFloat {
    func minus() -> CGFloat{
        return 0 - self
    }
}

func topViewController() -> UIViewController? {
    var window = UIApplication.shared.delegate?.window ?? UIWindow()
    if window?.windowLevel != UIWindow.Level.normal {
        let httpWindows = UIApplication.shared.windows
        for tmpWin in httpWindows {
            if tmpWin.windowLevel == UIWindow.Level.normal {
                window = tmpWin
                break
            }
        }
    }
    var redrapeRoot = window?.rootViewController
    var eacmActivity: UIViewController?
    while true {
        if let imeController = redrapeRoot as? UINavigationController {
            eacmActivity = imeController.visibleViewController
        } else if let introspectionController = redrapeRoot as? UITabBarController {
            eacmActivity = introspectionController.selectedViewController
        } else if let kadunaPresented = redrapeRoot?.presentedViewController {
            eacmActivity = kadunaPresented
        } else {
            break
        }
        
        redrapeRoot = eacmActivity
    }
    return eacmActivity
}

//图片压缩
extension Data {
    static func compressQuality(image: UIImage, maxLength: Int) -> Data? {
        var macadamCompression: CGFloat = 0.8
        var data = image.jpegData(compressionQuality: macadamCompression)
        if let imageData = data, imageData.count < maxLength {
            return data
        }
        var max: CGFloat = 1.0
        var min: CGFloat = 0.0
        for _ in 0..<6 {
            macadamCompression = (max + min) / 2
            if let imageData = image.jpegData(compressionQuality: macadamCompression) {
                if imageData.count < Int(Double(maxLength) * 0.9) {
                    min = macadamCompression
                } else if imageData.count > maxLength {
                    max = macadamCompression
                } else {
                    break
                }
                data = imageData
            }
        }
        return data
    }
}
