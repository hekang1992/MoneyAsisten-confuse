//
//  AarnetClassificationViewController.swift
//  Catatan
//
//  Created by apple on 2024/3/27.
//

import UIKit

class AarnetClassificationViewController: RaceIterativeViewController {
    
    var formStr: String = ""
    
    var index: Int?
    
    var model: IncomesModel?
    
    lazy var bgView1: UIView = {
        let eagleView = UIView()
        eagleView.backgroundColor = UIColor("#FFFFFF")
        return eagleView
    }()
    
    lazy var listView: JabotOakleyListView = {
        let listView = JabotOakleyListView()
        return listView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        addNavView()
        if formStr.contains("Other") {
            cabalisticView.sealedLabel.text = "Other"
        }else {
            cabalisticView.sealedLabel.text = formStr
        }
        cabalisticView.block = { [weak self] in
            self?.navigationController?.popViewController(animated: true)
        }
        view.insertSubview(bgView1, belowSubview: cabalisticView)
        bgView1.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
        bgView1.addSubview(listView)
        listView.snp.makeConstraints { make in
            make.edges.equalTo(bgView1).inset(UIEdgeInsets(top: CGFloat(NAV_HIGH), left: 0, bottom: 0, right: 0))
        }
        listView.model = model
        if formStr == "Fund" || formStr == "Bank Wealth" || formStr == "Insurance" || formStr == "Other1"  {
            listView.currentState = .fund1
            listView.bitmapStr = formStr
        }else if formStr == "Credit Card" {
            listView.currentState = .card1
            listView.bitmapStr = formStr
        }else if formStr == "Loan" || formStr == "Payment" || formStr == "Other3" {
            listView.currentState = .card2
            listView.bitmapStr = formStr
        }else if formStr == "Cash" || formStr == "Other2" {
            listView.currentState = .cash1
            listView.bitmapStr = formStr
        }else if formStr == "Debit Card" || formStr == "Credit Limit" {
            listView.currentState = .cash2
            listView.bitmapStr = formStr
        }else {
            listView.currentState = .car1
            listView.bitmapStr = formStr
        }
        listView.refreshBlock = { [weak self] nablusDict in
            print("nablusDict>>>>>>>>>>\(nablusDict)")
            if self?.model?.enfolding == nil {
                self?.babacooteBraceInterprocess(nablusDict)
            }else {
                self?.zahalBinaryApplication(nablusDict)
            }
        }
    }
    
    //添加投资
    func babacooteBraceInterprocess(_ nablusDict: [String: Any]) {
        var uarDict: [String: Any] = [:]
        if formStr == "Fund" {
            uarDict["school"] = "1"
            uarDict["flying"] = "1"
        }
        if formStr == "Bank Wealth" {
            uarDict["school"] = "1"
            uarDict["flying"] = "2"
        }
        if formStr == "Insurance" {
            uarDict["school"] = "1"
            uarDict["flying"] = "3"
        }
        if formStr == "Other1" {
            uarDict["school"] = "1"
            uarDict["flying"] = "4"
        }
        if formStr == "Credit Card" {
            uarDict["school"] = "2"
            uarDict["flying"] = "1"
        }
        if formStr == "Loan" {
            uarDict["school"] = "2"
            uarDict["flying"] = "2"
        }
        if formStr == "Payment" {
            uarDict["school"] = "2"
            uarDict["flying"] = "3"
        }
        if formStr == "Other2" {
            uarDict["school"] = "3"
            uarDict["flying"] = "4"
        }
        if formStr == "Cash" {
            uarDict["school"] = "3"
            uarDict["flying"] = "1"
        }
        if formStr == "Debit Card" {
            uarDict["school"] = "3"
            uarDict["flying"] = "2"
        }
        if formStr == "Credit Limit" {
            uarDict["school"] = "3"
            uarDict["flying"] = "3"
        }
        if formStr == "Other3" {
            uarDict["school"] = "2"
            uarDict["flying"] = "4"
        }
        if formStr == "Car" {
            uarDict["school"] = "4"
            uarDict["flying"] = "1"
        }
        if formStr == "House" {
            uarDict["school"] = "4"
            uarDict["flying"] = "2"
        }
        if formStr == "Equipment" {
            uarDict["school"] = "4"
            uarDict["flying"] = "3"
        }
        if formStr == "Other4" {
            uarDict["school"] = "4"
            uarDict["flying"] = "4"
        }
        uarDict.merge(nablusDict) { (_, new) in new }
        addHudView()
        ParserPachalicApiWork.shared.requestAPI(params: uarDict, pageUrl: haarlemKnapsack, method: .post) { [weak self] baseModel in
            let rabbanistAwareness = baseModel.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                self?.navigationController?.popToRootViewController(animated: true)
            }
            self?.removeHudView()
        } errorBlock: { [weak self] error in
            self?.removeHudView()
        }
        
    }
    
    //编辑投资
    func zahalBinaryApplication(_ nablusDict: [String: Any]) {
        addHudView()
        var uarDict: [String: Any] = [:]
        uarDict["school"] = model?.school
        uarDict["flying"] = model?.flying
        uarDict["scars"] = model?.enfolding
        uarDict.merge(nablusDict) { (_, new) in new }
        ParserPachalicApiWork.shared.requestAPI(params: uarDict, pageUrl: nablusAfter, method: .post) { [weak self] baseModel in
            let rabbanistAwareness = baseModel.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                self?.navigationController?.popToRootViewController(animated: true)
            }
            self?.removeHudView()
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
