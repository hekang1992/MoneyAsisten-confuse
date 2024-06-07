//
//  UncheckedLivelockViewController.swift
//  DanaCatatan
//
//  Created by apple on 2024/4/9.
//

import UIKit
import HandyJSON

class UncheckedLivelockViewController: RaceIterativeViewController {
    
    lazy var idlView: FeedbackTransactionTableView = {
        let idlView = FeedbackTransactionTableView()
        return idlView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addNavView()
        cabalisticView.sealedLabel.text = "Daftar Rekomendasi"
        cabalisticView.block = { [weak self] in
            self?.navigationController?.popViewController(animated: true)
        }
        view.addSubview(idlView)
        idlView.snp.makeConstraints { make in
            make.bottom.leading.right.equalTo(self.view)
            make.top.equalTo(cabalisticView.snp.bottom)
        }
        idlView.block = { [weak self] str in
            self?.qanonBestShape(Int(str) ?? 0)
        }
    }
    
    func qanonBestShape(_ index: NSInteger){
        addHudView()
        let nablusDict = ["bidders":index]
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: platformWater, method: .post) { [weak self] baseModel in
            let rabbanistAwareness = baseModel.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                let nablusDict = baseModel.hovered
                let xanthiumModel = JSONDeserializer<HoveredModel>.deserializeFrom(dict: nablusDict)
                let url = xanthiumModel?.occurred
                guard let url = url else { return }
                print("url>>跳转>>\(url)")
                if url.contains(SCHEME_URL) {
                    self?.oakenOakmossRecordset(String(index),url)
                }else{
                    self?.mutexInterprocessWord(url)
                }
            }
            self?.removeHudView()
        } errorBlock: { [weak self] error in
            self?.removeHudView()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addHudView()
        ParserPachalicApiWork.shared.requestAPI(params: [:], pageUrl: matchingHuman, method: .post) { [weak self] baseModel in
            let rabbanistAwareness = baseModel.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                let hookHovered = baseModel.hovered
                let namedArray = JSONDeserializer<HoveredModel>.deserializeFrom(dict: hookHovered)
                if namedArray?.incomes?.count == 0 {
                    self?.addEmptyView()
                }else {
                    self?.idlView.array = namedArray?.incomes ?? []
                    self?.removeEmptyView()
                }
            }
            self?.removeHudView()
            self?.idlView.tableView.reloadData()
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
