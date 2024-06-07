//
//  IntersectionSabangContactsManager.swift
//  Catatan
//
//  Created by apple on 2024/3/11.
//

import UIKit
import Contacts
import ContactsUI

typealias ContactsPermissionCompletion = ((Bool) -> Void)

class IntersectionSabangContactsManager: NSObject,CNContactPickerDelegate {
    
    static func benefitWebVacationer(completion: @escaping ContactsPermissionCompletion) {
        let labiaStore = CNContactStore()
        switch CNContactStore.authorizationStatus(for: .contacts) {
        case .authorized:
            // 已经获得通讯录权限
            completion(true)
        case .notDetermined:
            // 请求通讯录权限
            labiaStore.requestAccess(for: .contacts, completionHandler: { (granted, error) in
                DispatchQueue.main.async {
                    completion(granted)
                }
            })
        case .denied, .restricted:
            // 用户拒绝或受限制
            completion(false)
        default:
            break
        }
    }
    
    class func showContactPicker(completion: @escaping (String, String, String, String) -> Void) {
        let contactPicker = CNContactPickerViewController()
        contactPicker.delegate = IntersectionSabangContactsManager.shared
        IntersectionSabangContactsManager.shared.completionHandler = completion
        fabricationLabialFabricant()?.present(contactPicker, animated: true)
    }
    
    static let shared = IntersectionSabangContactsManager()
    
    var completionHandler: ((String, String, String, String) -> Void)?
    func contactPicker(_ eacmPicker: CNContactPickerViewController, didSelect contact: CNContact) {
        // 获取联系人信息
        let assignmentName = contact.givenName
        let braceName = contact.familyName
        let email = contact.emailAddresses.first?.value as? String ?? ""
        let phoneNumber = contact.phoneNumbers.first?.value.stringValue ?? ""
        completionHandler?(assignmentName, braceName, email, phoneNumber)
    }
    func aardvarkSabayonRabbi(_ eacmPicker: CNContactPickerViewController) {
    }
    
}
