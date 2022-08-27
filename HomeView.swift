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
    @State var text = ""
    @State var buttonPressed = false

    
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
                
                ZStack {
                    Image("heart 1")
                        .padding(.leading, 20)
                    VStack {
                        Text(buttonPressed ? "Welcome to" : "Period:")
                            .bold()
                            .font(.system(size: 20, weight: .bold))

                        Text(buttonPressed ? "Periodt." : "Day 1")
                            .font(.system(size: 40, weight: .bold))
                            .bold()
                    }
                    .padding(.bottom, 50)
                    .foregroundColor(.white)

                }
                
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
            
            VStack {
                Text("Mood")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(Mood.moods) { mood in
                            Button(action: {
                                print("button pressed")
                            }) {
                                Image(uiImage: mood.icon ?? UIImage(contentsOfFile: "frustrated")!)
                            }

                        }
                    }
                }
                
                Text("Flow")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 30)
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(Flow.flowTypes) { flowType in
                            Button(action: {
                                buttonPressed = true
                            }) {
                                Image(uiImage: flowType.icon ?? UIImage(contentsOfFile: "frustrated")!)
                            }

                        }
                    }
                }
                
                Text("Symptoms")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 30)
                
                TextField("Notes", text: $text)
                    .padding()
                    .frame(height: 100, alignment: .topTrailing)
                    .background(Color.gray.opacity(0.1))
                    

            }
            .padding(20)

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
