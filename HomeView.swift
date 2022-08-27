//
//  HomeView.swift
//  periodt
//
//  Created by HDSB on 2022-08-27.
//

import SwiftUI

struct HomeView: View {
    @StateObject var weekModel: WeekViewModel = WeekViewModel()
    @Namespace var animation
    var body: some View {
        ScrollView {
            VStack {
            //MARK: Pinned Header
                
                VStack {
                    HStack { Spacer() }
                    Text("Welcome")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.subheadline)

                    Text("Jia Huang")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.subheadline)
                        .padding(.top, 1)
                }
                .padding(30)
                .ignoresSafeArea()
                
                Image("heart 1")
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(weekModel.currentWeek,id: \.self) { day in
                            //EEE will return day as MON, TUE, ...
                            
                            VStack(spacing: 10) {
                                
                                Text(weekModel.extractDate(date: day, format: "dd"))
                                    .font(.system(size: 15))
                                    .fontWeight(.semibold)

                                Text(weekModel.extractDate(date: day, format: "EEE"))
                                    .font(.system(size: 14))
                                
                                Circle()
                                    .fill(.white)
                                    .frame(width: 8, height: 8)
                                    .opacity(weekModel.isToday(date: day) ? 1 : 0)
                            } //MARK: Foreground Stule
                            .foregroundColor(weekModel.isToday(date: day) ? .white : Color.myPink)
                            //MARK: Capsule Shape
                            .frame(width: 45, height: 90)
                            .background(
                                ZStack {
                                    //MARK: Matched Geometry Effect
                                    if weekModel.isToday(date: day) {
                                        Capsule()
                                            .fill(Color.myPink)
                                            .matchedGeometryEffect(id: "CURRENTDAY", in: animation)
                                    }
                                }
                            )
                            .contentShape(Capsule())
                            .onTapGesture {
                                //updating current day
                                withAnimation {
                                    weekModel.currentDate = day
                                }
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom, 10)
                
            
            }
            .background(Color.background)
            
                        
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
