//
//  ArticleModel.swift
//  periodt
//
//  Created by HDSB on 2022-08-27.
//

import Foundation

struct Article: Identifiable {
    var id: Int
    var name: String
    var fullArticle: String
    var image: String
}

var sampleArticle = Article(id: 2, name: "The Patch", fullArticle: "", image: "patch")

var sexEd = [Article(id: 1, name: "All You Need to Know About STD's", fullArticle: "", image: "stf"),
             Article(id: 2, name: "Pregnacy", fullArticle: "", image: "preg"),
             Article(id: 3, name: "Consent & Communication", fullArticle: "", image: "consent")]

var birthControl = [Article(id: 1, name: "The Pill", fullArticle: "It’s really important to take your birth control pill every day, or you    might not be protected from pregnancy. Using our birth control reminder app, setting an alarm, or keeping your pill pack next to things you use every day (like your toothbrush or phone charger) can help you remember to take your pills. \nIf you have a really busy life and think you might not remember your pill every day, check out other birth control methods like IUDs or the implant that are super low-maintenance and almost impossible to mess up. Take our quiz to help find the birth control method that’s best for you. \n There can be negative side effects. \n Like all medications, birth control pills can have side effects. But most usually go away after 2 or 3 months. Many people use the pill with no problems at all. You can keep track of any side effects with our app. \n The most common side effects are spotting or bleeding between periods (this is more common with progestin-only pills), sore breasts, nausea, or headaches. But these usually go away after 2 or 3 months, and they don’t happen to everyone who takes the pill. \nBirth control shouldn’t make you feel sick or uncomfortable. Luckily, there are many different types of birth control, so you’ve got options. If you keep having side effects that bother you after using the pill for 3 months, talk with your nurse or doctor about trying another brand of pill or another birth control method. But don’t stop taking the pill without starting a new method, or you won’t be protected from pregnancy.", image: "pill"),
            Article(id: 2, name: "The Patch", fullArticle: "", image: "patch"),
            Article(id: 3, name: "UID", fullArticle: "", image: "uid")]

var News = [Article(id: 1, name: "Idaho barred from enforcing abortion...", fullArticle: "", image: "news1"),
           Article(id: 2, name: "Biden administration condemns Indiana...", fullArticle: "", image: "biden"),
           Article(id: 3, name: "Kansas voters reject abortion ban in...", fullArticle: "", image: "kansas")]





            
