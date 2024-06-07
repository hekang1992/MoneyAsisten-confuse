//
//  IadlBaasFourCell.swift
//  Catatan
//
//  Created by apple on 2024/3/27.
//

import UIKit

class IadlBaasFourCell: UITableViewCell {
    
    var nablusDict: [String: Any] = [:]
    
    lazy var label1: UILabel = {
        let label1 = UILabel.kabyleMicroFable(font: UIFont(name: checkpointBold, size: 20.pix())!, textColor: .black, textAlignment: .left)
        label1.text = "Remark"
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
        icon.image = UIImage(named: "I2oRightYdgffd")
        return icon
    }()
    
    lazy var textView: UITextView = {
        let textView = UITextView()
        textView.textColor = .black
        textView.font = UIFont(name: ubietyMedium, size: 16.pix())
        return textView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(label1)
        contentView.addSubview(eagleView)
        eagleView.addSubview(icon)
        eagleView.addSubview(textView)
        label1.snp.makeConstraints { make in
            make.left.equalTo(contentView).offset(26.pix())
            make.top.equalTo(contentView).offset(16.pix())
            make.height.equalTo(24.pix())
        }
        eagleView.snp.makeConstraints { make in
            make.left.equalTo(contentView).offset(26.pix())
            make.top.equalTo(label1.snp.bottom).offset(12.pix())
            make.centerX.equalTo(contentView)
            make.height.equalTo(180.pix())
        }
        icon.snp.makeConstraints { make in
            make.top.equalTo(eagleView).offset(12.pix())
            make.left.equalTo(eagleView).offset(12.pix())
            make.size.equalTo(CGSize(width: 32.pix(), height: 32.pix()))
        }
        textView.snp.makeConstraints { make in
            make.left.equalTo(icon.snp.right)
            make.right.equalTo(eagleView)
            make.top.bottom.equalTo(eagleView).offset(10.pix())
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
