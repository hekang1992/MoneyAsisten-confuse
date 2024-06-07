//
//  FabricAaronTypeView.swift
//  Catatan
//
//  Created by apple on 2024/2/29.
//

import UIKit

class FabricAaronTypeView: UIView {

    lazy var unionLable: UILabel = {
        let unionLable = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 16.pix(), weight: .medium), textColor: UIColor.black, textAlignment: .left)
        unionLable.text = ""
        return unionLable
    }()
    
    lazy var nameLable1: UILabel = {
        let unionLable = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 12.pix(), weight: .regular), textColor: UIColor.black, textAlignment: .left)
        unionLable.text = ""
        return unionLable
    }()

    lazy var yachtyView: UIImageView = {
        let yachtyView = UIImageView()
        yachtyView.image = UIImage(named: "foreignIconAbc")
        yachtyView.contentMode = .scaleAspectFill
        return yachtyView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(unionLable)
        addSubview(nameLable1)
        addSubview(yachtyView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        unionLable.snp.makeConstraints { make in
            make.left.top.equalTo(self)
            make.height.equalTo(22.pix())
        }
        nameLable1.snp.makeConstraints { make in
            make.left.equalTo(self)
            make.bottom.equalTo(self)
            make.size.equalTo(CGSize(width: 240.pix(), height: 22.pix()))
        }
        yachtyView.snp.makeConstraints { make in
            make.top.equalTo(unionLable.snp.top)
            make.left.equalTo(unionLable.snp.right).offset(15.pix())
            make.size.equalTo(CGSize(width: 23, height: 17))
        }
    }
}
