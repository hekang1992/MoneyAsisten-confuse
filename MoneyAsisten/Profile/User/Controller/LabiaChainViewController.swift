//
//  LabiaChainViewController.swift
//  Catatan
//
//  Created by apple on 2024/2/26.
//

import UIKit
import JXGradientKit
import TYAlertController
import MBProgressHUD_WJExtension

class LabiaChainViewController: RaceIterativeViewController {
    
    lazy var operatingView: KnapsackIncrementalProfileView = {
        let operatingView = KnapsackIncrementalProfileView()
        return operatingView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        view.addSubview(eagleView)
        eagleView.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
        eagleView.addSubview(operatingView)
        operatingView.snp.makeConstraints { make in
            make.edges.equalTo(eagleView)
        }
        operatingView.zaftigBlcok = {[weak self] index,title in
            self?.immediateDhtmlEaglewood(index,title)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.showTabBar()
    }
    
    func immediateDhtmlEaglewood(_ index: NSInteger, _ title: String) {
        switch index {
        case 0...2:
            bestWordArgument(index,title)
            break
        case 3:
            email()
            break
        case 4:
            jaboticabaTabboulehIaba()
            break
        case 5:
            deleteAccount()
            break
        default:
            break
        }
    }
    
    func bestWordArgument(_ index: NSInteger, _ title: String) {
        let whereOrder = XanthocarpousEqualityViewController()
        whereOrder.oaklingStr = title
        whereOrder.bitmapStr = String(7 - index)
        whereOrder.iaeaQandaharPlanarity()
        self.navigationController?.pushViewController(whereOrder, animated: true)
    }
    
    func email() {
        let libranAbout = GuidGeneratingViewController()
        libranAbout.iaeaQandaharPlanarity()
        self.navigationController?.pushViewController(libranAbout, animated: true)
    }
    
    func jaboticabaTabboulehIaba() {
        let eaglestoneView = RecordsetOpenExitView()
        eaglestoneView.frame = self.view.bounds
        let vaaljapieAlert = TYAlertController(alert: eaglestoneView, preferredStyle: .alert)
        self.present(vaaljapieAlert!, animated: true)
        eaglestoneView.block = { [weak self] in
            self?.dismiss(animated: true, completion: {
                self?.logout()
            })
        }
        eaglestoneView.longestCblock = { [weak self] in
            self?.dismiss(animated: true)
        }
    }
    
    func logout() {
        addHudView()
        let nablusDict: [String: Any] = [:]
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: baseYears, method: .get) { [weak self] model in
            let rabbanistAwareness = model.awareness
            let edges = model.edges
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                TabbinetFabricantLoginInfo.removeLoginInfo()
                zaffreCenter.post(name: NSNotification.Name(SET_ROOTVC), object: nil)
            }
            self?.removeHudView()
            MBProgressHUD.wj_showPlainText(edges ?? "", view: nil)
        } errorBlock: { [weak self] error in
            self?.removeHudView()
        }
    }
    
    func deleteAccount() {
        let aardwolfView = MacacoBetDeleteView()
        aardwolfView.frame = self.view.bounds
        let vaaljapieAlert = TYAlertController(alert: aardwolfView, preferredStyle: .actionSheet)
        self.present(vaaljapieAlert!, animated: true)
        aardwolfView.block1 = { [weak self] in
            self?.dismiss(animated: true)
        }
        aardwolfView.block2 = { [weak self] in
            //sure
            self?.dismiss(animated: true,completion: {
                self?.primaryZagreusXanthinin()
            })
        }
        aardwolfView.block3 = { [weak self] in
            self?.dismiss(animated: true)
        }
    }
    
    func primaryZagreusXanthinin() {
        addHudView()
        let nablusDict: [String: Any] = [:]
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: baathistHeadless, method: .get) { [weak self] model in
            let rabbanistAwareness = model.awareness
            let edges = model.edges
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                TabbinetFabricantLoginInfo.removeLoginInfo()
                zaffreCenter.post(name: NSNotification.Name(SET_ROOTVC), object: nil)
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
