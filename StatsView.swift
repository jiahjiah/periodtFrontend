//
//  StatsView.swift
//  periodt
//
//  Created by HDSB on 2022-08-27.
//

import SwiftUI

struct StatsView: View {
    var body: some View {
        VStack {
            
            Text("Stats and Predictions")
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title)
                .padding(.top, 20)
                .padding(.leading, 20)
            HStack {
                //rect 1
                VStack {
                    Text("Period Length")
                        .bold()
                        .font(.system(size: 11))
                    HStack {
                        Text("01")
                            .font(.title)
                            .bold()
                        Text("days")
                            .bold()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)

                }
                .frame(width: 80, alignment: .leading)
                .padding()
                .background(Color.myOrange)
                .cornerRadius(10)
                
                VStack {
                    Text("Cycle Length")
                        .bold()
                        .font(.system(size: 11))
                    HStack {
                        Text("28")
                            .font(.title)
                            .bold()
                        Text("days")
                            .font(.system(size: 16))
                            .bold()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)

                }
                .frame(width: 80, alignment: .leading)
                .padding()
                .background(Color.myTeal)
                .cornerRadius(10)

                VStack {
                    Text("Period Date")
                        .font(.system(size: 11))

                        .bold()
                    HStack {
                        Text("29")
                            .font(.title)
                            .bold()
                        Text("Aug")
                            .bold()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)

                }
                .frame(width: 80, alignment: .leading)
                .padding()
                .background(Color.lightBlue)
                .cornerRadius(10)


            }
            .padding(.top, 20)
            
            Image("periodLength2")
                .resizable()
                .frame(width: 350, height: 90)
                .padding()

            Image("cycleLength2")
                .resizable()
                .frame(width: 350, height: 90)
                .padding()
            
            Spacer()
        }
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}
