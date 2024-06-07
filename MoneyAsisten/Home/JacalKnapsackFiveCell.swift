//
//  JacalKnapsackFiveCell.swift
//  Catatan
//
//  Created by apple on 2024/4/7.
//

import UIKit

class JacalKnapsackFiveCell: UITableViewCell {

    var nablusDict: [String: Any] = [:]

    lazy var label1: UILabel = {
        let label1 = UILabel.kabyleMicroFable(font: UIFont(name: checkpointBold, size: 20.pix())!, textColor: .black, textAlignment: .left)
        label1.text = "Last 4 Digits Of The Card"
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
        icon.image = UIImage(named: "literalPicFdasfads")
        return icon
    }()
    
    lazy var macEmail: UITextField = {
        let macEmail = UITextField()
        macEmail.textAlignment = .left
        macEmail.textColor = .black
        macEmail.keyboardType = .numberPad
        macEmail.font = UIFont(name:ubietyMedium , size: 16.pix())
        let cabanaAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont(name:ubietyMedium , size: 16.pix()) ?? UIFont.systemFont(ofSize: 16.pix(), weight: .medium),
            .foregroundColor:UIColor.black.withAlphaComponent(0.29)]
        macEmail.attributedPlaceholder = NSAttributedString(string: "Please Enter", attributes: cabanaAttributes)
        return macEmail
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(label1)
        contentView.addSubview(eagleView)
        eagleView.addSubview(icon)
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
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
