//
//  ArticleView.swift
//  periodt
//
//  Created by HDSB on 2022-08-27.
//

import SwiftUI

struct ArticleView: View {
    var body: some View {
        ScrollView {
            Text("Articles")
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title)
                .padding(.leading, 10)
                .padding(.top, 50)

            
            Text("Sex-Ed")
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title2)
                .padding(.top, 20)
                .padding(.leading, 10)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(sexEd, id: \.id) { article in
                        CardModel(article: article)
                            .padding()
                    }
                }
            }
            
            Text("Birth Control")
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title2)
                .padding(.top, 20)
                .padding(.leading, 10)


            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(birthControl, id: \.id) { article in
                        CardModel(article: article)
                            .padding()
                    }
                }
            }
            
            Text("News")
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title2)
                .padding(.top, 20)
                .padding(.leading, 10)


            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(News, id: \.id) { article in
                        CardModel(article: article)
                            .padding()
                    }
                }
            }


        }
        .padding()
        .ignoresSafeArea()
        .edgesIgnoringSafeArea(.top)


    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView()
    }
}
