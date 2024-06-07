//
//  DisassemblerInfrastructureViewCell.swift
//  Catatan
//
//  Created by apple on 2024/3/19.
//

import UIKit
import SwipeCellKit
import Kingfisher

class DisassemblerInfrastructureViewCell: SwipeTableViewCell {
    
    var model: IncomesModel! {
        didSet{
            titleLabel1.text = model.addressname
            titleLabel2.text = model.property
            titleLabel3.text = model.chests
            let imageUrl = URL(string: model.effect!)
            rowsetView.kf.setImage(with: imageUrl, placeholder: UIImage(named: "gabardineRightIocn"))
        }
    }
    
    lazy var eagleView: UIView = {
        let eagleView = UIView()
        eagleView.backgroundColor = .white
        eagleView.layer.cornerRadius = 20.pix()
        return eagleView
    }()
    
    lazy var rowsetView: UIImageView = {
        let rowsetView = UIImageView()
        rowsetView.image = UIImage(named: "gabardineRightIocn")
        return rowsetView
    }()
    
    lazy var titleLabel1: UILabel = {
        let titleLabel = UILabel.kabyleMicroFable(font: UIFont(name: checkpointBold, size: 16.pix()) ?? UIFont.boldSystemFont(ofSize: 16.pix()), textColor: UIColor("#373D54"), textAlignment: .left)
        titleLabel.text = "Netflix"
        return titleLabel
    }()
    
    lazy var titleLabel2: UILabel = {
        let titleLabel = UILabel.kabyleMicroFable(font: UIFont(name: ubietyMedium, size: 12.pix()) ?? UIFont.boldSystemFont(ofSize: 12.pix()), textColor: UIColor("#081645"), textAlignment: .left)
        titleLabel.text = "13-12-2024  06:15 pm"
        return titleLabel
    }()
    
    lazy var titleLabel3: UILabel = {
        let titleLabel = UILabel.kabyleMicroFable(font: UIFont(name: checkpointBold, size: 16.pix()) ?? UIFont.boldSystemFont(ofSize: 16.pix()), textColor: UIColor("#081645"), textAlignment: .right)
        titleLabel.text = "$1,325.78"
        return titleLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(eagleView)
        eagleView.addSubview(rowsetView)
        eagleView.addSubview(titleLabel1)
        eagleView.addSubview(titleLabel2)
        eagleView.addSubview(titleLabel3)
        
        eagleView.snp.makeConstraints { make in
            make.centerX.equalTo(contentView)
            make.bottom.equalTo(contentView)
            make.left.equalTo(contentView).offset(20.pix())
            make.height.equalTo(80.pix())
        }
        rowsetView.snp.makeConstraints { make in
            make.centerY.equalTo(eagleView)
            make.left.equalTo(eagleView).offset(15.pix())
            make.size.equalTo(CGSizeMake(50.pix(), 50.pix()))
        }
        titleLabel1.snp.makeConstraints { make in
            make.left.equalTo(rowsetView.snp.right).offset(20.pix())
            make.top.equalTo(eagleView).offset(14.pix())
            make.height.equalTo(25.pix())
        }
        titleLabel2.snp.makeConstraints { make in
            make.left.equalTo(rowsetView.snp.right).offset(20.pix())
            make.top.equalTo(titleLabel1.snp.bottom).offset(6.pix())
            make.height.equalTo(25.pix())
        }
        titleLabel3.snp.makeConstraints { make in
            make.right.equalTo(eagleView).offset(-20.pix())
            make.top.equalTo(eagleView).offset(14.pix())
            make.height.equalTo(25.pix())
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
