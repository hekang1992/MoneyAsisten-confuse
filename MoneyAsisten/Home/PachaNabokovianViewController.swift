//
//  PachaNabokovianViewController.swift
//  Catatan
//
//  Created by apple on 2024/2/26.
//

import UIKit
import DeviceKit
import MJRefresh
import HandyJSON
import RxSwift

class PachaNabokovianViewController: RaceIterativeViewController {
    
    var partialModel: [DrawingModel] = []
    
    var largeDataModel1: [DrawingModel] = []
    
    private var locationManager: RapcYabbyLocationManager?
    
    var startTimeStr: String?
    
    let bag = DisposeBag()
    
    var obs: PublishSubject<KeyCharacterLocationModel?> = PublishSubject()
    
    lazy var fabianView: LibidinousOperationOneView = {
        let fabianView = LibidinousOperationOneView()
        fabianView.isHidden = true
        return fabianView
    }()
    
    lazy var zagazigView: MicroUnboxingTwoView = {
        let zagazigView = MicroUnboxingTwoView()
        zagazigView.isHidden = true
        return zagazigView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        view.addSubview(fabianView)
        view.addSubview(zagazigView)
        fabianView.snp.makeConstraints { make in
            make.edges.equalTo(view).inset(UIEdgeInsets(top: 0, left: 0, bottom: hyperlinkHeight, right: 0))
        }
        zagazigView.snp.makeConstraints { make in
            make.edges.equalTo(view).inset(UIEdgeInsets(top: 0, left: 0, bottom: hyperlinkHeight, right: 0))
        }
        if IS_LOGIN {
            rabaulForIterator()
        }
        fabianView.zaftigBlcok = { [weak self] index in
            self?.qanonBestShape(Int(index) ?? 0)
        }
        zagazigView.block = { [weak self] yacareProduct in
            self?.qanonBestShape(Int(yacareProduct) ?? 0)
        }
        zagazigView.block1 = { [weak self] determinantsUrl in
            self?.mutexInterprocessWord(determinantsUrl)
        }
        zagazigView.block2 = { [weak self] str in
            self?.babaEagreAudio()
        }
        fabianView.tableView.mj_header = MJRefreshNormalHeader(refreshingTarget: self, refreshingAction: #selector(tableWackeUbiety))
        fabianView.tableView.mj_header?.isAutomaticallyChangeAlpha = true
        zagazigView.tableView.mj_header = MJRefreshNormalHeader(refreshingTarget: self, refreshingAction: #selector(tableWackeUbiety))
        zagazigView.tableView.mj_header?.isAutomaticallyChangeAlpha = true
        obs.debounce(.milliseconds(3000), scheduler: MainScheduler.asyncInstance)
            .subscribe(onNext: { [weak self] model in
                if let model = model {
                    self?.labialisationLibertinismSchema(model)
                }
            }).disposed(by: bag)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        menuXslParser()
        self.showTabBar()
        startTimeStr = String(Int(Date().timeIntervalSince1970))
    }
    
    func babaEagreAudio() {
        let interprocessFudai = UncheckedLivelockViewController()
        interprocessFudai.iaeaQandaharPlanarity()
        self.navigationController?.pushViewController(interprocessFudai, animated: true)
    }
    
    func rabaulForIterator() {
        RapcYabbyLocationManager.shared.startUpdatingLocation { [weak self] locationModel in
//            print("国家>>>：\(locationModel.country)")
//            print("国家代码>>>：\(locationModel.countryCode)")
//            print("省>>>：\(locationModel.province)")
//            print("市>>>：\(locationModel.city)")
//            print("区>>>：\(locationModel.district)")
//            print("街道>>>：\(locationModel.street)")
//            print("经度>>>：\(locationModel.excellent ?? 0.0)")
//            print("纬度>>>：\(locationModel.carpenter ?? 0.0)")
//            self?.upLocationInfo(locationModel)
            self?.obs.onNext(locationModel)
        }
    }
    
    func labialisationLibertinismSchema(_ locationModel: KeyCharacterLocationModel) {
        if !locationModel.country.isEmpty {
            let type = USER_DEFAULTS.object(forKey: LOCATION_ONE) as? String ?? ""
            if type != "1" {
                let nablusDict = ["stephen":locationModel.country ,"laborer":locationModel.qandaharCode,"description":locationModel.province,"joseph":locationModel.city,"moses":locationModel.radioDistrict,"james":locationModel.sdkBin,"excellent":locationModel.xanthicExcellent ?? 0.0,"carpenter":locationModel.wildcardCarpenter ?? 0.0] as [String : Any]
                ParserPachalicApiWork.shared.requestAPI(params: nablusDict as [String : Any], pageUrl: nabobessThough, method: .post) { [weak self] model in
                    let rabbanistAwareness = model.awareness
                    self?.xanthinuriaManagedCabane()
                    if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                        print("location>>>>>>success")
                        USER_DEFAULTS.setValue("1", forKey: LOCATION_ONE)
                        USER_DEFAULTS.synchronize()
                    }
                } errorBlock: { [weak self] error in
                    self?.xanthinuriaManagedCabane()
                }
            }
        }else {
            self.xanthinuriaManagedCabane()
        }
    }
    
    func xanthinuriaManagedCabane() {
        let nablusDict: [String: Any] = BaseWsdlDeviceInfo.qcbLiberticideLibrarian()
        if let base64String = gabberInterprocessFormal(nablusDict) {
            self.bitmapNearestBrowser(base64String)
            self.zaffreDaceIaa()
        } else {
            print("Failed to convert dictionary to base64")
        }
    }
    
    func gabberInterprocessFormal(_ nablusDict: [String: Any]) -> String? {
        do {
            let analphabetData = try JSONSerialization.data(withJSONObject: nablusDict)
            let base64EncodedString = analphabetData.base64EncodedString()
            return base64EncodedString
        } catch {
            print("Error: \(error)")
            return nil
        }
    }
    
    func bitmapNearestBrowser(_ baseStr: String) {
        let nablusDict = ["hovered": baseStr]
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict as [String : Any], pageUrl: equivalentPiteously, method: .post) { model in
            let rabbanistAwareness = model.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                print("bitmapNearestBrowser>>>>>>success")
            }
        } errorBlock: { error in
            
        }
    }
    
    @objc func tableWackeUbiety() {
        menuXslParser()
    }
    
    func menuXslParser() {
        addHudView()
        let nablusDict: [String: Any] = [:]
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: videoScratched, method: .get) { [weak self] model in
            let rabbanistAwareness = model.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                let nablusDict = model.hovered
                let highModel = JSONDeserializer<HoveredModel>.deserializeFrom(dict: nablusDict)
                let arraySmodel = highModel?.selling
                self?.zagazigView.arraySmodel = arraySmodel
                if let model1 = highModel {
                    if model1.lives == "yy" {//首页2
                        self?.fabianView.isHidden = true
                        self?.zagazigView.isHidden = false
                        self?.partialModel = model1.incomes?.filter{ $0.lives == "yy" }.compactMap{ $0.drawing }.first ?? []
                        if let namedArray = self?.partialModel {
                            self?.zagazigView.partialModel = namedArray
                        }
                        self?.largeDataModel1 = model1.incomes?.filter{ $0.lives == "mm" }.compactMap{ $0.drawing }.first ?? []
                        if let namedArray = self?.largeDataModel1 {
                            self?.zagazigView.largeDataModel1 = namedArray
                        }
                        self?.zagazigView.tableView.reloadData()
                    }else {
                        self?.fabianView.isHidden = false
                        self?.zagazigView.isHidden = true
                        self?.partialModel = model1.incomes?.filter{ $0.lives == "nn" }.compactMap{ $0.drawing }.first ?? []
                        if let namedArray = self?.partialModel {
                            self?.fabianView.partialModel = namedArray
                        }
                        self?.fabianView.tableView.reloadData()
                    }
                }
            }
            self?.removeHudView()
            self?.fabianView.tableView.mj_header?.endRefreshing()
            self?.zagazigView.tableView.mj_header?.endRefreshing()
        } errorBlock: { [weak self] error in
            self?.removeHudView()
            self?.fabianView.tableView.mj_header?.endRefreshing()
            self?.zagazigView.tableView.mj_header?.endRefreshing()
        }
    }
    
    func qanonBestShape(_ index: NSInteger){
        addHudView()
        guard let model = self.partialModel.first else { return }
//        print("applyClick>>>>>\(model.tradition ?? "")")
        let babassuBidders = index
        let nablusDict = ["bidders":babassuBidders]
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: platformWater, method: .post) { [weak self] baseModel in
            let rabbanistAwareness = baseModel.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                let nablusDict = baseModel.hovered
                let xanthiumModel = JSONDeserializer<HoveredModel>.deserializeFrom(dict: nablusDict)
                let url = xanthiumModel?.occurred
                guard let url = url else { return }
                print("url>>跳转>>\(url)")
                if url.contains(SCHEME_URL) {
                    self?.oakenOakmossRecordset(String(babassuBidders),url)
                }else{
                    self?.mutexInterprocessWord(url)
                }
            }
            self?.removeHudView()
        } errorBlock: { [weak self] error in
            self?.removeHudView()
        }
    }
    
    func zaffreDaceIaa() {
        let type = USER_DEFAULTS.object(forKey: MAIDIAN_ONE) as? String ?? ""
        if type != "1" {
            let model = RapcYabbyLocationManager.shared.indexModel
            let target = ""
            let levelPossum = "1"
            let associatedHardworking = ""
            let vertexVisits = BaseWsdlDeviceInfo.loaderSerializationDisassembler()
            let computationalWrath = BaseWsdlDeviceInfo.combinatorialOperationPartial()
            let xanthicExcellent = model.xanthicExcellent
            let wildcardCarpenter = model.wildcardCarpenter
            let habakkukParents = startTimeStr
            let rabaulConfide = String(Int(Date().timeIntervalSince1970))
            print("zaffreDaceIaa>>>>参数>>>>>\(target),\(associatedHardworking),\(levelPossum),\(vertexVisits),\(computationalWrath),\(xanthicExcellent ?? 0.0),\(wildcardCarpenter ?? 0.0),\(habakkukParents ?? ""),\(rabaulConfide)")
            let nablusDict = ["target":target,"possum":levelPossum,"hardworking":associatedHardworking,"visits":vertexVisits,"wrath":computationalWrath,"excellent":xanthicExcellent ?? 0.0,"carpenter":wildcardCarpenter ?? 0.0,"parents":habakkukParents ?? "","confide":rabaulConfide] as [String : Any]
            ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: xanthiumYoure, method: .post) { baseModel in
                let rabbanistAwareness = baseModel.awareness
                if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                    print("zaffreDaceIaa>>>>success")
                    USER_DEFAULTS.setValue("1", forKey: MAIDIAN_ONE)
                    USER_DEFAULTS.synchronize()
                }
            } errorBlock: { error in
                
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
