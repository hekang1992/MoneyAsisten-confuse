//
//  RabbinJabberListView.swift
//  Catatan
//
//  Created by apple on 2024/3/22.
//

import UIKit

class RabbinJabberListView: UIView {
    
    var block1: (() -> Void)?
    var block2: (() -> Void)?
    var block3: (() -> Void)?
    var block4: (() -> Void)?
    var block5: (() -> Void)?
    lazy var discoView: UIView = {
        let discoView = UIView()
        discoView.backgroundColor = .black.withAlphaComponent(0.3)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped))
        discoView.isUserInteractionEnabled = true
        discoView.addGestureRecognizer(tapGesture)
        return discoView
    }()
    
    lazy var iconImageViwe1: UIImageView = {
        let qdaViwe = UIImageView()
        qdaViwe.image = UIImage(named: "rabaulPicIns")
        return qdaViwe
    }()
    
    lazy var iconImageViwe2: UIImageView = {
        let qdaViwe = UIImageView()
        qdaViwe.image = UIImage(named: "sabaAddIns")
        return qdaViwe
    }()
    
    lazy var eagleView: UIView = {
        let eagleView = UIView()
        eagleView.backgroundColor = .white
        eagleView.layer.cornerRadius = 30.pix()
        return eagleView
    }()
    
    lazy var btn1: UIButton = {
        let btn1 = UIButton(type: .custom)
        btn1.tag = 101
        btn1.addTarget(self, action: #selector(solvingLabellumIaea(_:)), for: .touchUpInside)
        return btn1
    }()
    
    lazy var btn2: UIButton = {
        let btn1 = UIButton(type: .custom)
        btn1.tag = 102
        btn1.addTarget(self, action: #selector(solvingLabellumIaea(_:)), for: .touchUpInside)
        return btn1
    }()
    
    lazy var btn3: UIButton = {
        let btn1 = UIButton(type: .custom)
        btn1.tag = 103
        btn1.addTarget(self, action: #selector(solvingLabellumIaea(_:)), for: .touchUpInside)
        return btn1
    }()
    
    lazy var btn4: UIButton = {
        let btn1 = UIButton(type: .custom)
        btn1.tag = 104
        btn1.addTarget(self, action: #selector(solvingLabellumIaea(_:)), for: .touchUpInside)
        return btn1
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(discoView)
        addSubview(iconImageViwe1)
        addSubview(iconImageViwe2)
        addSubview(eagleView)
        eagleView.addSubview(btn1)
        eagleView.addSubview(btn2)
        eagleView.addSubview(btn3)
        eagleView.addSubview(btn4)
        discoView.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
        iconImageViwe1.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(self).offset(210.pix())
            make.size.equalTo(CGSizeMake(204.pix(), 50.pix()))
        }
        eagleView.snp.makeConstraints { make in
            make.top.equalTo(iconImageViwe1.snp_bottomMargin)
            make.left.equalTo(self).offset(20.pix())
            make.centerX.equalTo(self)
            make.height.equalTo(295.pix())
        }
        iconImageViwe2.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(eagleView.snp_bottomMargin).offset(-40.pix())
            make.size.equalTo(CGSizeMake(204.pix(), 97.pix()))
        }
        btn1.snp.makeConstraints { make in
            make.top.equalTo(eagleView).offset(42.pix())
            make.left.equalTo(eagleView).offset(39.pix())
            make.size.equalTo(CGSizeMake(105.pix(), 96.pix()))
        }
        btn2.snp.makeConstraints { make in
            make.top.equalTo(eagleView).offset(42.pix())
            make.right.equalTo(eagleView).offset(-39.pix())
            make.size.equalTo(CGSizeMake(105.pix(), 96.pix()))
        }
        btn3.snp.makeConstraints { make in
            make.bottom.equalTo(eagleView).offset(-40.pix())
            make.left.equalTo(eagleView).offset(39.pix())
            make.size.equalTo(CGSizeMake(105.pix(), 96.pix()))
        }
        btn4.snp.makeConstraints { make in
            make.bottom.equalTo(eagleView).offset(-40.pix())
            make.right.equalTo(eagleView).offset(-39.pix())
            make.size.equalTo(CGSizeMake(105.pix(), 96.pix()))
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func solvingLabellumIaea(_ sender: UIButton) {
        // Handle button tap
        print("Button tapped")
        switch sender.tag {
        case 101:
            self.block1!()
            break
        case 102:
            self.block2!()
            break
        case 103:
            self.block3!()
            break
        case 104:
            self.block4!()
            break
        default:
            break
        }
    }
    
}

extension RabbinJabberListView {
    @objc func viewTapped() {
        self.block5?()
    }
}
