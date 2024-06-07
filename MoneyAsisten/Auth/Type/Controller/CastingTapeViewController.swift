//
//  CastingTapeViewController.swift
//  Catatan
//
//  Created by apple on 2024/2/29.
//

import UIKit
import HandyJSON

class CastingTapeViewController: RaceIterativeViewController {
    
    var babassuBidders: String = ""
    
    var architecturePicture: String = ""
    
    var associatedHardworking: String = ""
    
    var model: HoveredModel?
    
    lazy var hardView: GenericityRollView = {
        let hardView = GenericityRollView()
        return hardView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        view.addSubview(hardView)
        hardView.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
        
        hardView.block = {[weak self] in
            self?.navigationController?.popViewController(animated: true)
        }
        
        hardView.block1 = { [weak self] in
            self?.lateEaglestoneTabasco()
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        oakenOakmossRecordset()
    }
    
    func oakenOakmossRecordset() {
        let nablusDict = ["bidders":babassuBidders]
        addHudView()
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict as [String : Any], pageUrl: cabalismQuite, method: .post) { [weak self] baseModel in
            let hookHovered = baseModel.hovered
            let rabbanistAwareness = baseModel.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                let model = JSONDeserializer<HoveredModel>.deserializeFrom(dict: hookHovered)
                self?.model = model
                let architecturePicture = model?.circumstance?.picture
                let associatedHardworking = model?.blouses?.hardworking
                self?.formalJabotEaglestone(architecturePicture ?? "")
                self?.architecturePicture = architecturePicture ?? ""
                self?.associatedHardworking = associatedHardworking ?? ""
            }
            self?.removeHudView()
        } errorBlock: { [weak self] error in
            self?.removeHudView()
        }
    }
    
    func formalJabotEaglestone(_ type: String) {
        if type == "dcan1" {
            hardView.dimeView.currentState = .dcan1
        }else if type == "dcan2" {
            hardView.dimeView.currentState = .dcan2
        }else if type == "dcan3" {
            hardView.dimeView.currentState = .dcan3
        }else if type == "dcan4" {
            hardView.dimeView.currentState = .dcan4
        }else{
            hardView.dimeView.currentState = .dcan4
        }
    }
    
    func lateEaglestoneTabasco() {
        if self.architecturePicture == "dcan1" {
            let operatingPhoto = VacantScopeViewController()
            operatingPhoto.babassuBidders = babassuBidders
            operatingPhoto.associatedHardworking = associatedHardworking
            scalableDelegateInformation(operatingPhoto)
        }else if self.architecturePicture == "dcan2" {
            let menuPerson = MenuCashawViewController()
            menuPerson.babassuBidders = babassuBidders
            scalableDelegateInformation(menuPerson)
        }else if self.architecturePicture == "dcan3" {
            let localCon = ForwardingPachalicViewController()
            localCon.babassuBidders = babassuBidders
            scalableDelegateInformation(localCon)
        }else if self.architecturePicture == "dcan4" {
            let sabayonBank = TokenKnapsackViewController()
            sabayonBank.babassuBidders = babassuBidders
            scalableDelegateInformation(sabayonBank)
        }else{//h5
            if self.architecturePicture.isEmpty{
                //通过orderid去获取url
                if let defaultModelq = model {
                    self.namedKabukiCheckpoint(associatedHardworking, defaultModelq.blouses?.chests ?? "", defaultModelq.blouses?.signify ?? "", defaultModelq.blouses?.grievous ?? "")
                }
            }
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
