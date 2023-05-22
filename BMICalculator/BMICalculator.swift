import SwiftUI

struct BMICalculator: View {
  @State private var weight = 0.0
  @State private var height = 0.0
  @State private var bmi = 0.0
  @State private var background = Color.white


  var body: some View {
    VStack {
      Text("BMI Calculator")
        .font(.title)

        VStack {
            Text("Choose your weight: \(Int(weight))")
            Slider(value: $weight, in: 0...500) {
                Text("Weight (kg)")
            } minimumValueLabel: {
                Text("0").font(.title2).fontWeight(.thin)
            } maximumValueLabel: {
                Text("500").font(.title2).fontWeight(.thin)
            }.tint(.red)
             .padding()
        }
        
        VStack {
            Text("Choose your height: \(Int(height))")
            Slider(value: $height, in: 0...250) {
                Text("Height (cm)")
            } minimumValueLabel: {
                Text("0").font(.title2).fontWeight(.thin)
            } maximumValueLabel: {
                Text("250").font(.title2).fontWeight(.thin)
            }.tint(.red)
             .padding()
        }


      Text("Your BMI is \(bmi, specifier: "%.2f")")

      Button(action: {
        calculateBMI()
      }) {
        Text("Calculate BMI")
      }
    }
  }

    func calculateBMI() {
        bmi = weight / (height * height / 10000)

        if bmi < 18.5 {
          background = Color.green
        } else if bmi < 25 {
          background = Color.yellow
        } else if bmi < 30 {
          background = Color.orange
        } else {
          background = Color.red
        }
      }
    }

struct BMICalculator_Previews: PreviewProvider {
  static var previews: some View {
      BMICalculator()
  }
}
