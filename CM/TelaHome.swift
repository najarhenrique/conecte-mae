//
//  TelaHome.swift
//  CM
//
//  Created by Lucas on 26/04/23.
//

import SwiftUI

struct TelaHome: View {
    @StateObject var weekStore = WeekStore()
    @State private var snappedItem = 0.0
    @State private var draggingItem = 0.0
    
    var body: some View {
        VStack{
            ZStack {
                ForEach(weekStore.allWeeks) { week in
                    VStack{
                        ZStack{
                            Rectangle()
                                .fill(Color("rosinha"))
                                .frame(width: 400, height: 200)
                            HStack {
                                ForEach(0..<7) { index in
                                    VStack(spacing: 20) {
                                        Text(weekStore.dateToString(date: week.date[index], format: "EEE"))
                                            .font(.system(size:14))
                                            .fontWeight(.semibold)
                                            .frame(maxWidth:.infinity)
                                        
                                        Text(weekStore.dateToString(date: week.date[index], format: "d"))
                                            .font(.system(size:14))
                                            .frame(maxWidth:.infinity)
                                    }
                                    .onTapGesture {
                                        // Updating Current Day
                                        weekStore.currentDate = week.date[index]
                                    }
                                }
                            }.padding(.top,58)
                        }
                        .frame(width: UIScreen.main.bounds.width)
                        .background(
                            Rectangle()
                                .fill(.white)
                        )
                    }
                    .offset(x: myXOffset(week.id), y: 0)
                    .zIndex(1.0 - abs(distance(week.id)) * 0.1)
                    .padding(.horizontal, 20)
                }
                
            }
            .ignoresSafeArea()
            .frame(maxHeight:150 , alignment : .top)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        draggingItem = snappedItem + value.translation.width / 400
                    }
                    .onEnded { value in
                        withAnimation {
                            if value.predictedEndTranslation.width > 0 {
                                draggingItem = snappedItem + 1
                            } else {
                                draggingItem = snappedItem - 1
                            }
                            snappedItem = draggingItem
                            
                            weekStore.update(index: Int(snappedItem))
                        }
                    }
            )
            HStack{
                Text("Ações")
                    .font(.system(size: 50))
                    .frame(maxWidth:.infinity, maxHeight: 60,alignment: .leading)
                    .padding(.leading)
                ZStack{
                    RoundedRectangle(cornerRadius:10)
                        .fill(Color("rosaBebe"))
                        .frame(width:150, height: 30)
                        .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.black, lineWidth: 2)
                                    )
                        .padding(.trailing)
                    Text("Mostrar mais..")
                        .font(.body)
                        .foregroundColor(.black)
                }
            }
            HStack{
                    ForEach(0...4, id: \.self){ _ in
                        ZStack{
                            RoundedRectangle(cornerRadius:10)
                                .fill(Color("rosaBebe"))
                                .frame(width:50, height: 50)
                                .overlay(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .stroke(Color.black, lineWidth: 2)
                                            )
                            Text("ação")
                                .font(.body)
                                .foregroundColor(.black)
                        }
                    }.padding(5)
            }
            HStack{
                Text("Notícias")
                    .font(.system(size: 50))
                    .frame(maxWidth:.infinity, maxHeight: 60,alignment: .leading)
                    .padding(.leading)
                ZStack{
                    RoundedRectangle(cornerRadius:10)
                        .fill(Color("rosaBebe"))
                        .frame(width:150, height: 30)
                        .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.black, lineWidth: 2)
                                    )
                        .padding(.trailing)
                    Text("Mostrar mais..")
                        .font(.body)
                        .foregroundColor(.black)
                }
            }
            ForEach(1..<5) {news in
                        HStack{
                            VStack{
                                HStack{
                                    Text("Notícia:\(news)")
                                        .font(.body)
                                        .foregroundColor(.pink)
                                    Text("Categoria")
                                        .font(.body)
                                        .foregroundColor(.blue)
                                }
                                Text("Descrição")
                                    .frame(maxWidth: 145, alignment: .leading)
                                    .font(.body)
                                    .foregroundColor(.black)
                            }
                            Spacer()
                            Image(systemName: "heart.fill")
                        }.padding(.horizontal)
            }
            Spacer()
            ZStack{
                RoundedRectangle(cornerRadius:20)
                    .fill(Color("rosaClaro"))
                    .frame(width:300, height: 90)
                    .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 2)
                                )
                VStack{
                    Text("Mamåe")
                        .font(.title)
                        .foregroundColor(.pink)
                    Text("peso")
                        .font(.body)
                        .foregroundColor(.black)
                    Text("vacinas...")
                        .font(.body)
                        .foregroundColor(.black)
                }
                
            }
            Spacer()

        }
    }
        func distance(_ item: Int) -> Double {
            return (draggingItem - Double(item)).remainder(dividingBy: Double(weekStore.allWeeks.count))
        }
        
        func myXOffset(_ item: Int) -> Double {
            let angle = Double.pi * 2 / Double(weekStore.allWeeks.count) * distance(item)
            return sin(angle) * 200
        }
}

struct TelaHome_Previews: PreviewProvider {
    static var previews: some View {
        TelaHome()
    }
}
