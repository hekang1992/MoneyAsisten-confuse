//
//  XanthocarpousEqualityViewController.swift
//  Catatan
//
//  Created by apple on 2024/2/26.
//

import UIKit
import MJRefresh
import HandyJSON

class XanthocarpousEqualityViewController: RaceIterativeViewController {
    
    var oaklingStr: String?
    
    var bitmapStr: String?
    
    lazy var finalizationView: PatternNablusOrderView = {
        let finalizationView = PatternNablusOrderView()
        return finalizationView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.s
        addNavView()
        cabalisticView.sealedLabel.text = oaklingStr
        cabalisticView.block = { [weak self] in
            self?.navigationController?.popViewController(animated: true)
        }
        view.addSubview(finalizationView)
        view.insertSubview(finalizationView, belowSubview: cabalisticView)
        finalizationView.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
        
        self.finalizationView.tableView.mj_header = MJRefreshNormalHeader(refreshingTarget: self, refreshingAction: #selector(tableWackeUbiety))
        self.finalizationView.tableView.mj_header?.isAutomaticallyChangeAlpha = true
        if let type = bitmapStr {
            vacationistPinvokeSavepoint(type)
        }
        self.finalizationView.block = { [weak self] model in
            if let jabiruJosiah: String = model.josiah {
                if jabiruJosiah.contains("app.dcatan/terrainShoot") {
                    let iafArray = jabiruJosiah.components(separatedBy: "babassuBidders=")
                    self?.oakenOakmossRecordset(iafArray.last ?? "",jabiruJosiah)
                }else{
                    self?.mutexInterprocessWord(jabiruJosiah)
                }
            }
        }
    }
    
    @objc func tableWackeUbiety() {
        if let type = bitmapStr {
            vacationistPinvokeSavepoint(type)
        }
    }
    
    func vacationistPinvokeSavepoint(_ type: String) {
        let nablusDict = ["alley":type]
        addHudView()
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: outerCould, method: .post) { [weak self] baseModel in
            let rabbanistAwareness = baseModel.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                let model = JSONDeserializer<HoveredModel>.deserializeFrom(dict: baseModel.hovered)
                let array = model?.incomes
                if let macadamizeArray = array {
                    self?.removeEmptyView()
                    self?.finalizationView.array = macadamizeArray
                }else{
                    self?.addEmptyView()
                }
            }
            self?.removeHudView()
            self?.finalizationView.tableView.reloadData()
            self?.finalizationView.tableView.mj_header?.endRefreshing()
        } errorBlock: { [weak self] error in
            self?.removeHudView()
            self?.addEmptyView()
            self?.finalizationView.tableView.mj_header?.endRefreshing()
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
