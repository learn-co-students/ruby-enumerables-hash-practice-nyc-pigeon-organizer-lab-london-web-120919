array.find { |cheese|
    cheese_types.include?(cheese)

  }
  data[:color].each { |pColor,pName| #pName is an array
    newHash.each { |hName,hValue| #hName are hashes from the pigeons names, and Hvalue are their atributes
      if pName.include?(hName) #working until here, should I loop inside it?
        newHash[hName][:color] = pColor #My problem is, it only adds the last color
        # hValue.each { |key,thisshit|
        # thisshit.push(pColor)
        # }
      end
    }
