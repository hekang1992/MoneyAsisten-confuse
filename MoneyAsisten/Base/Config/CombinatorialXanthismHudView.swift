//
//  CombinatorialXanthismHudView.swift
//  Catatan
//
//  Created by apple on 2024/3/4.
//

import UIKit
import Lottie

class CombinatorialXanthismHudView: UIView {
    
    private lazy var discoView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        return view
    }()
    
    private lazy var sabaloView: LottieAnimationView = {
        let baaroqueView = LottieAnimationView(name: "loading.json", bundle: Bundle.main)
        baaroqueView.loopMode = .loop
        baaroqueView.play()
        return baaroqueView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        associativeNamedCaballo()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        associativeNamedCaballo()
    }
    
    private func associativeNamedCaballo() {
        addSubview(discoView)
        discoView.addSubview(sabaloView)
        throughVariableLibraire()
    }
    
    private func throughVariableLibraire() {
        discoView.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
        
        sabaloView.snp.makeConstraints { make in
            make.center.equalTo(self)
            make.size.equalTo(CGSize(width: 120.pix(), height: 120.pix()))
        }
    }
}
