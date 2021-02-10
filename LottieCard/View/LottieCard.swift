//
//  LottieCard.swift
//  LottieCard
//
//  Created by 김선중 on 2021/02/10.
//

import SwiftUI

struct LottieCard: View {
    
    var title = "서근 카드"
    var icon = "faceid"
    var animate = "A"
    var color1 = Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1))
    var color2 = Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
    
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(LinearGradient(gradient: Gradient(colors: [color1, color2]), startPoint: .top, endPoint: .bottomTrailing))
                .frame(width: 400, height: 250)
                .shadow(color: Color.gray, radius: 25, x: -10, y: 10)
            //카드안 동그라미 아이콘
            ZStack{
                Circle().fill(Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)).opacity(0.3))
                    .frame(width: 50)
             Image(systemName: icon)
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(.white)
            //아이콘의 위치 조정
            }.offset(x: 155, y: -80)
            Text(title)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .offset(x: -130, y: -80)
            
            //로티 애니메이션
            LottieView(filename: animate)
                .frame(width: 250, height: 250)
                .offset(x: 0, y: 10)
            
        }
        
    }
}

struct LottieCard_Previews: PreviewProvider {
    static var previews: some View {
        LottieCard()
    }
}
