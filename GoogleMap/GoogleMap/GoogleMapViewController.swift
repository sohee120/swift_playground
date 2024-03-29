//
//  GoogleMapViewController.swift
//  GoogleMap
//
//  Created by 윤소희 on 2022/01/04.
//

import UIKit
import GoogleMaps //구글맵
import CoreLocation //애플 SDK - GPS에서 좌표를 가져오는 라이브러리


//개발자 콘솔
//https://console.cloud.google.com

//API키 : AIzaSyA_KT0ugR-U0G4iTeo2byuXr2eYC4zs3fw

class GoogleMapViewController: UIViewController, GMSMapViewDelegate, CLLocationManagerDelegate {
    
    //구글맵뷰
    var mapView: GMSMapView!
    //GPS좌표 객체
    var locationManager = CLLocationManager()
    //위도, 경도 값에서 행정주소(서울시 종로구 종각1동)로 바꿔주는 클래스
    var geocoder = GMSGeocoder()

    override func viewDidLoad() {
        super.viewDidLoad()

        initMapView()
        initLocationManager()
        
    }
    
    func initMapView() {
        mapView = GMSMapView()
        //카메라 설정 : 전체 맵의 일부화면을 의미
        let camera = GMSCameraPosition.camera(withLatitude: 0, longitude: 0, zoom: 15)
        mapView.camera = camera
        //현재위치를 가르키는 파란원 아이콘
        mapView.settings.myLocationButton = true
        mapView.isMyLocationEnabled = true
        mapView.delegate = self
        //최상위 뷰를 구글맵뷰로 교체
        self.view = mapView

    }
    
    func initLocationManager() {
        
        
    }
    
 

}
