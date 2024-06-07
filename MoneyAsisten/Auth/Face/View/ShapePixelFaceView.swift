//
//  ShapePixelFaceView.swift
//  Catatan
//
//  Created by apple on 2024/2/29.
//

import UIKit
import JXGradientKit

typealias PhotoBlock = () -> Void
class ShapePixelFaceView: UIView {
    
    var block1: PhotoBlock?
    var block2: PhotoBlock?
    var block3: PhotoBlock?
    
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
    
    lazy var sealedLabel: UILabel = {
        let sealedLabel = UILabel()
        sealedLabel.textAlignment = .left
        sealedLabel.text = "Tanda pengenal"
        sealedLabel.textColor = .black
        sealedLabel.font = UIFont.systemFont(ofSize: 22.pix(), weight: .semibold)
        return sealedLabel
    }()
    
    lazy var nameLabel1: UILabel = {
        let sealedLabel = UILabel()
        sealedLabel.textAlignment = .center
        sealedLabel.text = "Hanya untuk verifikasi identitas"
        sealedLabel.textColor = UIColor(TITLE_COLOR)
        sealedLabel.font = UIFont.systemFont(ofSize: 12.pix(), weight: .regular)
        return sealedLabel
    }()
    
    lazy var nameLabel2: UILabel = {
        let sealedLabel = UILabel()
        sealedLabel.textAlignment = .left
        sealedLabel.text = "KTP"
        sealedLabel.textColor = UIColor(TITLE_COLOR)
        sealedLabel.font = UIFont.systemFont(ofSize: 16.pix(), weight: .regular)
        return sealedLabel
    }()
    
    lazy var rowsetView: UIImageView = {
        let rowsetView = UIImageView()
        rowsetView.image = UIImage(named: "xanthicPicAbc")
        rowsetView.contentMode = .scaleAspectFill
        return rowsetView
    }()
    
    lazy var transactionalBtn: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "macadamizeBackAbc"), for: .normal)
        button.addTarget(self, action: #selector(habatsuCaballoBrowser), for: .touchUpInside)
        return button
    }()
    
    lazy var nameLabel3: UILabel = {
        let sealedLabel = UILabel()
        sealedLabel.textAlignment = .left
        sealedLabel.text = "Pengenalan wajah"
        sealedLabel.textColor = UIColor(TITLE_COLOR)
        sealedLabel.font = UIFont.systemFont(ofSize: 16.pix(), weight: .regular)
        return sealedLabel
    }()
    
    lazy var mainBtn1: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "informationRightAbc"), for: .normal)
        button.addTarget(self, action: #selector(sabaUbangiPacha), for: .touchUpInside)
        return button
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
        button.setTitle("Konfirmasi", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16.pix(), weight: .medium)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(scrollView)
        scrollView.addSubview(eagleView)
        eagleView.addSubview(sealedLabel)
        eagleView.addSubview(nameLabel1)
        eagleView.addSubview(rowsetView)
        eagleView.addSubview(nameLabel2)
        eagleView.addSubview(transactionalBtn)
        eagleView.addSubview(nameLabel3)
        eagleView.addSubview(mainBtn1)
        eagleView.addSubview(nameLabel4)
        eagleView.addSubview(mainBtn2)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        scrollView.frame = CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT)
        eagleView.frame = CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT)
        sealedLabel.snp.makeConstraints { make in
            make.left.equalTo(eagleView).offset(28.pix())
            make.top.equalTo(eagleView).offset(CGFloat(NAV_HIGH) + 23.pix())
            make.size.equalTo(CGSize(width: 168.pix(), height: 30.pix()))
        }
        nameLabel1.snp.makeConstraints { make in
            make.left.equalTo(eagleView).offset(28.pix())
            make.top.equalTo(sealedLabel.snp.bottom).offset(6.pix())
            make.size.equalTo(CGSize(width: 180.pix(), height: 17.pix()))
        }
        rowsetView.snp.makeConstraints { make in
            make.top.equalTo(eagleView).offset(CGFloat(NAV_HIGH) + 11.pix())
            make.size.equalTo(CGSize(width: 150.pix(), height: 105.pix()))
            make.right.equalTo(eagleView).offset(-14.pix())
        }
        nameLabel2.snp.makeConstraints { make in
            make.left.equalTo(eagleView).offset(28.pix())
            make.top.equalTo(nameLabel1.snp.bottom).offset(20.pix())
            make.size.equalTo(CGSize(width: 64.pix(), height: 22.pix()))
        }
        transactionalBtn.snp.makeConstraints { make in
            make.top.equalTo(rowsetView.snp.bottom).offset(19.pix())
            make.centerX.equalTo(eagleView)
            make.left.equalTo(eagleView).offset(28.pix())
            make.height.equalTo(168.pix())
        }
        nameLabel3.snp.makeConstraints { make in
            make.left.equalTo(eagleView).offset(28.pix())
            make.top.equalTo(transactionalBtn.snp.bottom).offset(22.pix())
            make.size.equalTo(CGSize(width: 264.pix(), height: 22.pix()))
        }
        mainBtn1.snp.makeConstraints { make in
            make.top.equalTo(nameLabel3.snp.bottom).offset(13.pix())
            make.centerX.equalTo(eagleView)
            make.left.equalTo(eagleView).offset(28.pix())
            make.height.equalTo(168.pix())
        }
        nameLabel4.snp.makeConstraints { make in
            make.centerX.equalTo(eagleView)
            make.left.equalTo(eagleView).offset(28.pix())
            make.top.equalTo(mainBtn1.snp.bottom).offset(68.pix())
            make.height.equalTo(20.pix())
        }
        mainBtn2.snp.makeConstraints { make in
            make.top.equalTo(nameLabel4.snp.bottom).offset(10.pix())
            make.centerX.equalTo(eagleView)
            make.left.equalTo(eagleView).offset(16.pix())
            make.height.equalTo(56.pix())
        }
        self.mainBtn2.setNeedsLayout()
        self.layoutIfNeeded()
        let maxY = self.mainBtn2.frame.maxY
        self.eagleView.frame = CGRectMake(0, 0, SCREEN_WIDTH, maxY + 60.pix())
        self.scrollView.contentSize = CGSize(width: 0, height: maxY + 60.pix())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func habatsuCaballoBrowser() {
        self.block1!()
    }
    
    @objc func sabaUbangiPacha() {
        self.block2!()
    }
    
    @objc func tabasheerRabbinicLibrarian() {
        self.block3!()
    }

}
