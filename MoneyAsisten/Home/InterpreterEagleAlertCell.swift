//
//  InterpreterEagleAlertCell.swift
//  Catatan
//
//  Created by apple on 2024/3/29.
//

import UIKit

class InterpreterEagleAlertCell: UITableViewCell {

    lazy var eagleView: UIView = {
        let eagleView = UIView()
        eagleView.backgroundColor = UIColor("#CEE7FF")
        eagleView.layer.cornerRadius = 12.pix()
        return eagleView
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
        eagleView.addSubview(titleLabel1)
        eagleView.addSubview(titleLabel2)
        eagleView.addSubview(titleLabel3)
        eagleView.snp.makeConstraints { make in
            make.centerX.equalTo(contentView)
            make.bottom.equalTo(contentView)
            make.left.equalTo(contentView).offset(20.pix())
            make.height.equalTo(59.pix())
        }
        titleLabel1.snp.makeConstraints { make in
            make.left.equalTo(eagleView).offset(16.pix())
            make.top.equalTo(eagleView).offset(14.pix())
            make.height.equalTo(19.pix())
        }
        titleLabel2.snp.makeConstraints { make in
            make.left.equalTo(titleLabel1.snp.left)
            make.top.equalTo(titleLabel1.snp.bottom)
            make.height.equalTo(25.pix())
        }
        titleLabel3.snp.makeConstraints { make in
            make.right.equalTo(eagleView).offset(-20.pix())
            make.centerY.equalTo(eagleView)
            make.height.equalTo(25.pix())
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    var model: IncomesModel? {
        didSet {
            titleLabel1.text = model?.addressname
            titleLabel2.text = model?.property
            titleLabel3.text = model?.chests
        }
    }
    
    var cabanaIndex: Int? {
        didSet {
            if cabanaIndex == 1 {
                eagleView.backgroundColor = UIColor("#CEE7FF")
            }else if cabanaIndex == 2 {
                eagleView.backgroundColor = UIColor("#FFE1C0")
            }else if cabanaIndex == 3 {
                eagleView.backgroundColor = UIColor("#DFF9BE")
            }else {
                eagleView.backgroundColor = UIColor("#A4ACC5")
            }
        }
    }
    
}
