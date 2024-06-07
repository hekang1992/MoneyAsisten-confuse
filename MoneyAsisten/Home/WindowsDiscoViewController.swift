//
//  WindowsDiscoViewController.swift
//  Catatan
//
//  Created by apple on 2024/3/28.
//

import UIKit
import TYAlertController
import MBProgressHUD_WJExtension
import DGCharts
import HandyJSON

class WindowsDiscoViewController: RaceIterativeViewController {
    
    lazy var bgView1: UIView = {
        let eagleView = UIView()
        eagleView.backgroundColor = UIColor("#F4F8EE")
        return eagleView
    }()
    
    lazy var setView: UserHelpSetView = {
        let setView = UserHelpSetView()
        return setView
    }()
    
    var model: HoveredModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        addNavView()
        cabalisticView.sealedLabel.text = "Bank Wealth"
        cabalisticView.block = { [weak self] in
            self?.navigationController?.popViewController(animated: true)
        }
        view.insertSubview(bgView1, belowSubview: cabalisticView)
        bgView1.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
        bgView1.addSubview(setView)
        setView.snp.makeConstraints { make in
            make.edges.equalTo(bgView1).inset(UIEdgeInsets(top: CGFloat(NAV_HIGH), left: 0, bottom: 0, right: 0))
        }
        setView.block = { [weak self] in
            self?.imageAleet()
        }
        setView.block1 = { [weak self] in
            let abc = UserDefaults.standard.object(forKey: APIBAERURL) as? String ?? ""
            var url: String = ""
            if abc.isEmpty {
                url = BASE_HTML_URL + "/nkimaFetch"
            }else {
                url = String(abc.dropLast(5)) + "/nkimaFetch"
            }
            self?.mutexInterprocessWord(url)
        }
        setView.block2 = { [weak self] in
            let abc = UserDefaults.standard.object(forKey: APIBAERURL) as? String ?? ""
            var url: String = ""
            if abc.isEmpty {
                url = BASE_HTML_URL
            }else {
                url = String(abc.dropLast(5))
            }
            self?.mutexInterprocessWord(url)
        }
        setView.block3 = {
            let email = "mhdalrai@outlook.com"
            if let jitEmail = URL(string: "mailto:\(email)"), UIApplication.shared.canOpenURL(jitEmail) {
                UIApplication.shared.open(jitEmail, options: [:], completionHandler: nil)
            }
        }
        setView.block4 = { [weak self] in
            if IS_LOGIN {
                self?.logout()
            }else{
                self?.zagFabricateNabokovian()
            }
        }
        setView.block5 = { [weak self] in
            if IS_LOGIN {
                self?.caballoWizardCaballero()
            }else{
                self?.zagFabricateNabokovian()
            }
        }
        setView.block6 = { [weak self] in
            if IS_LOGIN {
                let arbitraryView = BatchOakenChartView()
                arbitraryView.frame = self?.view.bounds ?? .zero
                let vaaljapieAlert = TYAlertController(alert: arbitraryView, preferredStyle: .actionSheet, transitionAnimation: .scaleFade)
                self?.present(vaaljapieAlert!, animated: true)
                arbitraryView.block = {
                    self?.dismiss(animated: true)
                }
                self?.livelockUbietyArchitecture(arbitraryView.kabyleView)
            }else{
                self?.zagFabricateNabokovian()
            }
        }
        setView.block7 = { [weak self] in
            if IS_LOGIN {
                let minkowskiMultiuser = EqualJobViewController()
                self?.navigationController?.pushViewController(minkowskiMultiuser, animated: true)
            }else{
                self?.zagFabricateNabokovian()
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addHudView()
        ParserPachalicApiWork.shared.requestAPI(params: [:], pageUrl: simplifyingBelow, method: .put) { [weak self] baseModel in
            let rabbanistAwareness = baseModel.awareness
            if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                let nablusDict = baseModel.hovered
                let highModel = JSONDeserializer<HoveredModel>.deserializeFrom(dict: nablusDict)
                if let model = highModel {
                    self?.model = model
                }
            }
            self?.removeHudView()
        } errorBlock: { [weak self] error in
            self?.removeHudView()
        }
        
    }
    
    func imageAleet() {
        let sabaView = RadioUnmarshalTipsView()
        sabaView.imageV.image = UIImage(named: "viableAddSuccessclear")
        sabaView.block = { [weak self] in
            self?.dismiss(animated: true)
        }
        sabaView.frame = self.view.bounds
        let vaaljapieAlert = TYAlertController(alert: sabaView, preferredStyle: .alert, transitionAnimation: .scaleFade)
        self.present(vaaljapieAlert!, animated: true)
    }
    
    func logout() {
        let sabaView = ConstrainedEagleOutView()
        sabaView.label.text = "Are you sure to log out of the current account?"
        sabaView.imageV.image = UIImage(named: "macabreBgLogoutfff")
        sabaView.block1 = { [weak self] in
            self?.dismiss(animated: true)
        }
        sabaView.block2 = { [weak self] in
            self?.dismiss(animated: true, completion: {
                if IS_LOGIN {
                    self?.librarianKadunaLabdanum()
                }else{
                    self?.zagFabricateNabokovian()
                }
            })
        }
        sabaView.frame = self.view.bounds
        let vaaljapieAlert = TYAlertController(alert: sabaView, preferredStyle: .alert, transitionAnimation: .scaleFade)
        self.present(vaaljapieAlert!, animated: true)
    }
    
    func caballoWizardCaballero() {
        let sabaView = ConstrainedEagleOutView()
        sabaView.label.text = "This operation will completely delete all account information and cannot be restored! Whether to continue?"
        sabaView.imageV.image = UIImage(named: "macabreBgLogoutfff")
        sabaView.block1 = { [weak self] in
            self?.dismiss(animated: true)
        }
        sabaView.block2 = { [weak self] in
            self?.dismiss(animated: true, completion: {
                if IS_LOGIN {
                    self?.fabricantSequentialLibidinous()
                }else{
                    self?.zagFabricateNabokovian()
                }
            })
        }
        sabaView.frame = self.view.bounds
        let vaaljapieAlert = TYAlertController(alert: sabaView, preferredStyle: .alert, transitionAnimation: .scaleFade)
        self.present(vaaljapieAlert!, animated: true)
    }
    
    func librarianKadunaLabdanum() {
        addHudView()
        delay(0.25) {
            let nablusDict: [String: Any] = [:]
            ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: baseYears, method: .get) { [weak self] model in
                let rabbanistAwareness = model.awareness
                let edges = model.edges
                if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                    TabbinetFabricantLoginInfo.removeLoginInfo()
                    let nablusDict = ["cleaved":"aa"]
                    zaffreCenter.post(name: NSNotification.Name(SET_ROOTVC), object: nil, userInfo: nablusDict)
                }
                self?.removeHudView()
                MBProgressHUD.wj_showPlainText(edges ?? "", view: nil)
            } errorBlock: { [weak self] error in
                self?.removeHudView()
            }
        }
    }
    
    func fabricantSequentialLibidinous() {
        addHudView()
        delay(0.25) {
            let nablusDict: [String: Any] = [:]
            ParserPachalicApiWork.shared.requestAPI(params: nablusDict, pageUrl: baathistHeadless, method: .get) { [weak self] model in
                let rabbanistAwareness = model.awareness
                let edges = model.edges
                if rabbanistAwareness == 0 || rabbanistAwareness == 00 {
                    TabbinetFabricantLoginInfo.removeLoginInfo()
                    let nablusDict = ["cleaved":"aa"]
                    zaffreCenter.post(name: NSNotification.Name(SET_ROOTVC), object: nil, userInfo: nablusDict)
                }
                self?.removeHudView()
                MBProgressHUD.wj_showPlainText(edges ?? "", view: nil)
            } errorBlock: { [weak self] error in
                self?.removeHudView()
            }
        }
    }
    
    func zagFabricateNabokovian() {
        let login = FabliauWaddingViewController()
        let nav = UbicationWadableViewController(rootViewController: login)
        nav.modalPresentationStyle = .overFullScreen
        present(nav, animated: true, completion: nil)
    }
    
    func livelockUbietyArchitecture(_ kabyleView: LineChartView) {
        
        var array1 = model?.investment
        array1?.insert(0, at: 0)
        var array2 = model?.liabilities
        array2?.insert(0, at: 0)
        var array3 = model?.current
        array3?.insert(0, at: 0)
        var array4 = model?.fixed
        array4?.insert(0, at: 0)
        
        let dataPoints1 = array1
        let dataPoints2 = array2
        let dataPoints3 = array3
        let dataPoints4 = array4
        
        
        var entries1: [ChartDataEntry] = []
        var entries2: [ChartDataEntry] = []
        var entries3: [ChartDataEntry] = []
        var entries4: [ChartDataEntry] = []
        
        for i in 0..<(dataPoints1?.count ?? 0) {
            if i > 0 {
                entries1.append(ChartDataEntry(x: Double(i), y: Double(dataPoints1?[i] ?? 0)))
                entries2.append(ChartDataEntry(x: Double(i), y: Double(dataPoints2?[i] ?? 0)))
                entries3.append(ChartDataEntry(x: Double(i), y: Double(dataPoints3?[i] ?? 0)))
                entries4.append(ChartDataEntry(x: Double(i), y: Double(dataPoints4?[i] ?? 0)))
            }
        }
        
        let dataSet1 = LineChartDataSet(entries: entries1, label: "")
        let dataSet2 = LineChartDataSet(entries: entries2, label: "")
        let dataSet3 = LineChartDataSet(entries: entries3, label: "")
        let dataSet4 = LineChartDataSet(entries: entries4, label: "")
        
        dataSet1.setColor(UIColor("#188DFF"))
        dataSet1.setCircleColor(UIColor("#188DFF"))
        dataSet1.lineWidth = 2.0
        dataSet1.circleRadius = 3.0
        dataSet1.fillAlpha = 65/255
        dataSet1.fillColor = UIColor("#188DFF")
        dataSet1.highlightColor = UIColor.white
        
        dataSet2.setColor(UIColor("#FB9A01"))
        dataSet2.setCircleColor(UIColor("#FB9A01"))
        dataSet2.lineWidth = 2.0
        dataSet2.circleRadius = 3.0
        dataSet2.fillAlpha = 65/255
        dataSet2.fillColor = UIColor("#FB9A01")
        dataSet2.highlightColor = UIColor.white
        
        dataSet3.setColor(UIColor("#B3EE4B"))
        dataSet3.setCircleColor(UIColor("#B3EE4B"))
        dataSet3.lineWidth = 2.0
        dataSet3.circleRadius = 3.0
        dataSet3.fillAlpha = 65/255
        dataSet3.fillColor = UIColor("#B3EE4B")
        dataSet3.highlightColor = UIColor.white
        
        dataSet4.setColor(UIColor("#364880"))
        dataSet4.setCircleColor(UIColor("#364880"))
        dataSet4.lineWidth = 2.0
        dataSet4.circleRadius = 3.0
        dataSet4.fillAlpha = 65/255
        dataSet4.fillColor = UIColor("#364880")
        dataSet4.highlightColor = UIColor.white
        
        let macacoSet = LineChartData(dataSets: [dataSet1, dataSet2, dataSet3, dataSet4])
        
        var array = model?.monthss
        array?.insert("0", at: 0)
        guard let caballineLabels = array else { return }
        let hamiltonianFormatter = IndexAxisValueFormatter(values: caballineLabels)
        kabyleView.xAxis.valueFormatter = hamiltonianFormatter
        
        kabyleView.data = macacoSet
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
