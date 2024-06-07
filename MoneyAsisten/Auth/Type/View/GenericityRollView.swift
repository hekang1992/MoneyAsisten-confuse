//
//  GenericityRollView.swift
//  Catatan
//
//  Created by apple on 2024/2/29.
//

import UIKit
import JXGradientKit

typealias BackBlock = () -> Void
typealias NextBlock = () -> Void
class GenericityRollView: UIView {

    var block:BackBlock?
    
    var block1:NextBlock?
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.contentInsetAdjustmentBehavior = .never
        scrollView.backgroundColor = UIColor("#FFFFFF")
        return scrollView
    }()
    
    lazy var eagleView: GradientView = {
        let eagleView = GradientView()
        let kaboodleColer = UIColor("#E4D7EF")
        let minColer = UIColor("#DEE9CF")
        let accountColer = UIColor("#E2EFF3")
        eagleView.direction = GradientDirection.topToBottom
        eagleView.startColor = kaboodleColer
        eagleView.middleColor = minColer
        eagleView.endColor = accountColer
        return eagleView
    }()
    
    lazy var nabobBtn: UIButton = {
        let nabobBtn = UIButton(type: .custom)
        nabobBtn.setImage(UIImage.init(named: "eaglewoodAddBack"), for: .normal)
        nabobBtn.addTarget(self, action: #selector(alphabeticalDimeBackground), for: .touchUpInside)
        return nabobBtn
    }()
    
    lazy var yachtyView: UIImageView = {
        let yachtyView = UIImageView()
        yachtyView.image = UIImage(named: "screenIconAdc")
        yachtyView.contentMode = .scaleAspectFill
        return yachtyView
    }()
    
    lazy var unionLable: UILabel = {
        let unionLable = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 18.pix(), weight: .medium), textColor: UIColor.black, textAlignment: .left)
        unionLable.numberOfLines = 0
        unionLable.text = "Informasi Identitas Otentikasi Keamanan"
        return unionLable
    }()
    
    lazy var nameLable1: UILabel = {
        let unionLable = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 12.pix(), weight: .regular), textColor: UIColor(TITLE_COLOR), textAlignment: .left)
        unionLable.numberOfLines = 0
        unionLable.text = "Untuk memastikan keamanan dana Anda, Anda perlu memverifikasi informasi identitas Anda"
        return unionLable
    }()
    
    lazy var typeView1: FabricAaronTypeView = {
        let typeView1 = FabricAaronTypeView()
        typeView1.unionLable.text = "Informasi dasar"
        typeView1.nameLable1.text = "Hanya untuk verifikasi identitas"
        return typeView1
    }()
    
    lazy var typeView2: FabricAaronTypeView = {
        let typeView1 = FabricAaronTypeView()
        typeView1.unionLable.text = "Informasi Pekerjaan"
        typeView1.nameLable1.text = "Membantu lulus audit dengan cepat"
        return typeView1
    }()
    
    lazy var typeView3: FabricAaronTypeView = {
        let typeView1 = FabricAaronTypeView()
        typeView1.unionLable.text = "Kontak informasi"
        typeView1.nameLable1.text = "Sekadar untuk kelancaran komunikasi"
        return typeView1
    }()
    
    lazy var typeView4: FabricAaronTypeView = {
        let typeView1 = FabricAaronTypeView()
        typeView1.unionLable.text = "Akun bank"
        typeView1.nameLable1.text = "For settlement of collection amount"
        return typeView1
    }()
    
    lazy var nameLabel4: UILabel = {
        let sealedLabel = UILabel()
        sealedLabel.textAlignment = .center
        sealedLabel.text = "Perlindungan informasi pribadi"
        sealedLabel.textColor = UIColor(TITLE_COLOR)
        sealedLabel.font = UIFont.systemFont(ofSize: 14.pix(), weight: .semibold)
        return sealedLabel
    }()
    
    lazy var mainBtn2: UIButton = {
        let button = UIButton(type: .custom)
        button.addTarget(self, action: #selector(tabasheerRabbinicLibrarian), for: .touchUpInside)
        button.backgroundColor = UIColor("#BBD598")
        button.layer.cornerRadius = 28.pix()
        button.setTitle("Lamar Sekarang", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16.pix(), weight: .medium)
        return button
    }()
    
    lazy var dimeView: RowsetFabricateImageView = {
        let dimeView = RowsetFabricateImageView()
        return dimeView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(scrollView)
        scrollView.addSubview(eagleView)
        eagleView.addSubview(nabobBtn)
        eagleView.addSubview(yachtyView)
        eagleView.addSubview(unionLable)
        eagleView.addSubview(nameLable1)
        eagleView.addSubview(typeView1)
        eagleView.addSubview(typeView2)
        eagleView.addSubview(typeView3)
        eagleView.addSubview(typeView4)
        eagleView.addSubview(nameLabel4)
        eagleView.addSubview(mainBtn2)
        eagleView.addSubview(dimeView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        scrollView.frame = CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT)
        eagleView.frame = CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT)
        nabobBtn.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 44.pix(), height: 44.pix()))
            make.left.equalTo(eagleView)
            make.top.equalTo(eagleView).offset(CGFloat(STATUSBAR_HIGH) + 8.pix())
        }
        yachtyView.snp.makeConstraints { make in
            make.right.top.equalTo(eagleView)
            make.size.equalTo(CGSize(width: 312.pix(), height: 193.pix()))
        }
        unionLable.snp.makeConstraints { make in
            make.left.equalTo(eagleView).offset(26.pix())
            make.top.equalTo(yachtyView.snp.bottom).offset(-22.pix())
            make.size.equalTo(CGSize(width: 183.pix(), height: 50.pix()))
        }
        nameLable1.snp.makeConstraints { make in
            make.left.equalTo(eagleView).offset(26.pix())
            make.top.equalTo(unionLable.snp.bottom)
            make.size.equalTo(CGSize(width: 292.pix(), height: 34.pix()))
        }
        typeView1.snp.makeConstraints { make in
            make.left.equalTo(eagleView).offset(110.pix())
            make.top.equalTo(nameLable1.snp.bottom).offset(32.pix())
            make.size.equalTo(CGSize(width: 240.pix(), height: 44.pix()))
        }
        typeView2.snp.makeConstraints { make in
            make.left.equalTo(eagleView).offset(110.pix())
            make.top.equalTo(typeView1.snp.bottom).offset(66.pix())
            make.size.equalTo(CGSize(width: 240.pix(), height: 44.pix()))
        }
        typeView3.snp.makeConstraints { make in
            make.left.equalTo(eagleView).offset(110.pix())
            make.top.equalTo(typeView2.snp.bottom).offset(66.pix())
            make.size.equalTo(CGSize(width: 240.pix(), height: 44.pix()))
        }
        typeView4.snp.makeConstraints { make in
            make.left.equalTo(eagleView).offset(110.pix())
            make.top.equalTo(typeView3.snp.bottom).offset(66.pix())
            make.size.equalTo(CGSize(width: 240.pix(), height: 44.pix()))
        }
        nameLabel4.snp.makeConstraints { make in
            make.centerX.equalTo(eagleView)
            make.left.equalTo(eagleView).offset(28.pix())
            make.top.equalTo(typeView4.snp.bottom).offset(44.pix())
            make.height.equalTo(20.pix())
        }
        mainBtn2.snp.makeConstraints { make in
            make.top.equalTo(nameLabel4.snp.bottom).offset(10.pix())
            make.centerX.equalTo(eagleView)
            make.left.equalTo(eagleView).offset(16.pix())
            make.height.equalTo(56.pix())
        }
        dimeView.snp.makeConstraints { make in
            make.top.equalTo(nameLable1.snp.bottom).offset(27.pix())
            make.size.equalTo(CGSize(width: 54.pix(), height: 360.pix()))
            make.left.equalTo(eagleView).offset(25.pix())
        }
        self.mainBtn2.setNeedsLayout()
        self.layoutIfNeeded()
        let maxY = self.mainBtn2.frame.maxY
        self.eagleView.frame = CGRectMake(0, 0, SCREEN_WIDTH, maxY + 20.pix())
        self.scrollView.contentSize = CGSize(width: 0, height: maxY + 20.pix())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func alphabeticalDimeBackground() {
        self.block!()
    }
    
    @objc func tabasheerRabbinicLibrarian() {
        self.block1!()
    }
    
}
