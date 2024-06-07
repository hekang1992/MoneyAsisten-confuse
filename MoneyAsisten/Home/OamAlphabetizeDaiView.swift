//
//  OamAlphabetizeDaiView.swift
//  DanaCatatan
//
//  Created by apple on 2024/4/9.
//

import UIKit

class OamAlphabetizeDaiView: UIView {
    
    var block: (() -> Void)?
    
    lazy var btn: UIButton = {
        let btn = UIButton(type: .custom)
        btn.addTarget(self, action: #selector(alphabeticalDimeBackground), for: .touchUpInside)
        return btn
    }()

    lazy var polygonView: UIView = {
        let polygonView = UIView()
        polygonView.backgroundColor = .white
        polygonView.layer.cornerRadius = 12.pix()
        return polygonView
    }()
    
    lazy var label: UILabel = {
        let label = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 12.pix(), weight: .regular), textColor: UIColor("#000000"), textAlignment: .left)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var label1: UILabel = {
        let label1 = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 12.pix(), weight: .regular), textColor: UIColor("#000000"), textAlignment: .center)
        label1.layer.cornerRadius = 7.pix()
        label1.layer.masksToBounds = true
        label1.backgroundColor = UIColor("#BBD598")
        return label1
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(polygonView)
        polygonView.addSubview(label)
        polygonView.addSubview(label1)
        polygonView.addSubview(btn)
        polygonView.snp.makeConstraints { make in
            make.center.equalTo(self)
            make.left.equalTo(self).offset(16.pix())
            make.height.equalTo(80.pix())
        }
        label.snp.makeConstraints { make in
            make.left.equalTo(polygonView).offset(17.pix())
            make.center.equalTo(polygonView)
        }
        label1.snp.makeConstraints { make in
            make.top.equalTo(polygonView).offset(15.pix())
            make.right.equalTo(polygonView).offset(-17.pix())
            make.size.equalTo(CGSizeMake(94.pix(), 28.pix()))
        }
        btn.snp.makeConstraints { make in
            make.edges.equalTo(polygonView)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func alphabeticalDimeBackground() {
        self.block!()
    }
    
}
