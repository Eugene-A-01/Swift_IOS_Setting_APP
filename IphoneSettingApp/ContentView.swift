//
//  ContentView.swift
//  IphoneSettingApp
//
//  Created by Eugene on 2023/07/06.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAirplaneModeOn : Bool = false
    @State private var isBluetoothOn : Bool = false
    @State private var searchText = ""

    let steelGray = Color(white: 0.22)
    let whiteGray = Color(white: 0.9)
    
    var body: some View {
        NavigationStack{
            List{
                
                // 검색
                HStack{
                    Group{
                        Image(systemName: "magnifyingglass").foregroundColor(Color.gray)
                        TextField("검색", text: $searchText)
                    }
                }
                .listRowBackground(Color.gray.brightness(0.35))
                .padding(EdgeInsets(top: 4, leading: -5, bottom: 4, trailing: 8))

                // 프로필 섹션
                Section{
                    // 프로필 라인
                    NavigationLink{
                        Text("프로필 페이지")
                    } label: {
                        HStack{
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .colorInvert()
                                .foregroundStyle(steelGray)
                                .clipShape(Circle())
                            VStack(alignment: .leading, spacing : 3){
                                Text("안유진")
                                    .font(.system(size: 25))
                                    .fontWeight(.regular)
                                Text("Apple ID, ICloud, 미디어 및 구입 항목").font(.system(size: 12))
                            }
                        }
                    }
                    
                    //Apple ID제안 라인
                    NavigationLink("Apple ID 제안"){
                        Text("ID 제안 페이지");
                    }
                }
                
                // 업데이트 섹션
                Section{
                    NavigationLink("Apple Fitness+ Free for 3 Months"){
                        Text("Apple Fitness+ 페이지")
                    }
                    NavigationLink{
                        Text("업데이트 페이지")
                    } label: {
                        Text("소프트웨어 업데이트 사용 가능")
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Image(systemName: "2.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all, 0)
                            .frame(width: 25, height: 25)
                            .foregroundColor(.red)
                            .clipShape(Circle())
                    }
                }
                
                // 에어팟 섹션
                Section{
                    NavigationLink{
                        Text("에어팟 페이지")
                    } label: {
                        HStack{
                            Image(systemName: "airpodspro")
                            Text("안유진의 Airpods")
                        }
                    }
                }
                
                // 에어플레인모드-핫스팟 섹션
                Section{
                    
                    // 에어플레인모드 라인
                    HStack{
                        Image(systemName: "airplane")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.orange)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        Toggle("에어플레인 모드", isOn : $isAirplaneModeOn)
                    }
                    
                    // 와이파이 라인
                    HStack{
                        Image(systemName: "wifi")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        
                        NavigationLink{
                            Text("와이파이 페이지")
                            
                        } label: {
                            HStack{
                                Text("Wi-Fi")
                                Spacer()
                                Text("PoolC5G")
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    
                    //블루투스 라인
                    HStack{
                        Image(systemName: "bolt.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink{
                            Text("블루투스 페이지")
                        } label: {
                            HStack{
                                Text("Bluetooth")
                                Spacer()
                                Text("켬")
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    HStack{
                        Image(systemName: "antenna.radiowaves.left.and.right")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.green)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink("셀룰러"){
                            Text("와이파이 페이지")
                        }
                    }
                    HStack{
                        Image(systemName: "personalhotspot")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.green)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink("개인용 핫스팟"){
                            Text("와이파이 페이지")
                        }
                    }
                }
                
                // 알림-스크린타임 섹션
                Section{
                    HStack{
                        Image(systemName: "bell.badge.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.red)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink("알림"){
                            Text("알림 페이지");
                        }
                    }
                    HStack{
                        Image(systemName: "speaker.wave.3.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.red)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink("사운드 및 햅틱"){
                            Text("사운드 및 햅틱 페이지");
                        }
                    }
                    HStack{
                        Image(systemName: "moon.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.indigo)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink("집중모드"){
                            Text("집중모드 페이지");
                        }
                    }
                    HStack{
                        Image(systemName: "hourglass")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.indigo)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink("스크린타임"){
                            Text("스크린타임");
                        }
                    }
                }
                
                // 마지막 섹션
                Section{
                    Group{
                        Text("일반");
                        Text("제어 센터");
                        Text("디스플레이 및 밝기");
                        Text("홈 화면");
                        Text("손쉬운 사용");
                        Text("배경화면");
                    }
                    Text("Siri 및 검색");
                    Text("Face ID 및 암호");
                    Text("긴급 구조 요청");
                    Text("노출 알림");
                    Text("배터리");
                    Text("개인정보 보호 및 보안");
                }
            }
            .navigationTitle("설정")
        }
                
                
            }
            
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
