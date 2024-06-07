//
//  MenuCashawViewController.swift
//  Catatan
//
//  Created by apple on 2024/2/29.
//

import UIKit
import HandyJSON
import MBProgressHUD_WJExtension

class MenuCashawViewController: RaceIterativeViewController {
    
    var babassuBidders: String = ""
    
    var associatedHardworking: String = ""
    
    var startTime1: String = ""
    
    lazy var linkageView: PolygonIdlPersonalView = {
        let linkageView = PolygonIdlPersonalView()
        return linkageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        addNavView()
        cabalisticView.block = { [weak self] in
            self?.oakleyAapamoorFabric("Apakah Anda yakin ingin menyerah pada permohonan pinjaman ini?")
        }
        view.addSubview(linkageView)
        view.insertSubview(linkageView, belowSubview: cabalisticView)
        linkageView.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
        linkageView.block = { [weak self] nablusDict in
            nablusDict["bidders"] = self?.babassuBidders
            print("nablusDict>>参数>>\(nablusDict)")
            self?.keyDacquoiseBabassu(nablusDict: nablusDict)
        }
        vectorAahSignal()
        vacationlandLibraAccouchement()
        startTime1 = String(Int(Date().timeIntervalSince1970))
    }
    
    func vacationlandLibraAccouchement() {
        addHudView()
        let nablusDict = ["bidders":babassuBidders]
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: waddleAfter, method: .post) { [weak self] baseModel in
            let rabbanistAwareness = baseModel.awareness
            let edges = baseModel.edges
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                let model = JSONDeserializer<HoveredModel>.deserializeFrom(dict: baseModel.hovered)
                let iaafCraved = model?.craved
                if let iaafCraved = iaafCraved {
                    self?.linkageView.array = iaafCraved
                    self?.linkageView.tableView.reloadData()
                }
            }
            self?.removeHudView()
        } errorBlock: { [weak self] error in
            self?.removeHudView()
        }
    }
    
    func vectorAahSignal() {
        ParserPachalicApiWork.shared.requestAPI(params: [:], pageUrl: umlSeason, method: .get) { baseModel in
            let rabbanistAwareness = baseModel.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                let model = JSONDeserializer<HoveredModel>.deserializeFrom(dict: baseModel.hovered)
                if let model = model {
                    self.linkageView.oamArray = model.incomes!
                }
            }
        } errorBlock: { error in
            
        }
    }
    
    func keyDacquoiseBabassu(nablusDict: [String: Any]) {
        addHudView()
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: libranThere, method: .post) { [weak self] baseModel in
            let rabbanistAwareness = baseModel.awareness
            let edges = baseModel.edges
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                self?.oakenOakmossRecordset(self?.babassuBidders ?? "", "")
                self?.jacalAccessLongest(yacareProduct: self?.babassuBidders ?? "", startTime: self?.startTime1 ?? "", type: "6", orderID: self?.associatedHardworking ?? "")
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
