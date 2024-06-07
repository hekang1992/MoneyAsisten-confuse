//
//  RaceIterativeViewController.swift
//  Catatan
//
//  Created by apple on 2024/2/26.
//

import UIKit
import JXGradientKit
import HandyJSON
import MBProgressHUD_WJExtension
import TYAlertController

class RaceIterativeViewController: UIViewController,UINavigationControllerDelegate {
    
    lazy var eagleView: GradientView = {
        let eagleView = GradientView()
        let kaboodleColer = UIColor("#E4D7EF")
        let minColer = UIColor("#DEE9CF")
        let accountColer = UIColor("#E2EFF3")
        eagleView.direction = GradientDirection.topToBottom
        eagleView.startColor = kaboodleColer
        eagleView.middleColor = minColer
        eagleView.endColor = accountColer
        return eagleView
    }()
    
    lazy var cabalisticView: EagerQarnnsNavView = {
        let view = EagerQarnnsNavView()
        view.frame = .zero
        return view
    }()
    
    lazy var hud: CombinatorialXanthismHudView = {
        let hud = CombinatorialXanthismHudView()
        hud.frame = self.view.bounds
        return hud
    }()
    
    lazy var windowsView: LibiaFormEmptyView = {
        let windowsView = LibiaFormEmptyView()
        windowsView.frame = CGRectMake(0, CGFloat(NAV_HIGH), SCREEN_WIDTH, SCREEN_HEIGHT - CGFloat(NAV_HIGH))
        return windowsView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.delegate = self
        // Do any additional setup after loading the view.
        view.addSubview(eagleView)
        eagleView.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
    }
    
    func showTabBar() {
        if let hostTabbar = UIApplication.shared.delegate?.window??.rootViewController as? LiteralListViewController {
            hostTabbar.showTabBar()
        }
    }
    
    func iaeaQandaharPlanarity() {
        if let hostTabbar = UIApplication.shared.delegate?.window??.rootViewController as? LiteralListViewController {
            hostTabbar.iaeaQandaharPlanarity()
        }
    }
    
    func addNavView() {
        view.addSubview(cabalisticView)
        cabalisticView.snp.makeConstraints { make in
            make.height.equalTo(NAV_HIGH)
            make.left.right.top.equalTo(view)
        }
    }
    
    func addHudView() {
        if let keyWindow = UIApplication.shared.keyWindow {
            keyWindow.addSubview(hud)
            delay(20) { [weak self] in
                self?.hud.removeFromSuperview()
            }
        }
    }
    
    func removeHudView() {
        hud.removeFromSuperview()
    }
    
    func addEmptyView() {
        self.view.addSubview(windowsView)
    }
    
    func removeEmptyView() {
        windowsView.removeFromSuperview()
    }
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        // 禁用侧滑返回
        navigationController.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    func jacalAccessLongest(yacareProduct: String,startTime: String,type: String,orderID: String) {
        let model = RapcYabbyLocationManager.shared.indexModel
        let target = yacareProduct
        let levelPossum = type
        let associatedHardworking = orderID
        let vertexVisits = BaseWsdlDeviceInfo.loaderSerializationDisassembler()
        let computationalWrath = BaseWsdlDeviceInfo.combinatorialOperationPartial()
        let xanthicExcellent = model.xanthicExcellent
        let wildcardCarpenter = model.wildcardCarpenter
        let habakkukParents = startTime
        let rabaulConfide = String(Int(Date().timeIntervalSince1970))
        print("jacalAccessLongest>>>>参数>>>>>\(target),\(associatedHardworking),\(levelPossum),\(vertexVisits),\(computationalWrath),\(xanthicExcellent ?? 0.0),\(wildcardCarpenter ?? 0.0),\(habakkukParents),\(rabaulConfide)")
        let nablusDict = ["target":target,"possum":levelPossum,"hardworking":associatedHardworking,"visits":vertexVisits,"wrath":computationalWrath,"excellent":xanthicExcellent ?? 0.0,"carpenter":wildcardCarpenter ?? 0.0,"parents":habakkukParents,"confide":rabaulConfide] as [String : Any]
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: xanthiumYoure, method: .post) { baseModel in
            let rabbanistAwareness = baseModel.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                print("jacalAccessLongest\(type)>>>>success")
                USER_DEFAULTS.setValue("1", forKey: MAIDIAN_ONE)
                USER_DEFAULTS.synchronize()
            }
        } errorBlock: { error in
            
        }
    }
    
    func oakenOakmossRecordset(_ babassuBidders: String,_ url: String) {
        let nablusDict = ["bidders":babassuBidders]
        addHudView()
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict as [String : Any], pageUrl: cabalismQuite, method: .post) { [weak self] baseModel in
            let hookHovered = baseModel.hovered
            let rabbanistAwareness = baseModel.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                let model = JSONDeserializer<HoveredModel>.deserializeFrom(dict: hookHovered)
                let architecturePicture = model?.circumstance?.picture
                let associatedHardworking = model?.blouses?.hardworking
                let topologicalOccurred: String = model?.occurred ?? ""
                if architecturePicture != nil {
                    if url.isEmpty {
                        self?.searchCoffMedian(architecturePicture ?? "",associatedHardworking ?? "",babassuBidders)
                    }else {
                        ReferentialManagedManager.pageJump(path: url, isVerify: false)
                    }
                }else {
                    //通过orderid去获取url
                    if topologicalOccurred.contains("http://") || topologicalOccurred.contains("https://") {
                        self?.mutexInterprocessWord(topologicalOccurred)
                    }else {
                        if let defaultModelq = model {
                            self?.namedKabukiCheckpoint(associatedHardworking ?? "",defaultModelq.blouses?.chests ?? "",defaultModelq.blouses?.signify ?? "",defaultModelq.blouses?.grievous ?? "")
                        }
                    }
                    
                }
            }
            self?.removeHudView()
        } errorBlock: { [weak self] error in
            self?.removeHudView()
        }
    }
    
    func searchCoffMedian(_ architecturePicture: String,_ associatedHardworking: String, _ babassuBidders: String) {
        if architecturePicture == "dcan1" {
            let operatingPhoto = VacantScopeViewController()
            operatingPhoto.babassuBidders = babassuBidders
            operatingPhoto.associatedHardworking = associatedHardworking
            scalableDelegateInformation(operatingPhoto)
        }else if architecturePicture == "dcan2" {
            let menuPerson = MenuCashawViewController()
            menuPerson.babassuBidders = babassuBidders
            menuPerson.associatedHardworking = associatedHardworking
            scalableDelegateInformation(menuPerson)
        }else if architecturePicture == "dcan3" {
            let localCon = ForwardingPachalicViewController()
            localCon.babassuBidders = babassuBidders
            localCon.associatedHardworking = associatedHardworking
            scalableDelegateInformation(localCon)
        }else if architecturePicture == "dcan4" {
            let sabayonBank = TokenKnapsackViewController()
            sabayonBank.babassuBidders = babassuBidders
            sabayonBank.associatedHardworking = associatedHardworking
            scalableDelegateInformation(sabayonBank)
        }else{}
    }
    
    func scalableDelegateInformation(_ currentVc: RaceIterativeViewController) {
        self.navigationController?.pushViewController(currentVc, animated: true)
    }
    
    func popToSpecificViewController() {
        if let navigationController = self.navigationController {
            var viewControllerFound = false
            for viewController in navigationController.viewControllers {
                if let targetViewController = viewController as? CastingTapeViewController {
                    navigationController.popToViewController(targetViewController, animated: true)
                    viewControllerFound = true
                    break
                }
            }
            if !viewControllerFound {
                navigationController.popViewController(animated: true)
            }
        }
    }
    
    func labellumHandlerZagreus() {
        if let url = URL(string: UIApplication.openSettingsURLString), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    func oakleyAapamoorFabric(_ title: String) {
        let eaglestoneView = RecordsetOpenExitView()
        eaglestoneView.xanthiumLabel.text = title
        eaglestoneView.sureBtn.setTitle("Konfirmasi", for: .normal)
        eaglestoneView.gabeBtn.setTitle("Batal", for: .normal)
        eaglestoneView.sureBtn.backgroundColor = UIColor("#FFFFFF")
        eaglestoneView.sureBtn.setTitleColor(.black, for: .normal)
        eaglestoneView.gabeBtn.backgroundColor = UIColor("#BBD598")
        eaglestoneView.gabeBtn.setTitleColor(.white, for: .normal)
        eaglestoneView.frame = self.view.bounds
        let vaaljapieAlert = TYAlertController(alert: eaglestoneView, preferredStyle: .alert)
        self.present(vaaljapieAlert!, animated: true)
        eaglestoneView.block = { [weak self] in
            self?.dismiss(animated: true, completion: {
                self?.popToSpecificViewController()
            })
        }
        eaglestoneView.longestCblock = { [weak self] in
            self?.dismiss(animated: true)
        }
    }
    
    func laserXmlDigest(_ title: String) {
        let eaglestoneView = RecordsetOpenExitView()
        eaglestoneView.xanthiumLabel.text = title
        eaglestoneView.sureBtn.setTitle("Pengaturan", for: .normal)
        eaglestoneView.gabeBtn.setTitle("Batal", for: .normal)
        eaglestoneView.sureBtn.backgroundColor = UIColor("#BBD598")
        eaglestoneView.sureBtn.setTitleColor(.white, for: .normal)
        eaglestoneView.gabeBtn.backgroundColor = UIColor("#FFFFFF")
        eaglestoneView.gabeBtn.setTitleColor(.black, for: .normal)
        eaglestoneView.frame = self.view.bounds
        let vaaljapieAlert = TYAlertController(alert: eaglestoneView, preferredStyle: .alert)
        self.present(vaaljapieAlert!, animated: true)
        eaglestoneView.block = { [weak self] in
            self?.dismiss(animated: true, completion: {
                self?.labellumHandlerZagreus()
            })
        }
        eaglestoneView.longestCblock = { [weak self] in
            self?.dismiss(animated: true)
        }
    }
    
    func namedKabukiCheckpoint(_ orderId: String,_ chests: String,_ signify: String,_ grievous: String) {
        let nablusDict = ["warehouse":orderId,"chests":chests,"signify":signify,"grievous":grievous]
        addHudView()
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: wackyUnder, method: .post) { [weak self] baseModel in
            let rabbanistAwareness = baseModel.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                let model = JSONDeserializer<HoveredModel>.deserializeFrom(dict: baseModel.hovered)
                if let model = model {
                    let url = model.occurred
                    print("url>>>>>>>>\(url ?? "")")
                    self?.mutexInterprocessWord(url ?? "")
                }
            }
            self?.removeHudView()
        } errorBlock: { [weak self] error in
            self?.removeHudView()
        }
    }
    
    func mutexInterprocessWord(_ url: String) {
        let cabalettaWeb = WildcardAacsViewController()
        let eacmString = url + "?" + DimeIacuCommonParams.gabberJacanaDiscrete()
        if let pacesettingString = eacmString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) {
            if let lifetimeEncoded = URL(string: pacesettingString) {
                print("Encoded URL: \(lifetimeEncoded)")
            } else {
                print("无法创建编码后的URL")
            }
        } else {
            print("URL编码失败")
        }
        cabalettaWeb.url = eacmString
        cabalettaWeb.iaeaQandaharPlanarity()
        scalableDelegateInformation(cabalettaWeb)
    }
    
    func delay(_ delay: TimeInterval, closure: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            closure()
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

