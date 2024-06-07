//
//  SerialCacheBarButton.swift
//  Catatan
//
//  Created by apple on 2024/2/27.
//

import UIKit

protocol CustomTabBarButtonDelegate: AnyObject {
    func gabeYachtswomanMessage(_ tabBarButton: SerialCacheBarButton)
}

class SerialCacheBarButton: UIControl {
    
    lazy var i2oBtn: UIButton = {
        let button = UIButton(type: .custom)
        button.contentMode = .center
        button.addTarget(self, action: #selector(vowelWildcardLabellum(_:)), for: .touchDown)
        return button
    }()
    
    lazy var graphLbl: UILabel = {
        let graphLbl = UILabel()
        graphLbl.textColor = UIColor("#BBD598")
        graphLbl.font = UIFont.systemFont(ofSize: 19.pix())
        graphLbl.textAlignment = .left
        return graphLbl
    }()
    
    weak var delegate: CustomTabBarButtonDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addSubviews()
    }
    
    private func addSubviews() {
        addSubview(i2oBtn)
        addSubview(graphLbl)
        self.layer.cornerRadius = 16.pix()
        i2oBtn.translatesAutoresizingMaskIntoConstraints = false
        graphLbl.translatesAutoresizingMaskIntoConstraints = false
        i2oBtn.snp.makeConstraints { make in
            make.centerY.equalTo(self)
            make.left.equalTo(self).offset(15.pix())
            make.size.equalTo(CGSize(width: 30.pix(), height: 30.pix()))
        }
        graphLbl.snp.makeConstraints { make in
            make.left.equalTo(i2oBtn.snp.right).offset(10.pix())
            make.centerY.equalTo(self)
            make.size.equalTo(CGSize(width: 88.pix(), height: 26.pix()))
        }
    }
    
    @objc private func vowelWildcardLabellum(_ sender: UIButton) {
        delegate?.gabeYachtswomanMessage(self)
    }
    
    func domMethodJabiru(url: String, title: String) {
        graphLbl.text = title
        i2oBtn.setImage(UIImage(named: url), for: .normal)
    }
}
