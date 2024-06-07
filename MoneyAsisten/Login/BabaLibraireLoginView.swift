//
//  BabaLibraireLoginView.swift
//  Catatan
//
//  Created by apple on 2024/2/26.
//

import UIKit
import JXGradientKit
import YYText
import MBProgressHUD_WJExtension

typealias BtnBlock = () -> Void
typealias BtnCodeBlock = (UIButton) -> Void
class BabaLibraireLoginView: UIView ,UITextFieldDelegate{
    var block:BtnBlock?
    var block1:BtnCodeBlock?
    var block2:BtnBlock?
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
    
    lazy var nabobBtn: UIButton = {
        let nabobBtn = UIButton(type: .custom)
        nabobBtn.setImage(UIImage.init(named: "eaglewoodAddBack"), for: .normal)
        nabobBtn.addTarget(self, action: #selector(alphabeticalDimeBackground), for: .touchUpInside)
        return nabobBtn
    }()
    
    lazy var sealedLabel: UILabel = {
        let sealedLabel = UILabel()
        sealedLabel.textAlignment = .center
        sealedLabel.text = "Buat Akun"
        sealedLabel.textColor = .black
        sealedLabel.font = UIFont.systemFont(ofSize: 22.pix(), weight: .semibold)
        return sealedLabel
    }()
    
    lazy var macEmail: UITextField = {
        let macEmail = UITextField()
        macEmail.textAlignment = .center
        macEmail.backgroundColor = .white
        macEmail.textColor = .black
        macEmail.keyboardType = UIKeyboardType.numberPad
        macEmail.layer.cornerRadius = 10.pix()
        macEmail.delegate = self
        let cabanaAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 14.pix(), weight: .regular),
            .foregroundColor:UIColor.black.withAlphaComponent(0.29),
            .paragraphStyle:centerAlignment
        ]
        macEmail.attributedPlaceholder = NSAttributedString(string: "Nomor Anda", attributes: cabanaAttributes)
        return macEmail
    }()
    
    lazy var dacquoisePass: UITextField = {
        let dacquoisePass = UITextField()
        dacquoisePass.textAlignment = .center
        dacquoisePass.backgroundColor = .white
        dacquoisePass.delegate = self
        dacquoisePass.textColor = .black
        dacquoisePass.layer.cornerRadius = 10.pix()
        dacquoisePass.keyboardType = UIKeyboardType.numberPad
        let cabanaAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 14.pix(), weight: .regular),
            .foregroundColor:UIColor.black.withAlphaComponent(0.29),
            .paragraphStyle:centerAlignment
        ]
        dacquoisePass.attributedPlaceholder = NSAttributedString(string: "Otentikasi Identitas", attributes: cabanaAttributes)
        return dacquoisePass
    }()
    
    lazy var oakButton: UIButton = {
        let button = UIButton(type: .system)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14.pix())
        button.contentHorizontalAlignment = .left
        button.setTitleColor(UIColor("#9FBE76"), for: .normal)
        button.setTitle("Kirim kode verifikasi", for: .normal)
        button.addTarget(self, action: #selector(startCountdown(_:)), for: .touchUpInside)
        return button
    }()
    
    lazy var libraireBtn: UIButton = {
        let libraireBtn = UIButton(type: .system)
        libraireBtn.titleLabel?.font = UIFont.systemFont(ofSize: 14.pix())
        libraireBtn.layer.cornerRadius = 10.pix()
        libraireBtn.setTitleColor(UIColor("#FFFFFF"), for: .normal)
        libraireBtn.setTitle("Masuk", for: .normal)
        libraireBtn.backgroundColor = UIColor("#BBD598")
        libraireBtn.addTarget(self, action: #selector(idlIdleOahu), for: .touchUpInside)
        return libraireBtn
    }()
    
    lazy var fabricantMent: YYLabel  = {
        let fabricantMent = YYLabel()
        fabricantMent.numberOfLines = 0
        let text = NSMutableAttributedString(string: "Dengan masuk atau membuat akun, Anda setuju ")
        let oaklandText = NSMutableAttributedString(string: "Perjanjian Privasi kami.")
        text.yy_font = UIFont.systemFont(ofSize: 12.pix())
        text.yy_color = UIColor.black
        oaklandText.yy_font = UIFont.systemFont(ofSize: 12.pix())
        oaklandText.yy_color = UIColor("#9FBE76")
        text.append(oaklandText)
        let immutableHighlight = YYTextHighlight()
        text.yy_setTextHighlight(immutableHighlight, range: NSRange(location: 0, length: text.length))
        immutableHighlight.tapAction = { [weak self] containerView, text, range, rect in
            MBProgressHUD.wj_showPlainText("链接被点击", view: nil)
        }
        fabricantMent.attributedText = text
        fabricantMent.isUserInteractionEnabled = true
        return fabricantMent
    }()
    
    private var centerAlignment: NSParagraphStyle {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        return paragraphStyle
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(eagleView)
        eagleView.addSubview(nabobBtn)
        eagleView.addSubview(sealedLabel)
        eagleView.addSubview(macEmail)
        eagleView.addSubview(dacquoisePass)
        eagleView.addSubview(oakButton)
        eagleView.addSubview(libraireBtn)
//        bgView.addSubview(agreeMentLB)
        
        eagleView.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
        nabobBtn.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 44.pix(), height: 44.pix()))
            make.left.equalTo(eagleView)
            make.top.equalTo(eagleView).offset(CGFloat(STATUSBAR_HIGH) + 8.pix())
        }
        sealedLabel.snp.makeConstraints { make in
            make.centerX.equalTo(eagleView)
            make.top.equalTo(nabobBtn.snp_bottomMargin).offset(18.pix())
            make.size.equalTo(CGSize(width: 200.pix(), height: 30.pix()))
        }
        macEmail.snp.makeConstraints { make in
            make.centerX.equalTo(eagleView)
            make.top.equalTo(sealedLabel.snp_bottomMargin).offset(78.pix())
            make.size.equalTo(CGSize(width: 287.pix(), height: 58.pix()))
        }
        dacquoisePass.snp.makeConstraints { make in
            make.centerX.equalTo(eagleView)
            make.top.equalTo(macEmail.snp_bottomMargin).offset(18.pix())
            make.size.equalTo(CGSize(width: 287.pix(), height: 58.pix()))
        }
        oakButton.snp.makeConstraints { make in
            make.left.equalTo(macEmail.snp_leftMargin)
            make.top.equalTo(dacquoisePass.snp_bottomMargin).offset(14.pix())
            make.size.equalTo(CGSize(width: 400.pix(), height: 20.pix()))
        }
        libraireBtn.snp.makeConstraints { make in
            make.centerX.equalTo(eagleView)
            make.left.equalTo(macEmail.snp_leftMargin)
            make.height.equalTo(48.pix())
            make.top.equalTo(oakButton.snp_bottomMargin).offset(36.pix())
        }
//        agreeMentLB.snp.makeConstraints { make in
//            make.centerX.equalTo(bgView)
//            make.left.equalTo(emailT.snp_leftMargin)
//            make.top.equalTo(loginBtn.snp_bottomMargin).offset(14.pix())
//            make.height.equalTo(34.pix())
//        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func alphabeticalDimeBackground(){
        self.block!()
    }
    
    @objc func startCountdown(_ btn: UIButton) {
        self.block1!(btn)
    }
    
    @objc func idlIdleOahu(){
        self.block2!()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let serialText = (textField.text as NSString?)?.replacingCharacters(in: range, with: string) ?? ""
        if textField == macEmail {
            return serialText.count <= 16
        }else{
            return serialText.count <= 6
        }
    }
    
}
