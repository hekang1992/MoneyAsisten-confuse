//
//  BaaroqueWildcardViewCell.swift
//  Catatan
//
//  Created by apple on 2024/3/11.
//

import UIKit

class BaaroqueWildcardViewCell: UITableViewCell {
    
    var block1: (() -> Void)?
    
    var block2: (() -> Void)?

    var model: IncomesModel! {
        didSet {
            sealedLabel.text = model.yearly
            nameLabel1.text = "Relasi"
            nameLabel2.text = "Nama"
            nameLabel3.text = "Nomor telepon"
            nameLabel4.text = ((model.saveStr?.isEmpty) != false) ? "Sila Pilih" : model.saveStr
            nameLabel5.text = ((model.conjured?.isEmpty) != false) ? "Silakan Masukkan" : model.conjured
            nameLabel6.text = ((model.female?.isEmpty) != false) ? "Silakan Masukkan" : model.female
            if model.saveStr?.isEmpty == false {
                nameLabel4.textColor = .black
            }
            if model.conjured?.isEmpty == false {
                nameLabel5.textColor = .black
                nameLabel6.textColor = .black
            }
        }
    }
    
    lazy var btn1: UIButton = {
        let btn = UIButton(type: .custom)
        btn.addTarget(self, action: #selector(calendarMacaberWadable), for: .touchUpInside)
        return btn
    }()
    
    lazy var btn2: UIButton = {
        let btn = UIButton(type: .custom)
        btn.addTarget(self, action: #selector(savepointGuiCharacter), for: .touchUpInside)
        return btn
    }()
    
    lazy var eagleView: UIView = {
        let eagleView = UIView()
        eagleView.backgroundColor = .white
        eagleView.layer.cornerRadius = 18.pix()
        return eagleView
    }()
    
    lazy var lineView: UIView = {
        let eagleView = UIView()
        eagleView.backgroundColor = UIColor(TITLE_COLOR)
        return eagleView
    }()
    
    lazy var sealedLabel: UILabel = {
        let sealedLabel = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 16.pix(), weight: .medium), textColor: .black, textAlignment: .left)
        return sealedLabel
    }()
    
    lazy var nameLabel1: UILabel = {
        let sealedLabel = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 14.pix(), weight: .regular), textColor: .black, textAlignment: .left)
        return sealedLabel
    }()
    
    lazy var nameLabel2: UILabel = {
        let sealedLabel = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 14.pix(), weight: .regular), textColor: .black, textAlignment: .left)
        return sealedLabel
    }()
    
    lazy var nameLabel3: UILabel = {
        let sealedLabel = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 14.pix(), weight: .regular), textColor: .black, textAlignment: .left)
        return sealedLabel
    }()
    
    lazy var nameLabel4: UILabel = {
        let sealedLabel = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 14.pix(), weight: .regular), textColor: UIColor(TITLE_COLOR), textAlignment: .right)
        return sealedLabel
    }()
    
    lazy var nameLabel5: UILabel = {
        let sealedLabel = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 14.pix(), weight: .regular), textColor: UIColor(TITLE_COLOR), textAlignment: .right)
        return sealedLabel
    }()
    
    lazy var nameLabel6: UILabel = {
        let sealedLabel = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 14.pix(), weight: .regular), textColor: UIColor(TITLE_COLOR), textAlignment: .right)
        return sealedLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(eagleView)
        eagleView.addSubview(sealedLabel)
        eagleView.addSubview(nameLabel1)
        eagleView.addSubview(lineView)
        eagleView.addSubview(nameLabel2)
        eagleView.addSubview(nameLabel3)
        eagleView.addSubview(nameLabel4)
        eagleView.addSubview(nameLabel5)
        eagleView.addSubview(nameLabel6)
        eagleView.addSubview(btn1)
        eagleView.addSubview(btn2)
        
        eagleView.snp.makeConstraints { make in
            make.top.equalTo(contentView)
            make.left.equalTo(contentView).offset(16.pix())
            make.centerX.equalTo(contentView)
            make.height.equalTo(163.pix())
        }
        sealedLabel.snp.makeConstraints { make in
            make.top.equalTo(eagleView).offset(16.pix())
            make.left.equalTo(eagleView).offset(20.pix())
            make.height.equalTo(22.pix())
        }
        nameLabel1.snp.makeConstraints { make in
            make.top.equalTo(sealedLabel.snp.bottom).offset(14.pix())
            make.left.equalTo(eagleView).offset(20.pix())
            make.height.equalTo(22.pix())
        }
        lineView.snp.makeConstraints { make in
            make.centerX.equalTo(eagleView)
            make.left.equalTo(eagleView).offset(20.pix())
            make.height.equalTo(1.pix())
            make.top.equalTo(nameLabel1.snp.bottom).offset(14.pix())
        }
        nameLabel2.snp.makeConstraints { make in
            make.top.equalTo(nameLabel1.snp.bottom).offset(29.pix())
            make.left.equalTo(eagleView).offset(20.pix())
            make.height.equalTo(22.pix())
        }
        nameLabel3.snp.makeConstraints { make in
            make.top.equalTo(nameLabel2.snp.bottom).offset(6.pix())
            make.left.equalTo(eagleView).offset(20.pix())
            make.height.equalTo(22.pix())
        }
        nameLabel4.snp.makeConstraints { make in
            make.top.equalTo(sealedLabel.snp.bottom).offset(14.pix())
            make.right.equalTo(eagleView).offset(-20.pix())
            make.height.equalTo(22.pix())
        }
        nameLabel5.snp.makeConstraints { make in
            make.top.equalTo(nameLabel1.snp.bottom).offset(29.pix())
            make.right.equalTo(eagleView).offset(-20.pix())
            make.height.equalTo(22.pix())
        }
        nameLabel6.snp.makeConstraints { make in
            make.top.equalTo(nameLabel2.snp.bottom).offset(6.pix())
            make.right.equalTo(eagleView).offset(-20.pix())
            make.height.equalTo(22.pix())
        }
        btn1.snp.makeConstraints { make in
            make.left.right.top.equalTo(eagleView)
            make.bottom.equalTo(lineView.snp.top)
        }
        btn2.snp.makeConstraints { make in
            make.left.right.bottom.equalTo(eagleView)
            make.top.equalTo(lineView.snp.bottom)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func calendarMacaberWadable() {
        self.block1!()
    }
    
    @objc func savepointGuiCharacter() {
        self.block2!()
    }
    
}
