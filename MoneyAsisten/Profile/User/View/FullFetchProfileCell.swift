//
//  FullFetchProfileCell.swift
//  Catatan
//
//  Created by apple on 2024/3/1.
//

import UIKit

class FullFetchProfileCell: UITableViewCell {
    
    lazy var eagleView: UIView = {
        let eagleView = UIView()
        eagleView.backgroundColor = .white
        eagleView.layer.cornerRadius = 12.pix()
        return eagleView
    }()
    
    lazy var rowsetView: UIImageView = {
        let rowsetView = UIImageView()
        rowsetView.image = UIImage(named: "equivalentLeftIconabc")
        return rowsetView
    }()
    
    lazy var iconImageView1: UIImageView = {
        let rowsetView = UIImageView()
        rowsetView.image = UIImage(named: "wackoImageAbc")
        return rowsetView
    }()
    
    lazy var unionLable: UILabel = {
        let unionLable = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 16, weight: .regular), textColor: .black, textAlignment: .left)
        unionLable.numberOfLines = 0
        return unionLable
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(eagleView)
        eagleView.addSubview(rowsetView)
        eagleView.addSubview(unionLable)
        eagleView.addSubview(iconImageView1)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        eagleView.snp.makeConstraints { make in
            make.bottom.equalTo(contentView)
            make.centerX.equalTo(contentView)
            make.left.equalTo(contentView).offset(26.pix())
            make.height.equalTo(60.pix())
        }
        rowsetView.snp.makeConstraints { make in
            make.centerY.equalTo(eagleView)
            make.left.equalTo(eagleView).offset(12)
            make.size.equalTo(CGSizeMake(26.pix(), 26.pix()))
        }
        unionLable.snp.makeConstraints { make in
            make.left.equalTo(rowsetView.snp.right).offset(10)
            make.top.bottom.equalTo(eagleView)
            make.right.equalTo(eagleView).offset(-40.pix())
        }
        iconImageView1.snp.makeConstraints { make in
            make.centerY.equalTo(eagleView)
            make.right.equalTo(eagleView).offset(-18.pix())
            make.size.equalTo(CGSize(width: 7.pix(), height: 11.pix()))
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
