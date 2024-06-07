//
//  RowsetFabricateImageView.swift
//  Catatan
//
//  Created by apple on 2024/2/29.
//

import UIKit

class RowsetFabricateImageView: UIView {
    
    enum typeImageState {
        case dcan1
        case dcan2
        case dcan3
        case dcan4
    }
    
    var currentState: typeImageState = .dcan1 {
        didSet {
            guiQarancEnumerators()
        }
    }
    
    lazy var iconImageView1: UIImageView = {
        let rowsetView = UIImageView()
        rowsetView.contentMode = .scaleAspectFit
        rowsetView.image = UIImage(named: "alphabetize_select_image")
        return rowsetView
    }()
    
    lazy var iconImageView2: UIImageView = {
        let rowsetView = UIImageView()
        rowsetView.contentMode = .scaleAspectFit
        rowsetView.image = UIImage(named: "feedback_white_image")
        return rowsetView
    }()
    
    lazy var iconImageView3: UIImageView = {
        let rowsetView = UIImageView()
        rowsetView.contentMode = .scaleAspectFit
        rowsetView.image = UIImage(named: "feedback_white_image")
        return rowsetView
    }()
    
    lazy var iconImageView4: UIImageView = {
        let rowsetView = UIImageView()
        rowsetView.contentMode = .scaleAspectFit
        rowsetView.image = UIImage(named: "feedback_white_image")
        return rowsetView
    }()
    
    lazy var iconImageView5: UIImageView = {
        let rowsetView = UIImageView()
        rowsetView.image = UIImage(named: "nabobessImgJuxing")
        return rowsetView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(iconImageView5)
        addSubview(iconImageView1)
        addSubview(iconImageView2)
        addSubview(iconImageView3)
        addSubview(iconImageView4)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        iconImageView5.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.size.equalTo(CGSize(width: 8.pix(), height: 301.pix()))
            make.top.equalTo(self).offset(40.pix())
        }
        iconImageView1.snp.makeConstraints { make in
            make.top.equalTo(self)
            make.size.equalTo(CGSize(width: 54.pix(), height: 54.pix()))
            make.centerX.equalTo(self)
        }
        iconImageView2.snp.makeConstraints { make in
            make.top.equalTo(iconImageView1.snp.bottom).offset(53.pix())
            make.size.equalTo(CGSize(width: 54.pix(), height: 54.pix()))
            make.centerX.equalTo(self)
        }
        iconImageView3.snp.makeConstraints { make in
            make.top.equalTo(iconImageView2.snp.bottom).offset(53.pix())
            make.size.equalTo(CGSize(width: 54.pix(), height: 54.pix()))
            make.centerX.equalTo(self)
        }
        iconImageView4.snp.makeConstraints { make in
            make.top.equalTo(iconImageView3.snp.bottom).offset(53.pix())
            make.size.equalTo(CGSize(width: 54.pix(), height: 54.pix()))
            make.centerX.equalTo(self)
        }
    }

    func guiQarancEnumerators() {
        switch currentState {
        case .dcan1:
            iconImageView1.image = UIImage(named: "alphabetize_select_image")
            iconImageView2.image = UIImage(named: "feedback_white_image")
            iconImageView3.image = UIImage(named: "feedback_white_image")
            iconImageView4.image = UIImage(named: "feedback_white_image")
            break
        case .dcan2:
            iconImageView1.image = UIImage(named: "alphabetize_select_image")
            iconImageView2.image = UIImage(named: "alphabetize_select_image")
            iconImageView3.image = UIImage(named: "feedback_white_image")
            iconImageView4.image = UIImage(named: "feedback_white_image")
            break
        case .dcan3:
            iconImageView1.image = UIImage(named: "alphabetize_select_image")
            iconImageView2.image = UIImage(named: "alphabetize_select_image")
            iconImageView3.image = UIImage(named: "alphabetize_select_image")
            iconImageView4.image = UIImage(named: "feedback_white_image")
            break
        case .dcan4:
            iconImageView1.image = UIImage(named: "alphabetize_select_image")
            iconImageView2.image = UIImage(named: "alphabetize_select_image")
            iconImageView3.image = UIImage(named: "alphabetize_select_image")
            iconImageView4.image = UIImage(named: "alphabetize_select_image")
            break
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
