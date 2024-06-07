//
//  KaddishUnboxingCameraView.swift
//  Catatan
//
//  Created by apple on 2024/2/29.
//

import UIKit

class KaddishUnboxingCameraView: UIView {

    var block1: (() -> Void)?
    var block2: (() -> Void)?

    lazy var eagleView: UIView = {
        let eagleView = UIView()
        eagleView.backgroundColor = UIColor("#F5F5F5")
        return eagleView
    }()
    
    lazy var yachtyView: UIImageView = {
        let yachtyView = UIImageView()
        yachtyView.image = UIImage(named: "arbitraryBackAbc")
        return yachtyView
    }()
    
    lazy var unionLable: UILabel = {
        let unionLable = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 16.pix(), weight: .regular), textColor: UIColor.black, textAlignment: .left)
        unionLable.numberOfLines = 0
        unionLable.text = "Silakan unggah foto tanda pengenal yang benar"
        return unionLable
    }()
    
    lazy var bgImageView1: UIImageView = {
        let yachtyView = UIImageView()
        yachtyView.image = UIImage(named: "informationRightAbc")
        return yachtyView
    }()
    
    lazy var lineView: UIView = {
        let lineView = UIView()
        lineView.backgroundColor = UIColor("#979797")
        return lineView
    }()
    
    lazy var nameLable1: UILabel = {
        let unionLable = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 14.pix(), weight: .semibold), textColor: UIColor(TITLE_COLOR), textAlignment: .center)
        unionLable.numberOfLines = 0
        unionLable.text = "Instruksi foto"
        return unionLable
    }()
    
    lazy var lineView1: UIView = {
        let lineView = UIView()
        lineView.backgroundColor = UIColor("#979797")
        return lineView
    }()
    
    lazy var bgImageView2: UIImageView = {
        let yachtyView = UIImageView()
        yachtyView.image = UIImage(named: "computationalOverflowAbcd")
        return yachtyView
    }()
    
    lazy var nameLabel2: UILabel = {
        let sealedLabel = UILabel()
        sealedLabel.textAlignment = .center
        sealedLabel.text = "Perlindungan informasi pribadi"
        sealedLabel.textColor = UIColor(TITLE_COLOR)
        sealedLabel.font = UIFont.systemFont(ofSize: 14.pix(), weight: .semibold)
        return sealedLabel
    }()
    
    lazy var mainBtn1: UIButton = {
        let button = UIButton(type: .custom)
        button.addTarget(self, action: #selector(imeParameterizeIcon), for: .touchUpInside)
        button.backgroundColor = UIColor("#BBD598")
        button.layer.cornerRadius = 22.pix()
        button.setTitle("Memotret", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16.pix(), weight: .medium)
        return button
    }()
    
    lazy var nabobBtn: UIButton = {
        let nabobBtn = UIButton(type: .custom)
        nabobBtn.setImage(UIImage.init(named: "bugPicAbc"), for: .normal)
        nabobBtn.addTarget(self, action: #selector(livelockKabukiCryptography), for: .touchUpInside)
        return nabobBtn
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(eagleView)
        eagleView.addSubview(yachtyView)
        eagleView.addSubview(unionLable)
        eagleView.addSubview(bgImageView1)
        eagleView.addSubview(lineView)
        eagleView.addSubview(nameLable1)
        eagleView.addSubview(lineView1)
        eagleView.addSubview(bgImageView2)
        eagleView.addSubview(nameLabel2)
        eagleView.addSubview(mainBtn1)
        eagleView.addSubview(nabobBtn)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        eagleView.snp.makeConstraints { make in
            make.left.right.bottom.equalTo(self)
            make.height.equalTo(580.pix())
        }
        yachtyView.snp.makeConstraints { make in
            make.top.equalTo(eagleView).offset(31.pix())
            make.left.equalTo(eagleView).offset(20.pix())
            make.size.equalTo(CGSize(width: 124.pix(), height: 83.pix()))
        }
        unionLable.snp.makeConstraints { make in
            make.left.equalTo(yachtyView.snp.right).offset(13.pix())
            make.top.equalTo(eagleView).offset(59.pix())
            make.right.equalTo(eagleView).offset(-21.pix())
            make.height.equalTo(44.pix())
        }
        bgImageView1.snp.makeConstraints { make in
            make.top.equalTo(yachtyView.snp.bottom).offset(13.pix())
            make.left.equalTo(eagleView).offset(28.pix())
            make.height.equalTo(168.pix())
            make.centerX.equalTo(eagleView)
        }
        lineView.snp.makeConstraints { make in
            make.top.equalTo(bgImageView1.snp_bottomMargin).offset(34.pix())
            make.left.equalTo(eagleView).offset(28.pix())
            make.size.equalTo(CGSize(width: 95.pix(), height: 1.pix()))
        }
        lineView1.snp.makeConstraints { make in
            make.top.equalTo(bgImageView1.snp_bottomMargin).offset(34.pix())
            make.right.equalTo(eagleView).offset(-28.pix())
            make.size.equalTo(CGSize(width: 95.pix(), height: 1.pix()))
        }
        nameLable1.snp.makeConstraints { make in
            make.top.equalTo(bgImageView1.snp_bottomMargin).offset(24.pix())
            make.centerX.equalTo(eagleView)
            make.left.equalTo(eagleView)
        }
        bgImageView2.snp.makeConstraints { make in
            make.top.equalTo(nameLable1.snp_bottomMargin).offset(13.pix())
            make.centerX.equalTo(eagleView)
            make.left.equalTo(eagleView).offset(28.pix())
            make.height.equalTo(74.pix())
        }
        nameLabel2.snp.makeConstraints { make in
            make.centerX.equalTo(eagleView)
            make.left.equalTo(eagleView).offset(28.pix())
            make.top.equalTo(bgImageView2.snp.bottom).offset(62.pix())
            make.height.equalTo(20.pix())
        }
        mainBtn1.snp.makeConstraints { make in
            make.top.equalTo(nameLabel2.snp.bottom).offset(10.pix())
            make.centerX.equalTo(eagleView)
            make.left.equalTo(eagleView).offset(16.pix())
            make.height.equalTo(56.pix())
        }
        nabobBtn.snp.makeConstraints { make in
            make.top.equalTo(eagleView).offset(20.pix())
            make.right.equalTo(eagleView).offset(-20.pix())
            make.size.equalTo(CGSize(width: 32.pix(), height: 32.pix()))
        }
        eagleView.baalizeBabassuDelegate(corners: [.topLeft,.topRight], radius: 20.pix())
    }
    
    @objc func imeParameterizeIcon() {
        self.block1!()
    }
    
    @objc func livelockKabukiCryptography() {
        self.block2!()
    }
    
}
