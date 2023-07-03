//
//  PopDetail.swift
//  testPop
//
//  Created by José Júnior on 29/06/23.
//

import SwiftUI

struct PopDetail: View {
    var pop: PopModel = PopModel.onePop
    @State var  luana: Int = 1
    var body: some View {
        VStack {
            Spacer()
            VStack(alignment: .center) {
                HStack(alignment: .center, spacing: 5.0) {
                    Image(systemName: "\(pop.sf_symbol)")
                        .foregroundColor(.accentColor)
                        .imageScale(.large)
                        .symbolRenderingMode(.multicolor)
                    
                    Text("\(pop.nome)")
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .bold()
                }
                
                Divider()
                
                Text("\(pop.descricao)")
                List{
                    
                    HStack{
                        Text("Setor:")
                        Text("\(pop.setor)") .bold()
                    }
                    HStack{
                        Text("Responsável:")
                        Text("\(pop.responsavel)") .bold()
                    }
                    
                    VStack (alignment: .leading){
                        Text("Etapas: ") .bold()
                        ForEach(pop.etapas, id: \.self) { etapas in
                            HStack(alignment: .center) {
                                Image(systemName: "checkmark")
                                Text("\(etapas)")
                                    .font(.callout)
                            }.padding(.top, 5)
                        }
                        Spacer()
                    }
                }
                
            }
        } .padding(.top, 10)
    }
}

struct PopDetail_Previews: PreviewProvider {
    static var previews: some View {
        PopDetail(pop: PopModel.onePop, luana: 1)
    }
}
