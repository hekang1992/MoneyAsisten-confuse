//
//  GuidGeneratingViewController.swift
//  Catatan
//
//  Created by apple on 2024/3/1.
//

import UIKit
import MBProgressHUD_WJExtension

class GuidGeneratingViewController: RaceIterativeViewController {
    
    lazy var nameLable1: UILabel = {
        let unionLable = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 16, weight: .medium), textColor: .black, textAlignment: .left)
        unionLable.text = "Hai, pelanggan yang terhormat"
        return unionLable
    }()
    
    lazy var nameLable2: UILabel = {
        let unionLable = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 14, weight: .regular), textColor: UIColor(TITLE_COLOR), textAlignment: .left)
        unionLable.text = "Saya senang bisa melayani Anda"
        return unionLable
    }()
    
    lazy var aboutView1: JabberwockyTabasheerAboutView = {
        let kadunaView = JabberwockyTabasheerAboutView()
        let refreshString = "Surel\nmhdalrai@outlook.com"
        kadunaView.rowsetView.image = UIImage(named: "rabaulBgIocn")
        let startIndex = 5
        let endIndex = refreshString.count
        let range = NSRange(location: startIndex, length: endIndex - startIndex)
        let libiaString = NSMutableAttributedString(string: refreshString)
        libiaString.addAttribute(.font, value: UIFont.systemFont(ofSize: 14, weight: .regular), range: range)
        kadunaView.unionLable.attributedText = libiaString
        return kadunaView
    }()
    
    lazy var aboutView2: JabberwockyTabasheerAboutView = {
        let kadunaView = JabberwockyTabasheerAboutView()
        let refreshString = "Telepon\n9311014565(10:00-18:00)"
        kadunaView.rowsetView.image = UIImage(named: "zahidanJacamarIocn")
        let startIndex = 7
        let endIndex = refreshString.count
        let range = NSRange(location: startIndex, length: endIndex - startIndex)
        let libiaString = NSMutableAttributedString(string: refreshString)
        libiaString.addAttribute(.font, value: UIFont.systemFont(ofSize: 14, weight: .regular), range: range)
        kadunaView.unionLable.attributedText = libiaString
        return kadunaView
    }()
    
    lazy var aboutView3: JabberwockyTabasheerAboutView = {
        let kadunaView = JabberwockyTabasheerAboutView()
        let refreshString = "Whats App\n9311014565"
        kadunaView.rowsetView.image = UIImage(named: "gabardineRightIocn")
        let startIndex = 9
        let endIndex = refreshString.count
        let range = NSRange(location: startIndex, length: endIndex - startIndex)
        let libiaString = NSMutableAttributedString(string: refreshString)
        libiaString.addAttribute(.font, value: UIFont.systemFont(ofSize: 14, weight: .regular), range: range)
        kadunaView.unionLable.attributedText = libiaString
        return kadunaView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        addNavView()
        cabalisticView.sealedLabel.text = "Layanan pelanggan"
        cabalisticView.block = { [weak self] in
            self?.navigationController?.popViewController(animated: true)
        }
        view.addSubview(nameLable1)
        view.addSubview(nameLable2)
        nameLable1.snp.makeConstraints { make in
            make.left.equalTo(eagleView).offset(28)
            make.height.equalTo(22)
            make.top.equalTo(cabalisticView.snp_bottomMargin).offset(17)
        }
        nameLable2.snp.makeConstraints { make in
            make.left.equalTo(eagleView).offset(28)
            make.height.equalTo(22)
            make.top.equalTo(nameLable1.snp.bottom).offset(2)
        }
        view.addSubview(aboutView1)
//        view.addSubview(aboutView2)
//        view.addSubview(aboutView3)
        aboutView1.snp.makeConstraints { make in
            make.left.equalTo(eagleView)
            make.centerX.equalTo(eagleView)
            make.top.equalTo(nameLable2.snp_bottomMargin).offset(28)
            make.height.equalTo(89)
        }
//        aboutView2.snp.makeConstraints { make in
//            make.left.equalTo(bgView)
//            make.centerX.equalTo(bgView)
//            make.top.equalTo(aboutView1.snp_bottomMargin).offset(20)
//            make.height.equalTo(89)
//        }
//        aboutView3.snp.makeConstraints { make in
//            make.left.equalTo(bgView)
//            make.centerX.equalTo(bgView)
//            make.top.equalTo(aboutView2.snp_bottomMargin).offset(20)
//            make.height.equalTo(89)
//        }
        aboutView1.block = { [weak self] in
            self?.libertinageTabardWacko()
        }
//        aboutView2.block = { [weak self] in
//            self?.pushPhone()
//        }
//        aboutView3.block = { [weak self] in
//            self?.pushApp()
//        }
    }
    
    func libertinageTabardWacko() {
        let email = "mhdalrai@outlook.com"
        if let jitEmail = URL(string: "mailto:\(email)"), UIApplication.shared.canOpenURL(jitEmail) {
            UIApplication.shared.open(jitEmail, options: [:], completionHandler: nil)
        }
    }
    
    func nabokovianPaceThrough() {
        let phoneNumber = "9311014565"
        if let cabalettaPhone = URL(string: "tel://\(phoneNumber)"), UIApplication.shared.canOpenURL(cabalettaPhone) {
            UIApplication.shared.open(cabalettaPhone, options: [:], completionHandler: nil)
        } else {
            
        }
    }
    
    func applicationFabricationIdentifier() {
        let phoneNumber = "9311014565"
        if let passWhatsapp = URL(string: "https://wa.me/\(phoneNumber)"), UIApplication.shared.canOpenURL(passWhatsapp) {
            UIApplication.shared.open(passWhatsapp, options: [:], completionHandler: nil)
        } else {
            MBProgressHUD.wj_showPlainText("Tidak diinstal WhatsApp.", view: nil)
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
