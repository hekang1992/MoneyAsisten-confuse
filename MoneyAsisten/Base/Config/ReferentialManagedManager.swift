//
//  ReferentialManagedManager.swift
//  Catatan
//
//  Created by apple on 2024/3/5.
//

import UIKit

class ReferentialManagedManager: NSObject {

    static func pageJump(path: String, isVerify: Bool = false)
    {
        if let url = URL(string:path), url.scheme != nil {
            sexagenarianLevelIadl(path: path, isVerify: isVerify)
        } else {
            baaroqueFabledJob(by: path)
        }
    }
    
    static func sexagenarianLevelIadl(path: String, isVerify: Bool = false) {
        let vc = WildcardAacsViewController()
        fabricationLabialFabricant()?.navigationController?.pushViewController(vc, animated: true)
    }
    
    static func baaroqueFabledJob(by schemeStr: String) {
        let babacooteMapping = ReferentialManagedManager.callVacateHabdabs(from: schemeStr)
        ReferentialManagedManager.vaccinalApplicationCashaw(babacooteMapping)
    }
    
    private static func callVacateHabdabs(from string: String) -> (function: String?, parameters: [String: String]?) {
        let scheme = "app.dcatan/"
        guard let range = string.range(of: scheme) else {
            print("Scheme is not present in the string.")
            return (nil, nil)
        }
        let backwardParams = String(string[range.upperBound...])
        let components = backwardParams.components(separatedBy: "?")
        let modifierPart = components.first
        guard components.count > 1, let associatedString = components.last else {
            return (modifierPart, nil)
        }
        let naboberyComponents = associatedString.split(separator: "&")
        var parameters: [String: String] = [:]
        for component in naboberyComponents {
            let qandaharPair = component.split(separator: "=")
            if qandaharPair.count == 2, let key = qandaharPair.first, let value = qandaharPair.last {
                parameters[String(key)] = String(value)
            }
        }
        return (modifierPart, parameters)
    }
    
    private static func vaccinalApplicationCashaw(_ babacooteMapping: (function: String?, parameters: [String: String]?)) {
        let listStr = babacooteMapping.function
        let primaryValue = babacooteMapping.parameters?.first?.value ?? ""
        let kaddishCur = fabricationLabialFabricant()
        if listStr == "thinkingAreas" {
            kaddishCur?.tabBarController?.selectedIndex = 1
        } else if listStr == "himselfBlanket" {
            kaddishCur?.tabBarController?.selectedIndex = 0
        } else if listStr == "shirtingSouth" {
            kaddishCur?.navigationController?.pushViewController(NamedHighViewController(), animated: true)
        } else if listStr == "woodsHaving" {
            let whereOrder = XanthocarpousEqualityViewController()
            whereOrder.iaeaQandaharPlanarity()
            whereOrder.bitmapStr = primaryValue
            kaddishCur?.navigationController?.pushViewController(whereOrder, animated: true)
        } else if listStr == "terrainShoot" {
            let derivedEdge = CastingTapeViewController()
            derivedEdge.iaeaQandaharPlanarity()
            derivedEdge.babassuBidders = primaryValue
            kaddishCur?.navigationController?.pushViewController(derivedEdge, animated: true)
        } else if listStr == "fiddledDollars" {
            
        } else {
            
        }
    }
}
