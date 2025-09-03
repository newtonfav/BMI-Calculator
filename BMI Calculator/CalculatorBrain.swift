import Foundation

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(weight: Float, height: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1) )
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a Fiddle!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1) )
        } else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a Fiddle!", color: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1) )
        }

    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }

}
