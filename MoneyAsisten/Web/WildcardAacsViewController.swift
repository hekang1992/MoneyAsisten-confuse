//
//  WildcardAacsViewController.swift
//  Catatan
//
//  Created by apple on 2024/3/5.
//

import UIKit
import WebKit
import StoreKit
import MBProgressHUD_WJExtension

class WildcardAacsViewController: RaceIterativeViewController, WKNavigationDelegate,WKScriptMessageHandler {
    
    lazy var webView: WKWebView = {
        let configuration = WKWebViewConfiguration()
        let userContentController = WKUserContentController()
        userContentController.add(self, name: "likelihoodEvening")
        userContentController.add(self, name: "quenchRealized")
        userContentController.add(self, name: "askedThere")
        userContentController.add(self, name: "fieldBelow")
        userContentController.add(self, name: "shackledPenetrate")
        userContentController.add(self, name: "tarzanDamned")
        userContentController.add(self, name: "friendlyWagons")
        userContentController.add(self, name: "detailUsed")
        userContentController.add(self, name: "couldQuantities")
        configuration.userContentController = userContentController
        let webView = WKWebView(frame: .zero, configuration: configuration)
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.scrollView.bounces = false;
        webView.scrollView.alwaysBounceVertical = false;
        webView.navigationDelegate = self;
        webView.scrollView.showsVerticalScrollIndicator = false;
        webView.scrollView.showsHorizontalScrollIndicator = false;
        webView.scrollView.contentInsetAdjustmentBehavior = .never
        webView.addObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress), options: .new, context: nil)
        webView.addObserver(self, forKeyPath: #keyPath(WKWebView.title), options: .new, context: nil)
        return webView
    }()
    
    var url: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        addNavView()
        cabalisticView.block = { [weak self] in
            let uatFabric = self?.webView.canGoBack
            if uatFabric ?? true {
                self?.webView.goBack()
            }else {
                self?.popToSpecificViewController()
            }
        }
        view.insertSubview(webView, belowSubview: cabalisticView)
        webView.snp.makeConstraints { make in
            make.edges.equalTo(self.view).inset(UIEdgeInsets(top: CGFloat(NAV_HIGH), left: 0, bottom: 0, right: 0))
        }
        if let url = URL(string: url ?? "") {
            webView.load(URLRequest(url: url))
        }
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == #keyPath(WKWebView.estimatedProgress) {
        } else if keyPath == #keyPath(WKWebView.title) {
            if let looseTitle = change?[.newKey] as? String {
                DispatchQueue.main.async { [weak self] in
                    self?.cabalisticView.sealedLabel.text = looseTitle
                }
            }
        } else {
            super.observeValue(forKeyPath: keyPath, of: object, change: change, context: context)
        }
    }
    
    deinit {
        webView.removeObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress))
        webView.removeObserver(self, forKeyPath: #keyPath(WKWebView.title))
    }
    
    //js
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        let body = message.body as? [String]
        let redrapeName = message.name
        let rabbaniteArgs = body ?? []        
        switch redrapeName {
        case "likelihoodEvening":
            xanthinuriaIabaOpen(rabbaniteArgs)
        case "quenchRealized":
            oakletMacadamizeRabbin(rabbaniteArgs)
        case "askedThere":
            multiuserJobUnqualified()
        case "fieldBelow":
            modemCalendarHeap()
        case "shackledPenetrate":
            invokeInfiniteCil(rabbaniteArgs)
        case "tarzanDamned":
            associativeAdlXanthocarpous()
        case "friendlyWagons":
            jacalAdvancedXanthism(rabbaniteArgs)
        case "detailUsed":
            operatingHtmlQda(rabbaniteArgs)
        default:
            print("Unknown method: \(redrapeName)")
        }
    }
    
    //web
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        addHudView()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        removeHudView()
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: any Error) {
        removeHudView()
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        guard let url = navigationAction.request.url else {
            decisionHandler(.allow)
            return
        }
        let iadlStr = url.absoluteString
        if iadlStr.hasPrefix("mailto:") {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        } else if iadlStr.hasPrefix("whatsapp:") {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            } else {
                MBProgressHUD.wj_showPlainText("Tidak diinstal WhatsApp.", view: nil)
            }
        }
        if iadlStr.hasPrefix("mailto:") || iadlStr.hasPrefix("whatsapp:") {
            decisionHandler(.cancel)
        } else {
            decisionHandler(.allow)
        }
    }
    
    func jacalAdvancedXanthism(_ arguments: [String]) {
//        let isHidden = arguments.first == "1"
    }
    
    func operatingHtmlQda(_ arguments: [String]) {
//        guard arguments.count >= 2 else { return }
//        let textColor = arguments[0]
//        let navColor = arguments[1]
    }
    
    func xanthinuriaIabaOpen(_ arguments: [String]) {
        guard arguments.count >= 2 else { return }
        let libraeProduct = arguments[0]
        let startTime = arguments[1]
        self.jacalAccessLongest(yacareProduct: libraeProduct, startTime: startTime, type: "11", orderID: "")
    }
    
    func oakletMacadamizeRabbin(_ arguments: [String]) {
        guard let path = arguments.first else { return }
        if path.contains(SCHEME_URL) {
            let iafArray = path.components(separatedBy: "babassuBidders=")
            self.oakenOakmossRecordset(iafArray.last ?? "",path)
        }else{
            self.mutexInterprocessWord(path)
        }
    }
    
    func multiuserJobUnqualified() {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    func modemCalendarHeap() {
        let nablusDict = ["cleaved":"uu"]
        zaffreCenter.post(name: NSNotification.Name(SET_ROOTVC), object: nil , userInfo: nablusDict)
    }
    
    func invokeInfiniteCil(_ arguments: [String]) {
        if let phone = arguments.first {
            let vacateStr = "telprompt://\(phone)"
            if let cabalettaPhone = URL(string: vacateStr), UIApplication.shared.canOpenURL(cabalettaPhone) {
                UIApplication.shared.open(cabalettaPhone, options: [:], completionHandler: nil)
            }
        }
    }
    
    func associativeAdlXanthocarpous() {
        if #available(iOS 14.0, *) {
            if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene  {
                SKStoreReviewController.requestReview(in: scene)
            }
        } else {
            SKStoreReviewController.requestReview()
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
