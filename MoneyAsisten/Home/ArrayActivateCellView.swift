//
//  ArrayActivateCellView.swift
//  Catatan
//
//  Created by apple on 2024/3/28.
//

import UIKit

class ArrayActivateCellView: UIView {
    
    var block: (() -> Void)?

    lazy var eagleView: UIView = {
        let eagleView = UIView()
        eagleView.backgroundColor = .white
        eagleView.layer.cornerRadius = 12.pix()
        eagleView.isUserInteractionEnabled = true
        return eagleView
    }()
    
    lazy var rowsetView: UIImageView = {
        let rowsetView = UIImageView()
        rowsetView.isUserInteractionEnabled = true
        return rowsetView
    }()
    
    lazy var iconImageView1: UIImageView = {
        let rowsetView = UIImageView()
        rowsetView.isUserInteractionEnabled = true
        rowsetView.image = UIImage(named: "tabbouleh_zuo_jiantouloukong")
        return rowsetView
    }()
    
    lazy var unionLable: UILabel = {
        let unionLable = UILabel.kabyleMicroFable(font: UIFont(name: checkpointBold, size: 16.pix())!, textColor: .black, textAlignment: .left)
        return unionLable
    }()
    
    lazy var btn: UIButton = {
        let btn = UIButton(type: .custom)
        btn.addTarget(self, action: #selector(alphabeticalDimeBackground), for: .touchUpInside)
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(eagleView)
        eagleView.addSubview(rowsetView)
        eagleView.addSubview(unionLable)
        eagleView.addSubview(iconImageView1)
        eagleView.addSubview(btn)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        eagleView.snp.makeConstraints { make in
            make.bottom.equalTo(self)
            make.centerX.equalTo(self)
            make.left.equalTo(self)
            make.height.equalTo(54.pix())
        }
        rowsetView.snp.makeConstraints { make in
            make.centerY.equalTo(eagleView)
            make.left.equalTo(eagleView).offset(15.pix())
            make.size.equalTo(CGSizeMake(26.pix(), 26.pix()))
        }
        unionLable.snp.makeConstraints { make in
            make.left.equalTo(rowsetView.snp.right).offset(10.pix())
            make.top.bottom.equalTo(eagleView)
            make.right.equalTo(eagleView).offset(-40.pix())
        }
        iconImageView1.snp.makeConstraints { make in
            make.centerY.equalTo(eagleView)
            make.right.equalTo(eagleView).offset(-18.pix())
            make.size.equalTo(CGSize(width: 25.pix(), height: 25.pix()))
        }
        btn.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func alphabeticalDimeBackground() {
        self.block!()
    }
    
}
