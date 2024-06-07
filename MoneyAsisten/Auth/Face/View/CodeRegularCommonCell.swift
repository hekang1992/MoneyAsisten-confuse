//
//  CodeRegularCommonCell.swift
//  Catatan
//
//  Created by apple on 2024/3/6.
//

import UIKit

class CodeRegularCommonCell: UITableViewCell {
    
    lazy var leftView: UIView = {
        let leftView = UIView()
        leftView.frame = CGRectMake(0, 0, 20.pix(), 20.pix())
        return leftView
    }()
    
    lazy var textField1: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 10.pix()
        textField.leftView = leftView
        textField.leftViewMode = .always
        textField.addTarget(self, action: #selector(textFieldEditingChanged(_:)), for: .editingChanged)
        return textField
    }()
    
    lazy var textField2: UITextField = {
        let textField = UITextField()
        textField.isHidden = true
        return textField
    }()
    
    lazy var unionLable: UILabel = {
        let unionLable = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 14, weight: .regular), textColor: .black, textAlignment: .left)
        return unionLable
    }()
    
    lazy var rowsetView: UIImageView = {
        let rowsetView = UIImageView()
        rowsetView.isHidden = true
        rowsetView.image = UIImage(named: "waddingBackAbcd")
        return rowsetView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(textField2)
        contentView.addSubview(textField1)
        contentView.addSubview(unionLable)
        textField1.addSubview(rowsetView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        textField2.snp.makeConstraints { make in
            make.bottom.equalTo(contentView)
            make.centerX.equalTo(contentView)
            make.left.equalTo(contentView)
            make.height.equalTo(45.pix())
        }
        unionLable.snp.makeConstraints { make in
            make.left.equalTo(contentView)
            make.top.equalTo(contentView).offset(12.pix())
            make.right.equalTo(contentView).offset(-40.pix())
        }
        textField1.snp.makeConstraints { make in
            make.bottom.equalTo(contentView)
            make.centerX.equalTo(contentView)
            make.left.equalTo(contentView)
            make.height.equalTo(45.pix())
        }
        rowsetView.snp.makeConstraints { make in
            make.centerY.equalTo(textField1)
            make.right.equalTo(textField1).offset(-15.pix())
            make.size.equalTo(CGSizeMake(14.pix(), 9.pix()))
        }
    }
    
    var model: CravedModel! {
        didSet {
            self.unionLable.text = model.waiters
            self.textField1.placeholder = model.paced
            let typePrime: String = model.prime ?? ""
            self.textField1.text = typePrime.isEmpty ? model.saveStr : model.prime
            if !typePrime.isEmpty {
                model.saveStr = model.prime
            }
            if model.brick != "cty" {
                self.textField1.isEnabled = false
                self.rowsetView.isHidden = false
            }else{
                if model.borne == 1 {
                    self.textField1.keyboardType = .numberPad
                }
                self.textField1.isEnabled = true
                self.rowsetView.isHidden = true
            }
        }
    }
    
    @objc func textFieldEditingChanged(_ textField: UITextField) {
        if textField == textField1 {
            if model != nil {
                model.saveStr = textField1.text
            }
        }
    }
}
