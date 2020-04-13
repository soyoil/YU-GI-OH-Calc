//
//  ContentView.swift
//  YU-GI-OH-Calc
//
//  Created by Akifumi Soyama on 2020/04/12.
//  Copyright © 2020 soyoil. All rights reserved.
//

import SwiftUI

func operate(operator: String) -> Bool {
    return true
}

struct ContentView: View {
    let topButtons = ["Reset", "Coin toss", "Start timer"]
    let lifeOperators = ["-", "+", "÷", "Set"]
    let calcOperators = ["+", "-", "C", "="]
    let zeros = ["0", "00", "000"]
    let timer = "40:00"
    var body: some View {
        VStack {
            Text("Remaining time: \(timer)")
                .foregroundColor(Color.white)
                .frame(width: UIScreen.main.bounds.width, height: 40)
                .background(Color(red: 0.2, green: 0.2, blue: 0.2, opacity: 1.0))
                .padding(.bottom)
            HStack {
                ForEach(0..<topButtons.count) { i in
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("\(self.topButtons[i])")
                            .foregroundColor(Color.black)
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.3, height: 50)
                    .background(Color.gray)
                    .cornerRadius(20)
                }
            }
            Spacer().frame(height: 20)
            HStack {
                Text("8000")
                    .font(.largeTitle)
                    .frame(width: UIScreen.main.bounds.width * 0.4, height: 60)
                    .background(Color.white)
                    .border(Color.green, width: 7)
                Text("VS")
                    .foregroundColor(Color.white)
                    .frame(width: UIScreen.main.bounds.width * 0.1, height: 60)
                Text("8000")
                    .font(.largeTitle)
                    .frame(width: UIScreen.main.bounds.width * 0.4, height: 60)
                    .background(Color.white)
            }
            Spacer().frame(height: 10)
            Divider()
                .background(Color.white)
                .frame(width: UIScreen.main.bounds.width * 0.95, height: 10)
            HStack {
                ForEach(0..<lifeOperators.count) { i in
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text(self.lifeOperators[i])
                            .font(.title)
                            .foregroundColor(Color.black)
                            .frame(width: UIScreen.main.bounds.width * 0.22, height: UIScreen.main.bounds.width * 0.15)
                            .background(Color.green)
                            .cornerRadius(20)
                    }
                }
            }
            Group {
                VStack {
                    Spacer().frame(height: 20)
                    Text("0")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .padding(.horizontal, 20)
                        .frame(width: UIScreen.main.bounds.width*0.85, height: 50, alignment: .trailing)
                        .background(Color(red: 0.2, green: 0.2, blue: 0.2, opacity: 1.0))
                    Spacer().frame(height: 20)
                    HStack {
                        HStack {
                            ForEach(0..<3) { i in
                                VStack {
                                    ForEach(0..<3) { j in
                                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                            Text("\(i-3*j+7)")
                                                .font(.title)
                                                .foregroundColor(Color.white)
                                                .frame(width: UIScreen.main.bounds.width * 0.15, height: UIScreen.main.bounds.width * 0.15)
                                                .background(Color(red: 0.2, green: 0.2, blue: 0.2, opacity: 1.0))
                                                .clipShape(Circle())
                                        }
                                        Spacer().frame(height: 10)
                                    }
                                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                        Text(self.zeros[i])
                                            .font(.title)
                                            .foregroundColor(Color.white)
                                            .frame(width: UIScreen.main.bounds.width * 0.15, height: UIScreen.main.bounds.width * 0.15)
                                            .background(Color(red: 0.2, green: 0.2, blue: 0.2, opacity: 1.0))
                                            .clipShape(Circle())
                                    }
                                }
                            }
                        }
                        VStack {
                            ForEach(0..<2) { i in
                                HStack {
                                    ForEach(0..<2) {j in
                                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                            Text(self.calcOperators[j*2+i])
                                                .font(.title)
                                                .foregroundColor(Color.white)
                                            .frame(width: UIScreen.main.bounds.width * 0.15, height: UIScreen.main.bounds.width * 0.15)
                                                .background(Color.gray)
                                            .clipShape(Circle())
                                        }
                                    }
                                }
                                Spacer().frame(height: 10)
                            }
                            HStack {
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                    Image(systemName: "arrow.uturn.left")
                                        .font(.headline)
                                        .foregroundColor(Color.black)
                                        .frame(width: UIScreen.main.bounds.width * 0.15, height: UIScreen.main.bounds.width * 0.15)
                                        .background(Color.green)
                                    .clipShape(Circle())
                                }
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                    Image(systemName: "arrow.uturn.right")
                                        .font(.headline)
                                        .foregroundColor(Color.black)
                                        .frame(width: UIScreen.main.bounds.width * 0.15, height: UIScreen.main.bounds.width * 0.15)
                                        .background(Color.green)
                                    .clipShape(Circle())
                                }
                            }
                            Spacer().frame(height: 10)
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Text("Apply")
                                    .foregroundColor(Color.black)
                            }
                            .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.width * 0.15)
                            .background(Color.green)
                            .cornerRadius(20)
                        }
                    }
                }
            }
            
            Spacer()
        }.background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
