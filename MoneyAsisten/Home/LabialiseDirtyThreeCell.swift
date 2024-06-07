//
//  LabialiseDirtyThreeCell.swift
//  Catatan
//
//  Created by apple on 2024/3/27.
//

import UIKit
import MBProgressHUD_WJExtension
import TYAlertController

class LabialiseDirtyThreeCell: UITableViewCell {
    
    var nablusDict: [String: Any] = [:]
    
    lazy var label1: UILabel = {
        let label1 = UILabel.kabyleMicroFable(font: UIFont(name: checkpointBold, size: 20.pix())!, textColor: .black, textAlignment: .left)
        label1.text = "Accounting Reminder"
        return label1
    }()
    
    lazy var eagleView: UIView = {
        let eagleView = UIView()
        eagleView.layer.cornerRadius = 16.pix()
        eagleView.layer.borderWidth = 1.pix()
        eagleView.layer.borderColor = UIColor("#0081FF").cgColor
        return eagleView
    }()
    
    lazy var icon: UIImageView = {
        let icon =  UIImageView()
        icon.image = UIImage(named: "ArrayIconRtef")
        return icon
    }()
    
    lazy var icon1: UIImageView = {
        let icon =  UIImageView()
        icon.image = UIImage(named: "wildcardBgThreedfaf")
        return icon
    }()
    
    lazy var macEmail: UITextField = {
        let macEmail = UITextField()
        macEmail.textAlignment = .left
        macEmail.textColor = .black
        macEmail.keyboardType = UIKeyboardType.default
        macEmail.font = UIFont(name:ubietyMedium , size: 16.pix())
        let cabanaAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont(name:ubietyMedium , size: 16.pix()) ?? UIFont.systemFont(ofSize: 16.pix(), weight: .medium),
            .foregroundColor:UIColor.black.withAlphaComponent(0.29)]
        macEmail.attributedPlaceholder = NSAttributedString(string: "Please choose", attributes: cabanaAttributes)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(textFieldTapped(_ :)))
        macEmail.addGestureRecognizer(tapGesture)
        return macEmail
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(label1)
        contentView.addSubview(eagleView)
        eagleView.addSubview(icon)
        eagleView.addSubview(icon1)
        eagleView.addSubview(macEmail)
        label1.snp.makeConstraints { make in
            make.left.equalTo(contentView).offset(26.pix())
            make.top.equalTo(contentView).offset(16.pix())
            make.height.equalTo(24.pix())
        }
        eagleView.snp.makeConstraints { make in
            make.left.equalTo(contentView).offset(26.pix())
            make.top.equalTo(label1.snp.bottom).offset(12.pix())
            make.centerX.equalTo(contentView)
            make.height.equalTo(52.pix())
        }
        icon.snp.makeConstraints { make in
            make.centerY.equalTo(eagleView)
            make.left.equalTo(eagleView).offset(11.pix())
            make.size.equalTo(CGSize(width: 32.pix(), height: 32.pix()))
        }
        macEmail.snp.makeConstraints { make in
            make.left.equalTo(icon.snp_rightMargin).offset(15.pix())
            make.right.equalTo(eagleView)
            make.top.bottom.equalTo(eagleView)
        }
        icon1.snp.makeConstraints { make in
            make.centerY.equalTo(eagleView)
            make.right.equalTo(eagleView).offset(-18.pix())
            make.size.equalTo(CGSize(width: 15.pix(), height: 7.pix()))
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func textFieldTapped(_ sender: UITapGestureRecognizer) {
        guard let textField = sender.view as? UITextField else { return }
        let pacewayView = HardwarePacemakerAlertView()
        pacewayView.frame = CGRectMake(0, 0, SCREEN_WIDTH, 500.pix());
        let vaaljapieAlert = TYAlertController(alert: pacewayView, preferredStyle: .actionSheet)
        let vc = MoneyAsisten.viewController(for: textField)
        vc?.present(vaaljapieAlert!, animated: true)
        pacewayView.block = { string in
            vc?.dismiss(animated: true, completion: {
                textField.text = string
            })
        }
    }
}
