//
//  PopView.swift
//  testPop
//
//  Created by José Júnior on 29/06/23.
//

import SwiftUI

struct PopView: View {
    private var pops: [PopModel] = PopModel.allPops
    
    var body: some View {
        VStack {
            NavigationView {
                ZStack(alignment: .bottom) {
                    List{
                        ForEach(pops, id: \.nome){pop in
                            NavigationLink {
                                PopDetail(pop: pop)
                            } label: {
                                Label("\(pop.nome)",
                                      systemImage: "\(pop.sf_symbol)")
                                .imageScale(.large)
                                .symbolRenderingMode(.multicolor)
                                .frame(minHeight: 50.0, alignment: .center)
                                .fixedSize(horizontal: false, vertical: true)
                                .padding(5)
                                .symbolVariant(/*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                
                            }
                        }.navigationTitle("Saúde PoP")
                            .navigationBarTitleDisplayMode(.inline)
                    }
                    HStack(){
                        Spacer()
                        NavigationLink {
                           Text("Oi")
                        } label: {
                            Image(systemName: "plus")
                                .frame(width: 45, height: 45)
                                .background(Color.accentColor)
                                .foregroundColor(.white)
                                .cornerRadius(.infinity)
                        }.padding(10)
                        
                    }
                }
            }
        }
    }
}

struct PopView_Previews: PreviewProvider {
    static var previews: some View {
        PopView()
    }
}
