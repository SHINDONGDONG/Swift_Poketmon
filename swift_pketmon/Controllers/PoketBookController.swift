//
//  PoketBookController.swift
//  swift_pketmon
//
//  Created by 申民鐡 on 2021/11/19.
//

import UIKit

private let reuseIdentifier = "Cell"

class PoketBookController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //앱이 실행되면 configureViewCompentes를 불러온다.
        configureViewCompoents()
    }
    

    //Mark: override
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
    //이 함수는 디바이스의 테마가 변결될때 마다 호출되는 함수이다 이 함수를 불러와주어야 테마가변결될때 자동적으로 컬러가 바뀐다.
        adjustColor()
    }
    
    
    
    //Mark: Selectors
    @objc func searchTapped(){
        print("search tapped")
    }
    
    func adjustColor() {
        if self.traitCollection.userInterfaceStyle == .dark {
            //다크모드일때
            navigationController?.navigationBar.tintColor = .white
        }else{
            //라이트 모드일때
            navigationController?.navigationBar.tintColor = .black
        }
    }
    
    
    //백그라운드의 네비게이션 바 색상을 지정해준다.
    //Mark: Helper
    func configureViewCompoents(){
        
        //*******보통 컬러는 systemcolor를 많이쓴다 다크,화이트모드때 글자색이 저절로 바뀌기 때문에 ***********
        
        //컬렉션뷰에 백그라운드 컬러를 시스템백그라운드 색상으로 바꿔준다.
        collectionView.backgroundColor = .systemBackground
        
        //네비게이션 컨트롤러에 ,네비게이션 바가 존재한다면 바의 틴트컬러는 시스템 오랜지
        navigationController?.navigationBar.barTintColor = UIColor.mainColor
        navigationController?.navigationBar.isTranslucent = false
        self.title = "포켓몬도감"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem:
            UIBarButtonItem.SystemItem.search, target: self, action: #selector(searchTapped))
        adjustColor()
        
    }

}
