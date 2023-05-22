
import SwiftUI

struct CreditAccountPage: View {
    
    var body: some View {
        VStack{
            HStack{

                Text("Hello!")
                    .font(.system(size: 30))
                    .bold()
                    .padding(.trailing, 200)

                Image("profile")
                    .resizable()
                    .frame(width: 70, height: 50)
            }.padding(.bottom, 70)
            
            VStack(spacing: 20){
                
                Text("$2,487.53")
                    .font(.system(size: 40, weight: .heavy, design: .default))
                
                Text("Total balance")
                    .font(.footnote)
                    .foregroundColor(.gray)
                .padding(.bottom, 40)
                
            }.multilineTextAlignment(.center)
            HStack(spacing: 0){
                
                Button("Add credit") {}
                    .padding(16)
                    .frame(width: 175, height: 50)
                    .background(Color("lime"))
                    .cornerRadius(30)
                    .padding(.horizontal, 16)
                    .foregroundColor(.black)
                
                Button("Withdraw") {}
                    .padding(16)
                    .frame(width: 175, height: 50)
                    .background(Color("gray"))
                    .cornerRadius(30)
                    .padding(.horizontal, 16)
                    .foregroundColor(.black)
            }.padding(.horizontal)
            
            HStack(alignment: .center , spacing: 20){
                
                VStack{
                    Text("Account Info")
                        .font(.system(size: 13))
                        .foregroundColor(.gray)
                    Text("006387 ....")
                }
                Divider()
                    .frame(height: 30)
                
                VStack{
                    Text("Routing No.")
                        .font(.system(size: 13))
                        .foregroundColor(.gray)
                    Text("040 412 880")
                }
                
                Image(systemName: "doc.on.doc")
                    .padding(.leading, 30)
                
            } .padding(.top, 40)
                .padding(.bottom, 40)
            
            ScrollView{
                
                HStack{
                    Image("Image1")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("Account Activity")
                        .bold()
                    Image(systemName: "greaterthan")
                        .padding(.leading, 140)
                }
                Divider()
                    .padding(.leading, 70)
                    .frame(maxWidth: .infinity)
                
                HStack{
                    Image("Image2")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("Crypto Account")
                        .bold()
                    Image(systemName: "greaterthan")
                        .padding(.leading, 140)
                }
                Divider()
                    .padding(.leading, 70)
                    .frame(maxWidth: .infinity)
                
                HStack{
                    Image("Image3")
                        .resizable()
                        .frame(width: 55, height: 55)
                    Text("Transaction limit")
                        .bold()
                    Image(systemName: "greaterthan")
                        .padding(.leading, 140)
                }
                Divider()
                    .padding(.leading, 70)
                    .frame(maxWidth: .infinity)
            }
            Image("tabbar")
                .resizable()
                .frame(width: .infinity, height: 70)
        } .padding(.top, 0)
    }
}

struct CreditAccountPage_Previews: PreviewProvider {
    static var previews: some View {
        CreditAccountPage()
    }
}
