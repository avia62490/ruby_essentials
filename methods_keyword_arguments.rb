def convert_temp(temp, input_scale: 'celsius', output_scale: 'kelvin')
  arr = [input_scale, output_scale]
  case arr
    when ['celsius', 'fahrenheit']
      return ((temp * 9) / 5) + 32.0
    when ['celsius', 'kelvin']
      return temp + 273.15
    when ['fahrenheit', 'celsius']
      return ((temp - 32.0) * 5) / 9
    when ['fahrenheit', 'kelvin']
      return (((temp - 32.0) * 5) / 9) + 273.15
    when ['kelvin', 'celsius']
      return temp - 273.15
    when ['kelvin', 'fahrenheit']
      return (((temp - 273.15) * 9) / 5) + 32.0
  end
end
