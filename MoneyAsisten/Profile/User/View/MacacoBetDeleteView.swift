//
//  MacacoBetDeleteView.swift
//  Catatan
//
//  Created by apple on 2024/3/1.
//

import UIKit

class MacacoBetDeleteView: UIView {

    var block1: (() -> Void)?
    var block2: (() -> Void)?
    var block3: (() -> Void)?

    lazy var eagleView: UIView = {
        let eagleView = UIView()
        eagleView.backgroundColor = UIColor("#F5F5F5")
        return eagleView
    }()
    
    lazy var yachtyView: UIImageView = {
        let yachtyView = UIImageView()
        yachtyView.image = UIImage(named: "menuIconAbd")
        return yachtyView
    }()
    
    lazy var unionLable: UILabel = {
        let unionLable = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 16.pix(), weight: .semibold), textColor: UIColor.black, textAlignment: .left)
        unionLable.text = "Apa kamu yakin?"
        return unionLable
    }()
    
    lazy var nameLable1: UILabel = {
        let unionLable = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 14.pix(), weight: .regular), textColor: UIColor(TITLE_COLOR), textAlignment: .left)
        unionLable.numberOfLines = 0
        let text = "Apakah Anda yakin ingin keluar dari akun Anda? Setelah logout, Anda tidak akan dapat mengakses informasi akun dan data historis Anda.\nJika Anda memutuskan untuk menggunakan aplikasi ini lagi, Anda harus membuat akun baru.Tolong dicatat.\nItem yang dibeli dan keanggotaan tidak dapat dipulihkan.\nData Anda yang tersimpan akan dihapus secara permanen dan tidak dapat dipulihkan."
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 2.pix()
        let attributedText = NSAttributedString(string: text, attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        unionLable.attributedText = attributedText
        return unionLable
    }()
    
    lazy var mainBtn1: UIButton = {
        let button = UIButton(type: .custom)
        button.addTarget(self, action: #selector(imeParameterizeIcon), for: .touchUpInside)
        button.backgroundColor = UIColor("#BBD598")
        button.layer.cornerRadius = 22.pix()
        button.setTitle("Batal", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16.pix(), weight: .medium)
        return button
    }()
    
    lazy var mainBtn2: UIButton = {
        let button = UIButton(type: .custom)
        button.addTarget(self, action: #selector(xmlKaboodleRabbin), for: .touchUpInside)
        button.backgroundColor = UIColor("#FFFFFF")
        button.layer.cornerRadius = 22.pix()
        button.setTitle("Konfirmasi", for: .normal)
        button.setTitleColor(.black, for: .normal)
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
        addSubview(yachtyView)
        addSubview(nabobBtn)
        eagleView.addSubview(unionLable)
        eagleView.addSubview(nameLable1)
        eagleView.addSubview(mainBtn1)
        eagleView.addSubview(mainBtn2)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        eagleView.snp.makeConstraints { make in
            make.left.right.bottom.equalTo(self)
            make.height.equalTo(435.pix())
        }
        yachtyView.snp.makeConstraints { make in
            make.top.equalTo(eagleView).offset(-36.pix())
            make.right.equalTo(eagleView).offset(-12.pix())
            make.size.equalTo(CGSize(width: 112.pix(), height: 93.pix()))
        }
        unionLable.snp.makeConstraints { make in
            make.left.equalTo(eagleView).offset(13.pix())
            make.top.equalTo(eagleView).offset(26.pix())
            make.size.equalTo(CGSizeMake(213.pix(), 37.pix()))
        }
        nameLable1.snp.makeConstraints { make in
            make.left.equalTo(eagleView).offset(13.pix())
            make.top.equalTo(unionLable.snp.bottom).offset(12.pix())
            make.width.equalTo(324.pix())
        }
        mainBtn1.snp.makeConstraints { make in
            make.top.equalTo(nameLable1.snp.bottom).offset(28.pix())
            make.centerX.equalTo(eagleView)
            make.left.equalTo(eagleView).offset(16.pix())
            make.height.equalTo(45.pix())
        }
        mainBtn2.snp.makeConstraints { make in
            make.top.equalTo(mainBtn1.snp.bottom).offset(8.pix())
            make.centerX.equalTo(eagleView)
            make.left.equalTo(eagleView).offset(16.pix())
            make.height.equalTo(45.pix())
        }
        nabobBtn.snp.makeConstraints { make in
            make.top.equalTo(self).offset(CGFloat(STATUSBAR_HIGH) + 20.pix())
            make.right.equalTo(eagleView).offset(-20.pix())
            make.size.equalTo(CGSize(width: 32.pix(), height: 32.pix()))
        }
        eagleView.baalizeBabassuDelegate(corners: [.topLeft,.topRight], radius: 20.pix())
    }
    
    @objc func imeParameterizeIcon() {
        self.block1!()
    }
    
    @objc func xmlKaboodleRabbin() {
        self.block2!()
    }
    
    @objc func livelockKabukiCryptography() {
        self.block3!()
    }

}
