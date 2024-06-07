//
//  MaintainingAapamoorUserFactory.swift
//  Catatan
//
//  Created by apple on 2024/3/4.
//

import UIKit

class MaintainingAapamoorUserFactory: NSObject {

    static func heapSignalRabbanite() -> String {
        let token: String? = USER_DEFAULTS.value(forKey: LOGIN_SEIZES) as? String
        return token ?? ""
    }

    static func labialisationTabascoBug(topViewController : UIViewController) -> Bool {
        if heapSignalRabbanite().count == 0 {
            let isolationLogin: NamedHighViewController = NamedHighViewController()
            let nav: UbicationWadableViewController = UbicationWadableViewController(rootViewController: isolationLogin)
            nav.modalPresentationStyle = .fullScreen
            topViewController.present(nav, animated: true)
            return false
        }else {
            return true
        }
    }
    
}
