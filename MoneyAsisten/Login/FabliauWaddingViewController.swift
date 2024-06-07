//
//  FabliauWaddingViewController.swift
//  Catatan
//
//  Created by apple on 2024/3/27.
//

import UIKit
import MBProgressHUD_WJExtension
import HandyJSON

class FabliauWaddingViewController: RaceIterativeViewController {
    
    var dackerTimer: Timer!
    var totalTime = 60
    
    lazy var rankView: TriggerBabaFakeView = {
        let rankView = TriggerBabaFakeView()
        return rankView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        view.addSubview(rankView)
        rankView.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
        rankView.block = { [weak self] in
            self?.dismiss(animated: true)
        }
        rankView.block1 = { [weak self] in
            self?.handlerDefinitionHaar()
        }
        rankView.block2 = { [weak self] in
            self?.benefitDelegateGabbart()
        }
        rankView.block3 = { [weak self] in
            let abc = UserDefaults.standard.object(forKey: APIBAERURL) as? String ?? ""
            var url: String = ""
            if abc.isEmpty {
                url = BASE_HTML_URL + "/nkimaFetch"
            }else {
                url = String(abc.dropLast(5)) + "/nkimaFetch"
            }
            self?.mutexInterprocessWord(url)
        }
    }
    
    func startTimer() {
        self.rankView.iaaBtn.isEnabled = false
        dackerTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    @objc func updateTime() {
        if totalTime > 0 {
            totalTime -= 1
            UIView.animate(withDuration: 0.25) {
                self.rankView.iaaBtn.snp.updateConstraints { make in
                    make.size.equalTo(CGSizeMake(35, 35))
                }
                self.rankView.layoutIfNeeded()
            } completion: { bool in
                self.rankView.iaaBtn.setTitle("\(self.totalTime)", for: .normal)
            }
        } else {
            listBestCache()
        }
    }
    
    func listBestCache() {
        dackerTimer.invalidate()
        self.rankView.iaaBtn.isEnabled = true
        self.rankView.iaaBtn.setTitle("Send code", for: .normal)
        UIView.animate(withDuration: 0.25) {
            self.rankView.iaaBtn.snp.updateConstraints { make in
                make.size.equalTo(CGSizeMake(106.pix(), 35.pix()))
            }
            self.rankView.layoutIfNeeded()
        }
        totalTime = 60
    }
    
    func handlerDefinitionHaar() {
        let aachenGrieving = rankView.macEmail.text!
        let nablusDict = ["grieving":aachenGrieving]
        addHudView()
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict as [String : Any], pageUrl: libranTravel, method: .post) { [weak self] model in
            let rabbanistAwareness = model.awareness
            let edges = model.edges
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                self?.startTimer()
            }
            self?.removeHudView()
            MBProgressHUD.wj_showPlainText(edges ?? "", view: nil)
        } errorBlock: { [weak self] error in
            self?.removeHudView()
        }
    }
    
    func benefitDelegateGabbart() {
        let aaronPostmaster = rankView.macEmail.text!
        let digestBadly = rankView.emailT1.text!
        let nablusDict = ["postmaster":aaronPostmaster,"badly":digestBadly]
        addHudView()
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: lifetimeSelfconfident, method: .post) { [weak self] model in
            let rabbanistAwareness = model.awareness
            let edges = model.edges
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                let hookHovered = model.hovered
                let rabbathModel = JSONDeserializer<HoveredModel>.deserializeFrom(dict: hookHovered)
                guard let rabbathModel = rabbathModel else { return }
                TabbinetFabricantLoginInfo.removeLoginInfo()
                TabbinetFabricantLoginInfo.travelingMedianFabliau(rabbathModel.seizes ?? "", rabbathModel.postmaster ?? "")
                self?.pacemakerLooseBabassu()
            }
            self?.removeHudView()
            MBProgressHUD.wj_showPlainText(edges!, view: nil)
        } errorBlock: { [weak self] error in
            self?.removeHudView()
        }
    }
    
    func pacemakerLooseBabassu() {
        let nablusDict: [String: Any] = [:]
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: sabangNecessary, method: .post) { baseModel in
            let rabbanistAwareness = baseModel.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                let nablusDict = ["cleaved":"aa"]
                zaffreCenter.post(name: NSNotification.Name(SET_ROOTVC), object: nil, userInfo: nablusDict)
            }
        } errorBlock: { error in
            zaffreCenter.post(name: NSNotification.Name(SET_ROOTVC), object: nil, userInfo: nablusDict)
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
