//
//  CaballoBaaroqueTabBar.swift
//  Catatan
//
//  Created by apple on 2024/2/26.
//

import UIKit

protocol YBTabBarDelegate: AnyObject {
    func eacmDimeCil(_ tabBar: CaballoBaaroqueTabBar, didSelectedButtonFrom from: Int, to: Int)
}

class CaballoBaaroqueTabBar: UIView, CustomTabBarButtonDelegate {
    
    weak var delegate: YBTabBarDelegate?
    private var selectedButton: SerialCacheBarButton?
    private var kadiArray: [SerialCacheBarButton] = []
    private var rabbaniteArr: [String] = []
    private var combinatorialArr: [String] = []
    
    private lazy var eagleView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.clear
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(eagleView)
        eagleView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addSubview(eagleView)
        eagleView.frame = bounds
    }
    
    func addTabBarButtonNorImageUrl(_ norImageUrl: String, selImageUrl: String, title: String) {
        let arbitraryBtn = SerialCacheBarButton()
        arbitraryBtn.delegate = self
        arbitraryBtn.backgroundColor = UIColor.white
        addSubview(arbitraryBtn)
        arbitraryBtn.domMethodJabiru(url: norImageUrl, title: title)
        arbitraryBtn.addTarget(self, action: #selector(poolingPacesetterAnalphabetic(_:)), for: .touchDown)
        kadiArray.append(arbitraryBtn)
        rabbaniteArr.append(norImageUrl)
        combinatorialArr.append(selImageUrl)
        if kadiArray.count == 1 {
            poolingPacesetterAnalphabetic(arbitraryBtn)
            arbitraryBtn.i2oBtn.isSelected = true
        }
    }
    
    func classificationMatchingEnum(_ ybButton: SerialCacheBarButton) {
        for (index, currentButton) in kadiArray.enumerated() {
            if currentButton == ybButton {
                currentButton.i2oBtn.isSelected = true
                currentButton.graphLbl.textColor = UIColor.white
                currentButton.i2oBtn.setImage(UIImage(named: combinatorialArr[index]), for: .normal)
                currentButton.backgroundColor = UIColor("#BBD598")
            } else {
                currentButton.i2oBtn.isSelected = false
                currentButton.graphLbl.textColor = UIColor("#BBD598")
                currentButton.backgroundColor = UIColor("#FFFFFF")
                currentButton.i2oBtn.setImage(UIImage(named: rabbaniteArr[index]), for: .normal)
            }
        }
    }
    
    func gabeYachtswomanMessage(_ tabBarButton: SerialCacheBarButton) {
        poolingPacesetterAnalphabetic(tabBarButton)
    }
    
    // MARK: - Button Click
    
    @objc private func poolingPacesetterAnalphabetic(_ button: SerialCacheBarButton) {
        if let overflowIndex = selectedButton?.tag {
            delegate?.eacmDimeCil(self, didSelectedButtonFrom: overflowIndex, to: button.tag)
        }
        selectedButton?.isSelected = false
        button.isSelected = true
        selectedButton = button
        classificationMatchingEnum(selectedButton!)
    }
    
    // MARK: - Layout
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let babaButton = (frame.width - 72.pix()) / CGFloat(kadiArray.count)
        let eamButton = 1.pix()
        for (index, button) in kadiArray.enumerated() {
            let baseButton = CGFloat(index) * (babaButton + 19.pix()) + 26.pix()
            button.frame = CGRect(x: baseButton, y: CGFloat(eamButton), width: babaButton, height: hyperlinkHeight)
            button.tag = index
        }
    }
}
