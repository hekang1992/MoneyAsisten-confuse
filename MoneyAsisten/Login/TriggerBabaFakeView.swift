//
//  TriggerBabaFakeView.swift
//  Catatan
//
//  Created by apple on 2024/3/27.
//

import UIKit
import YYText
import MBProgressHUD_WJExtension

class TriggerBabaFakeView: UIView,UITextFieldDelegate {
    
    var block: (() -> Void)?
    var block1: (() -> Void)?
    var block2: (() -> Void)?
    var block3: (() -> Void)?
    
    lazy var nabobBtn: UIButton = {
        let nabobBtn = UIButton(type: .custom)
        nabobBtn.setImage(UIImage.init(named: "eaglewoodAddBack"), for: .normal)
        nabobBtn.addTarget(self, action: #selector(alphabeticalDimeBackground), for: .touchUpInside)
        return nabobBtn
    }()
    
    lazy var label1: UILabel = {
        let label1 = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 36.pix(), weight: .black), textColor: .black, textAlignment: .center)
        label1.text = "Dana Catatan"
        return label1
    }()
    
    lazy var icon: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "operatingBgAaaa")
        return icon
    }()
    
    lazy var bgView1: UIView = {
        let eagleView = UIView()
        eagleView.backgroundColor = .white
        eagleView.layer.cornerRadius = 31
        return eagleView
    }()
    
    lazy var bgView2: UIView = {
        let eagleView = UIView()
        eagleView.backgroundColor = .white
        eagleView.layer.cornerRadius = 31
        return eagleView
    }()
    
    lazy var icon1: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "fatherhoodLeftPpp")
        return icon
    }()
    
    lazy var icon2: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "cashawRightPpp")
        return icon
    }()
    
    lazy var macEmail: UITextField = {
        let macEmail = UITextField()
        macEmail.textAlignment = .left
        macEmail.textColor = .black
        macEmail.keyboardType = UIKeyboardType.numberPad
        macEmail.font = UIFont(name:ubietyMedium , size: 16.pix())
        macEmail.delegate = self
        let cabanaAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont(name:ubietyMedium , size: 16.pix()) ?? UIFont.systemFont(ofSize: 16.pix(), weight: .regular),
            .foregroundColor:UIColor.black.withAlphaComponent(0.29)]
        macEmail.attributedPlaceholder = NSAttributedString(string: "Enter your number", attributes: cabanaAttributes)
        return macEmail
    }()
    
    lazy var emailT1: UITextField = {
        let macEmail = UITextField()
        macEmail.textAlignment = .left
        macEmail.textColor = .black
        macEmail.keyboardType = UIKeyboardType.numberPad
        macEmail.font = UIFont(name:ubietyMedium , size: 16.pix())
        macEmail.delegate = self
        let cabanaAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont(name:ubietyMedium , size: 16.pix()) ?? UIFont.systemFont(ofSize: 16.pix(), weight: .regular),
            .foregroundColor:UIColor.black.withAlphaComponent(0.29)]
        macEmail.attributedPlaceholder = NSAttributedString(string: "Enter code", attributes: cabanaAttributes)
        return macEmail
    }()
    
    lazy var iaaBtn: UIButton = {
        let iaaBtn = UIButton(type: .custom)
        iaaBtn.setTitle("Send code", for: .normal)
        iaaBtn.setTitleColor(.white, for: .normal)
        iaaBtn.titleLabel?.font = UIFont(name: ubietyMedium, size: 16)
        iaaBtn.layer.cornerRadius = 18
        iaaBtn.backgroundColor = UIColor("#1355FF")
        iaaBtn.addTarget(self, action: #selector(aarAardwolfBracket), for: .touchUpInside)
        return iaaBtn
    }()
    
    lazy var libraireBtn: UIButton = {
        let iaaBtn = UIButton(type: .custom)
        iaaBtn.setTitle("Log In", for: .normal)
        iaaBtn.setTitleColor(.white, for: .normal)
        iaaBtn.titleLabel?.font = UIFont(name: checkpointBold, size: 18)
        iaaBtn.layer.cornerRadius = 32
        iaaBtn.backgroundColor = UIColor("#1355FF")
        iaaBtn.addTarget(self, action: #selector(idlIdleOahu), for: .touchUpInside)
        return iaaBtn
    }()
    
    lazy var fabricantMent: YYLabel  = {
        let fabricantMent = YYLabel()
        fabricantMent.numberOfLines = 0
        let text = NSMutableAttributedString(string: "By logging in or creating an account, you agree ")
        let oaklandText = NSMutableAttributedString(string: "Our Privacy Agreement")
        text.yy_font = UIFont.systemFont(ofSize: 14.pix())
        text.yy_color = UIColor.black
        oaklandText.yy_font = UIFont.systemFont(ofSize: 14.pix())
        oaklandText.yy_color = UIColor("#1355FF")
        text.append(oaklandText)
        let immutableHighlight = YYTextHighlight()
        text.yy_setTextHighlight(immutableHighlight, range: NSRange(location: 0, length: text.length))
        immutableHighlight.tapAction = { [weak self] containerView, text, range, rect in
            self?.block3?()
        }
        fabricantMent.attributedText = text
        fabricantMent.isUserInteractionEnabled = true
        return fabricantMent
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor("#F4F8EE")
        addSubview(nabobBtn)
        addSubview(label1)
        addSubview(icon)
        addSubview(bgView1)
        addSubview(bgView2)
        bgView1.addSubview(icon1)
        bgView1.addSubview(macEmail)
        bgView2.addSubview(icon2)
        bgView2.addSubview(iaaBtn)
        bgView2.addSubview(emailT1)
        addSubview(libraireBtn)
        addSubview(fabricantMent)
        nabobBtn.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 44.pix(), height: 44.pix()))
            make.left.equalTo(self)
            make.top.equalTo(self).offset(CGFloat(STATUSBAR_HIGH) + 8.pix())
        }
        label1.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(self).offset(78.pix())
            make.height.equalTo(50.pix())
            make.left.equalTo(self)
        }
        icon.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(label1.snp_bottomMargin).offset(28.pix())
            make.size.equalTo(CGSizeMake(272, 90))
        }
        bgView1.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(icon.snp_bottomMargin).offset(32)
            make.size.equalTo(CGSizeMake(331, 62))
        }
        bgView2.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(bgView1.snp_bottomMargin).offset(30)
            make.size.equalTo(CGSizeMake(331.pix(), 62.pix()))
        }
        icon1.snp.makeConstraints { make in
            make.centerY.equalTo(bgView1)
            make.left.equalTo(bgView1).offset(17.pix())
            make.size.equalTo(CGSize(width: 35.pix(), height: 35.pix()))
        }
        icon2.snp.makeConstraints { make in
            make.centerY.equalTo(bgView2)
            make.left.equalTo(bgView2).offset(17.pix())
            make.size.equalTo(CGSize(width: 35.pix(), height: 35.pix()))
        }
        macEmail.snp.makeConstraints { make in
            make.centerY.equalTo(bgView1)
            make.left.equalTo(icon1.snp_rightMargin).offset(22.pix())
            make.right.equalTo(bgView1).offset(-40.pix())
            make.height.equalTo(62.pix())
        }
        iaaBtn.snp.makeConstraints { make in
            make.centerY.equalTo(bgView2)
            make.size.equalTo(CGSizeMake(106.pix(), 35.pix()))
            make.right.equalTo(bgView2).offset(-20.pix())
        }
        emailT1.snp.makeConstraints { make in
            make.centerY.equalTo(bgView2)
            make.left.equalTo(icon2.snp_rightMargin).offset(22.pix())
            make.right.equalTo(iaaBtn.snp_leftMargin).offset(-20.pix())
            make.height.equalTo(62.pix())
        }
        libraireBtn.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.left.equalTo(self).offset(22.pix())
            make.height.equalTo(62.pix())
            make.bottom.equalTo(self).offset(-180.pix())
        }
        fabricantMent.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(libraireBtn.snp_bottomMargin).offset(9.pix())
            make.left.equalTo(self).offset(32.pix())
            make.height.equalTo(60.pix())
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func alphabeticalDimeBackground() {
        self.block!()
    }
    
    @objc func aarAardwolfBracket() {
        self.block1!()
    }
    
    @objc func idlIdleOahu() {
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
