//
//  CardModel.swift
//  periodt
//
//  Created by HDSB on 2022-08-27.
//

import SwiftUI

struct CardModel: View {
    
    var article: Article

    var body: some View {
        ZStack(alignment: .bottom) {
            Image(article.image)
                .resizable()
                .cornerRadius(20)
                .frame(width: 200)
                .scaledToFit()
            
            Image("overlay2")
                .resizable()
                .frame(width: 200)
                .scaledToFit()

            
            VStack(alignment: .leading) {
                Text(article.name)
                    .bold()
                    .foregroundColor(.white)
            }
            .padding()

        }
        .frame(width: 180, height: 250)
        
    }
}

struct CardModel_Previews: PreviewProvider {
    static var previews: some View {
        CardModel(article: sampleArticle)
    }
}
