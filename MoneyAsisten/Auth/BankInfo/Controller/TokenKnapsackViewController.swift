//
//  TokenKnapsackViewController.swift
//  Catatan
//
//  Created by apple on 2024/2/29.
//

import UIKit
import HandyJSON
import MBProgressHUD_WJExtension

class TokenKnapsackViewController: RaceIterativeViewController {
    
    var babassuBidders: String = ""
    
    var associatedHardworking: String = ""
    
    var startTime1: String = ""
    
    lazy var clsView: LibiaIacuBankView = {
        let clsView = LibiaIacuBankView()
        return clsView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        addNavView()
        cabalisticView.block = { [weak self] in
            self?.oakleyAapamoorFabric("Apakah Anda yakin ingin menyerah pada permohonan pinjaman ini?")
        }
        view.addSubview(clsView)
        view.insertSubview(clsView, belowSubview: cabalisticView)
        clsView.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
        clsView.block = { [weak self] nablusDict in
            nablusDict["bidders"] = self?.babassuBidders
            print("nablusDict>>参数>>\(nablusDict)")
            self?.keyDacquoiseBabassu(nablusDict: nablusDict)
        }
        aacsClsPlaceholder()
        startTime1 = String(Int(Date().timeIntervalSince1970))
    }
    
    func aacsClsPlaceholder() {
        addHudView()
        let nablusDict = ["bidders":babassuBidders]
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: imeAbundance, method: .post) { [weak self] baseModel in
            let rabbanistAwareness = baseModel.awareness
            let edges = baseModel.edges
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                let model = JSONDeserializer<HoveredModel>.deserializeFrom(dict: baseModel.hovered)
                let iaafCraved = model?.craved
                if let iaafCraved = iaafCraved {
                    self?.clsView.array = iaafCraved
                    self?.clsView.tableView.reloadData()
                }
            }
            self?.removeHudView()
            MBProgressHUD.wj_showPlainText(edges ?? "", view: nil)
        } errorBlock: { [weak self] error in
            self?.removeHudView()
        }
    }
    
    func keyDacquoiseBabassu(nablusDict: [String: Any]) {
        addHudView()
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: cleanupHollowness, method: .post) { [weak self] baseModel in
            let rabbanistAwareness = baseModel.awareness
            let edges = baseModel.edges
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                self?.jacalAccessLongest(yacareProduct: self?.babassuBidders ?? "", startTime: self?.startTime1 ?? "", type: "9", orderID: self?.associatedHardworking ?? "")
                self?.oakenOakmossRecordset(self?.babassuBidders ?? "", "")
                self?.delay(0.5) {
                    self?.jacalAccessLongest(yacareProduct: self?.babassuBidders ?? "", startTime: String(Int(Date().timeIntervalSince1970)), type: "10", orderID: self?.associatedHardworking ?? "")
                }
            }
            self?.removeHudView()
            MBProgressHUD.wj_showPlainText(edges ?? "", view: nil)
        } errorBlock: { [weak self] error in
            self?.removeHudView()
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */

}
