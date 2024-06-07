//
//  UnderflowTaberdarNodataView.swift
//  Catatan
//
//  Created by apple on 2024/3/28.
//

import UIKit

class UnderflowTaberdarNodataView: UIView {
    
    lazy var eagleView: UIView = {
        let eagleView = UIView()
        eagleView.backgroundColor = UIColor("#F4F8EE")
        return eagleView
    }()

    lazy var icon: UIImageView = {
        let icon = UIImageView()
        icon.contentMode = .scaleAspectFit
        icon.image = UIImage(named: "macacoAddNonodata")
        return icon
    }()
    
    lazy var label: UILabel = {
        let label = UILabel.kabyleMicroFable(font: UIFont(name: ubietyMedium, size: 16.pix())!, textColor: UIColor("#C9C9C9"), textAlignment: .center)
        label.text = "There is currently no bill"
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(eagleView)
        eagleView.addSubview(icon)
        eagleView.addSubview(label)
        eagleView.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
        icon.snp.makeConstraints { make in
            make.centerX.equalTo(eagleView)
            make.top.equalTo(eagleView).offset(107.pix())
            make.size.equalTo(CGSizeMake(137.pix(), 117.pix()))
        }
        label.snp.makeConstraints { make in
            make.centerX.equalTo(eagleView)
            make.top.equalTo(icon.snp.bottom).offset(12.pix())
            make.height.equalTo(22.pix())
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
