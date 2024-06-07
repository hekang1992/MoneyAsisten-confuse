//
//  JabberwockyTabasheerAboutView.swift
//  Catatan
//
//  Created by apple on 2024/3/1.
//

import UIKit

class JabberwockyTabasheerAboutView: UIView {
    
    var block:(() -> Void)?

    lazy var eagleView: UIView = {
        let eagleView = UIView()
        eagleView.backgroundColor = .white
        eagleView.layer.cornerRadius = 12.pix()
        return eagleView
    }()
    
    lazy var rowsetView: UIImageView = {
        let rowsetView = UIImageView()
        return rowsetView
    }()
    
    lazy var iconImageView1: UIImageView = {
        let rowsetView = UIImageView()
        rowsetView.image = UIImage(named: "tabaretRightIocn")
        return rowsetView
    }()
    
    lazy var unionLable: UILabel = {
        let unionLable = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 16, weight: .semibold), textColor: .black, textAlignment: .left)
        unionLable.numberOfLines = 0
        return unionLable
    }()
    
    lazy var dachshundBtn: UIButton = {
        let dachshundBtn = UIButton(type: .custom)
        dachshundBtn.addTarget(self, action: #selector(alphabeticalDimeBackground), for: .touchUpInside)
        return dachshundBtn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(eagleView)
        eagleView.addSubview(rowsetView)
        eagleView.addSubview(unionLable)
        eagleView.addSubview(iconImageView1)
        eagleView.addSubview(dachshundBtn)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        eagleView.snp.makeConstraints { make in
            make.bottom.equalTo(self)
            make.centerX.equalTo(self)
            make.left.equalTo(self).offset(26.pix())
            make.height.equalTo(89.pix())
        }
        rowsetView.snp.makeConstraints { make in
            make.centerY.equalTo(eagleView)
            make.left.equalTo(eagleView).offset(20)
            make.size.equalTo(CGSizeMake(38, 38))
        }
        unionLable.snp.makeConstraints { make in
            make.left.equalTo(rowsetView.snp.right).offset(10)
            make.top.bottom.equalTo(eagleView)
            make.right.equalTo(eagleView).offset(-40.pix())
        }
        iconImageView1.snp.makeConstraints { make in
            make.centerY.equalTo(eagleView)
            make.right.equalTo(eagleView).offset(-18.pix())
            make.size.equalTo(CGSize(width: 19.pix(), height: 11.pix()))
        }
        dachshundBtn.snp.makeConstraints { make in
            make.edges.equalTo(eagleView)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc func alphabeticalDimeBackground() {
        self.block!()
    }
    
}
