//
//  PoketmonCell.swift
//  swift_pketmon
//
//  Created by 申民鐡 on 2021/11/21.
//

import UIKit

class PoketmonCell: UICollectionViewCell {
    //Image View 밑에 UiView 안에 Label을 만들어줄거임
   
    //imageview를 프로메틱하게 만들어주는방법
    //Mark: Properties
    lazy var imageView:UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .tertiarySystemGroupedBackground
        iv.contentMode = .scaleAspectFit
        return iv;
    }()
    
    
    //Text 뷰를 UIView로 만들어줌.
    lazy var textView:UIView = {
       let view = UIView()
        view.backgroundColor = UIColor.mainColor
        //이 안에 label을 넣어줌.
        view.addSubview(self.poketmonName)
        //translatesAutoresizingMaskIntoConstraints 를 false로 지정해야지 프로메틱컬하게 위치를 지정가능.
        poketmonName.translatesAutoresizingMaskIntoConstraints = false
        //포켓몬 yanchor값은 view yanchor값과 똑같다라는 의미
        poketmonName.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        poketmonName.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
       return view
    }()
    
    
    //Label을 만들어줌
    lazy var poketmonName:UILabel = {
        let label = UILabel()
        label.text = "agu mon"
        label.font = UIFont.systemFont(ofSize: 14)

        return label
    }()
    
    
    //Mark: init
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        configureViewComponents()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configureViewComponents(){
        //각 셀들의 코너 레디우스를 10씩 부여한다.
        self.layer.cornerRadius = 10
        //radius로인하여 삐져나오는 이미지,텍스트뷰를 짤라주는역할, 전체뷰를 초과하는
        //애들을 보여주지않는 역할임.
        self.layer.masksToBounds = true
        //addsubview로 이미지뷰를 추가해준다.
        self.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        //높이는 70퍼센트정도
        imageView.heightAnchor.constraint(equalTo: self.heightAnchor,multiplier: 0.7).isActive = true
        
        self.addSubview(textView)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.topAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        textView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        textView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        textView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        
    }
    
}
