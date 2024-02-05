import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.orange)
                .ignoresSafeArea(.all)
            VStack{
                EnteteHaut()
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack {
                        CalendrierDate(number: "10", days: "LUN", backColor: .white, textColor: UIColor(.black))
                        CalendrierDate(number: "11", days: "MAR", backColor: .white, textColor: UIColor(.black))
                        CalendrierDate(number: "12", days: "MER", backColor: .white, textColor: UIColor(.black))
                        CalendrierDate(number: "13", days: "VEN", backColor: .white, textColor: UIColor(.black))
                        CalendrierDate(number: "15", days: "SAM", backColor: .white, textColor: UIColor(.black))
                        CalendrierDate(number: "16", days: "DIM", backColor: .white, textColor: UIColor(.black))
                    }
                }
                
                Spacer()
                // liste de cours
                VStack {
                    Text("Cours d'aujourd'hui")
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                // cours
                    ScrollView(.vertical, showsIndicators: false) {
                        //liste de cours
                        VStack  {
                            
                            HStack {
                                Text("9h35")
                                    .font((.system(size: 14, weight: .heavy, design: .rounded)))
                                    .padding(.trailing, 10)
                                
                                VStack() {
                                    Text("SYST1037")
                                        .font(.system(size: 14, weight: .bold, design: .rounded))
                                    Text("Analyse des systemes")
                                        .font(.system(size: 14,
                                                      weight: .light, design: .default))
                                        .padding(.trailing, 15)
                                    
                                    Image(systemName: "list.dash")
                                        .resizable()
                                        .frame(width: 15, height: 18)
                                }
                            }
                        }
                    }
                        .padding(25)
                        .background(Color(.white))
                        .cornerRadius(15)
                        .edgesIgnoringSafeArea(.bottom)
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

struct EnteteHaut: View {
    var body: some View {
        HStack(alignment: .top) {
            Text("Vos cours au CCNB")
                .font(.system(size: 34, weight: .bold, design: .default))
                .frame(width: 250)
                .foregroundColor(.white)
            Spacer()
            
            ZStack{
                Image(systemName: "bell.fill")
                    .resizable()
                    .frame(width: 25, height: 28)
                    .padding(.top)
                    .foregroundColor(.white)
                Circle()
                    .fill(Color.red)
                    .frame(width: 12, height: 12)
                    .padding(.leading, 10)
                
            }
        }
        .padding(.horizontal)
        .padding([.top, .bottom])
    }
}

struct CalendrierDate: View {
    
    // Declaration des variables
    var number: String
    var days: String
    var backColor: UIColor
    var textColor: UIColor
    
    // vue secondaire de ma petite vue
    var body: some View {
        VStack{
            Text(self.number)
                .font(.system(size: 28, weight: .bold, design: .rounded))
                .foregroundStyle(Color(self.textColor))
            Text(self.days)
                .font(.headline)
                .foregroundStyle(Color(self.textColor))
        }
        .padding([.top, .bottom], 20)
        .padding([.leading, .trailing], 10)
        .background(Color(.white))
        .cornerRadius(15)
    }
}
