//
//  ImageSlider.swift
//  EcommerceApp_SwiftUI
//
//  Created by PINAR KALKAN on 20.11.2023.
//

import SwiftUI

struct ImageSlider: View {
    @State private var currentIndex = 0
    var slides: [String] = ["fur1","fur2","fur3","fur4","fur5","fur6","fur7","fur8"," fur12","fur14"]
    var body: some View {
        ZStack(alignment: .bottomLeading){
            ZStack(alignment: .trailing){
                Image(slides[currentIndex])
                    .resizable()
                    .frame(width: .infinity, height: 180)
                    .scaledToFit()
                    .cornerRadius(15)
            }
            //Fotoların altındaki küçük noktacıklar:
            HStack {
                ForEach(0..<slides.count){index in
                    //Image sayısı kadar circle olacak
                    Circle()
                    //eğer circle seçili olansa rengi kPrimary, değilse kSecondary
                        .fill(self.currentIndex == index ? Color("kPrimary") : Color("kSecondary"))
                        .frame(width: 10, height: 10)
                }
            }
            .padding()
        }
        .padding()
        //Görselleri belli bir sürede değiştirmek için:
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 5, repeats: true) {timer in
               //eğer bütün fotolar döndüyse indexi sıfırla başa sar
                if self.currentIndex + 1 == self.slides.count {
                    self.currentIndex = 0
                } else {
                    self.currentIndex += 1
                }
            }
        }
    }
}

struct ImageSlider_Previews: PreviewProvider {
    static var previews: some View {
        ImageSlider()
    }
}
