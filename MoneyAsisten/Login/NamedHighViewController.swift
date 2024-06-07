//
//  NamedHighViewController.swift
//  Catatan
//
//  Created by apple on 2024/2/26.
//

import UIKit
import MBProgressHUD_WJExtension
import HandyJSON

class NamedHighViewController: RaceIterativeViewController {
    
    var timer: Timer?
    
    var jabiruSeconds = 60
    
    var btn: UIButton?

    lazy var rankView: BabaLibraireLoginView = {
        let rankView = BabaLibraireLoginView(frame: CGRect.zero)
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
            self?.baalizeRemoteDacoit()
        }
        rankView.block1 = { [weak self] btn in
            self?.btn = btn
            self?.operatingMultidimensionalTabaret(btn)
        }
        rankView.block2 = { [weak self] in
            self?.benefitDelegateGabbart()
        }
    }
    
    func baalizeRemoteDacoit() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func operatingMultidimensionalTabaret(_ btn: UIButton) {
        let macEmail: String = rankView.macEmail.text ?? ""
        if macEmail.isEmpty {
            MBProgressHUD.wj_showPlainText("Masukkan nomor telepon anda.", view: nil)
        }else{
            self.handlerDefinitionHaar()
        }
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if jabiruSeconds > 0 {
            jabiruSeconds -= 1
            rankView.oakButton.isEnabled = false
            rankView.oakButton.setTitle("Resend(\(self.jabiruSeconds))", for: .normal)
        } else {
            stopTimer()
            rankView.oakButton.isEnabled = true
            rankView.oakButton.setTitle("Kirim kode verifikasi", for: .normal)
        }
    }
    
    func stopTimer() {
        timer?.invalidate()
        timer = nil
        jabiruSeconds = 60
    }
    
    func handlerDefinitionHaar() {
        let aachenGrieving = rankView.macEmail.text!
        let nablusDict = ["grieving":aachenGrieving]
        addHudView()
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict as [String : Any], pageUrl: libranTravel, method: .post) { [weak self] model in
            let rabbanistAwareness = model.awareness
            let edges = model.edges
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                self?.btn!.isEnabled = false
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
        let digestBadly = rankView.dacquoisePass.text!
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
                let nablusDict = ["cleaved":"uu"]
                zaffreCenter.post(name: NSNotification.Name(SET_ROOTVC), object: nil, userInfo: nablusDict)
            }
            self?.removeHudView()
            MBProgressHUD.wj_showPlainText(edges!, view: nil)
        } errorBlock: { [weak self] error in
            self?.removeHudView()
        }
    }
    
}
