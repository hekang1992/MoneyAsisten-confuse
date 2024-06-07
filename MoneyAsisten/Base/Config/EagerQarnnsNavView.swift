//
//  EagerQarnnsNavView.swift
//  Catatan
//
//  Created by apple on 2024/2/29.
//

import UIKit

class EagerQarnnsNavView: UIView {
    
    var block: (() -> Void)?
    
    lazy var eagleView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.clear
        return view
    }()
    
    lazy var nabobBtn: UIButton = {
        let nabobBtn = UIButton(type: .custom)
        nabobBtn.setImage(UIImage.init(named: "eaglewoodAddBack"), for: .normal)
        nabobBtn.addTarget(self, action: #selector(aalAccordionistIab), for: .touchUpInside)
        return nabobBtn
    }()
    
    lazy var sealedLabel: UILabel = {
        let sealedLabel = UILabel()
        sealedLabel.textAlignment = .left
        sealedLabel.text = ""
        sealedLabel.textColor = .black
        sealedLabel.font = UIFont.systemFont(ofSize: 16.pix(), weight: .semibold)
        return sealedLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sortingOpenLongest()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        sortingOpenLongest()
    }
    
    private func sortingOpenLongest() {
        addSubview(eagleView)
        eagleView.addSubview(nabobBtn)
        eagleView.addSubview(sealedLabel)
        
        eagleView.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
        
        nabobBtn.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 50.pix(), height: 50.pix()))
            make.left.bottom.equalTo(eagleView)
        }
        
        sealedLabel.snp.makeConstraints { make in
            make.centerX.equalTo(eagleView)
            make.top.equalTo(nabobBtn.snp.top).offset(12.pix())
            make.height.equalTo(22.pix())
        }
    }
    
    @objc func aalAccordionistIab() {
        block?()
    }
    
}
