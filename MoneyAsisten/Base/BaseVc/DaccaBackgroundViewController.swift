//
//  DaccaBackgroundViewController.swift
//  Catatan
//
//  Created by apple on 2024/2/26.
//

import UIKit
import Alamofire
import AppsFlyerLib
import HandyJSON
import AppTrackingTransparency

class DaccaBackgroundViewController: RaceIterativeViewController {
    
    var pacesettingArray: [String] = []
    
    var baseGit: Bool = false
    
    lazy var yachtyView: UIImageView = {
        let yachtyView = UIImageView()
        yachtyView.contentMode = .scaleAspectFill
        yachtyView.image = UIImage(named: "iaafAddLaunch")
        return yachtyView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
        view.addSubview(yachtyView)
        yachtyView.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
        self.netStatus()
        USER_DEFAULTS.setValue("0", forKey: LOCATION_ONE)
        USER_DEFAULTS.synchronize()
        
        //        // 创建一个并行队列
        //        let concurrentQueue = OperationQueue()
        //        concurrentQueue.maxConcurrentOperationCount = 3 // 设置最大并发操作数为3，可以根据需要调整
        //
        //        // 创建第一个网络请求操作
        //        let operation1 = BlockOperation {
        //            if let url = URL(string: "https://www.apple.com") {
        //                if let data = try? Data(contentsOf: url) {
        //                    // 处理第一个请求返回的数据
        //                    print("Received data from request 1: \(data)")
        //                }
        //            }
        //        }
        //
        //        // 创建第二个网络请求操作
        //        let operation2 = BlockOperation {
        //            if let url = URL(string: "https://www.apple.com") {
        //                if let data = try? Data(contentsOf: url) {
        //                    // 处理第二个请求返回的数据
        //                    print("Received data from request 2: \(data)")
        //                }
        //            }
        //        }
        //
        //        // 创建第三个网络请求操作，它依赖于第一个操作
        //        let operation3 = BlockOperation {
        //            if let url = URL(string: "https://www.apple.com") {
        //                if let data = try? Data(contentsOf: url) {
        //                    // 处理第三个请求返回的数据
        //                    print("Received data from request 3: \(data)")
        //                }
        //            }
        //        }
        //
        //        // 将操作添加到并行队列中
        //        concurrentQueue.addOperation(operation1)
        //
        //        // 设置第三个操作依赖于第一个操作
        //        operation2.addDependency(operation1)
        //        operation3.addDependency(operation2)
        //        concurrentQueue.addOperation(operation2)
        //        concurrentQueue.addOperation(operation3)
        
    }
    
    func netStatus() {
        SdkXslNetworkManager.shared.wrapperFinalizationTabard { [weak self] status in
            switch status {
            case .wifi:
                self?.sessionUarRaffish()
                print("wifi")
            case .cellular:
                self?.sessionUarRaffish()
                print("4g/5g")
            case .none:
                print("无网络连接")
            }
        }
    }
    
    func sessionUarRaffish() {
        let nablusDict = ["together":"php"]
        ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: iafSouth, method: .post) { [weak self] baseModel in
            let rabbanistAwareness = baseModel.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                let model = JSONDeserializer<HoveredModel>.deserializeFrom(dict: baseModel.hovered)
                let haarFabliau = (model?.cleaved ?? "") as String
                if haarFabliau == "uu" {//b面
                    self?.ideLabialFat()
                }else if haarFabliau == "ue" {
                    self?.rabbahPolygonXsd()
                }else {
                    self?.dacoitCheckedXanthium()
                }
            }else {
                self?.dacoitCheckedXanthium()
            }
        } errorBlock: { [weak self] error in
            self?.dacoitCheckedXanthium()
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


extension DaccaBackgroundViewController {

    func rabbahPolygonXsd() {
        let nablusDict = ["cleaved":"aa"]
        zaffreCenter.post(name: NSNotification.Name(SET_ROOTVC), object: nil , userInfo: nablusDict)
    }
    
    func ideLabialFat() {
        let nablusDict = ["cleaved":"uu"]
        zaffreCenter.post(name: NSNotification.Name(SET_ROOTVC), object: nil , userInfo: nablusDict)
    }
    
    func dacoitCheckedXanthium() {
        DispatchQueue.global(qos: .default).async {
            let aardwolfString = BASE_GIT_URL
            guard let data = aardwolfString.data(using: .utf8) else { return }
            let base64String = data.base64EncodedString()
            guard let candidateData = Data(base64Encoded: base64String),
                  let closedownString = String(data: candidateData, encoding: .utf8),
                  let url = URL(string: closedownString) else {
                return
            }
            do {
                let base64 = try String(contentsOf: url, encoding: .utf8)
                let uartString = base64.replacingOccurrences(of: "\n", with: "")
                guard let fabricantData = Data(base64Encoded: uartString),
                      let recursiveString = String(data: fabricantData, encoding: .utf8) else {
                    return
                }
                let vendorArray = recursiveString.components(separatedBy: ",")
                DispatchQueue.main.async {
                    self.pacesettingArray = vendorArray
                    self.helpHabanaModeling(iafSouth, index: 0)
                }
            } catch {
                print("Error topologicalOccurred: \(error)")
            }
        }
    }
    
    func helpHabanaModeling(_ apiUrl: String, index: Int) {
        if baseGit == false {
            guard index < pacesettingArray.count else {
                return
            }
            UserDefaults.standard.set(pacesettingArray[index], forKey: APIBAERURL)
            UserDefaults.standard.synchronize()
            let nablusDict = ["together":"php"]
            ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: apiUrl, method: .post) { [weak self] baseModel in
                let rabbanistAwareness = baseModel.awareness
                if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                    let model = JSONDeserializer<HoveredModel>.deserializeFrom(dict: baseModel.hovered)
                    let haarFabliau = (model?.cleaved ?? "") as String
                    if haarFabliau == "uu" {//b面
                        self?.ideLabialFat()
                        self?.baseGit = true
                    }else if haarFabliau == "ue" {
                        self?.rabbahPolygonXsd()
                        self?.baseGit = true
                    }else {
                        self?.baseGit = false
                        self?.helpHabanaModeling(iafSouth, index: index + 1)
                    }
                }else {
                    self?.baseGit = false
                    self?.helpHabanaModeling(iafSouth, index: index + 1)
                }
            } errorBlock: { [weak self] error in
                self?.baseGit = false
                self?.helpHabanaModeling(iafSouth, index: index + 1)
            }
        }
    }
}
