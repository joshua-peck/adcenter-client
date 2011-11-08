require 'xsd/qname'

module AdCenterWrapper


# {https://adcenter.microsoft.com/api/customermanagement/Entities}ArrayOfAccountInfo
class ArrayOfAccountInfo < ::Array
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}AccountInfo
#   id - SOAP::SOAPLong
#   name - SOAP::SOAPString
#   number - SOAP::SOAPString
#   accountLifeCycleStatus - AdCenterWrapper::AccountLifeCycleStatus
#   pauseReason - SOAP::SOAPUnsignedByte
class AccountInfo
  attr_accessor :id
  attr_accessor :name
  attr_accessor :number
  attr_accessor :accountLifeCycleStatus
  attr_accessor :pauseReason

  def initialize(id = nil, name = nil, number = nil, accountLifeCycleStatus = nil, pauseReason = nil)
    @id = id
    @name = name
    @number = number
    @accountLifeCycleStatus = accountLifeCycleStatus
    @pauseReason = pauseReason
  end
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}Account
#   accountType - AdCenterWrapper::AccountType
#   billToCustomerId - SOAP::SOAPLong
#   countryCode - SOAP::SOAPString
#   currencyType - AdCenterWrapper::CurrencyType
#   accountFinancialStatus - AdCenterWrapper::AccountFinancialStatus
#   id - SOAP::SOAPLong
#   language - AdCenterWrapper::LanguageType
#   lastModifiedByUserId - SOAP::SOAPLong
#   lastModifiedTime - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   number - SOAP::SOAPString
#   parentCustomerId - SOAP::SOAPLong
#   paymentMethodId - SOAP::SOAPLong
#   paymentMethodType - AdCenterWrapper::PaymentMethodType
#   primaryUserId - SOAP::SOAPLong
#   accountLifeCycleStatus - AdCenterWrapper::AccountLifeCycleStatus
#   timeStamp - SOAP::SOAPBase64
#   timeZone - AdCenterWrapper::TimeZoneType
#   pauseReason - SOAP::SOAPUnsignedByte
class Account
  attr_accessor :accountType
  attr_accessor :billToCustomerId
  attr_accessor :countryCode
  attr_accessor :currencyType
  attr_accessor :accountFinancialStatus
  attr_accessor :id
  attr_accessor :language
  attr_accessor :lastModifiedByUserId
  attr_accessor :lastModifiedTime
  attr_accessor :name
  attr_accessor :number
  attr_accessor :parentCustomerId
  attr_accessor :paymentMethodId
  attr_accessor :paymentMethodType
  attr_accessor :primaryUserId
  attr_accessor :accountLifeCycleStatus
  attr_accessor :timeStamp
  attr_accessor :timeZone
  attr_accessor :pauseReason

  def initialize(accountType = nil, billToCustomerId = nil, countryCode = nil, currencyType = nil, accountFinancialStatus = nil, id = nil, language = nil, lastModifiedByUserId = nil, lastModifiedTime = nil, name = nil, number = nil, parentCustomerId = nil, paymentMethodId = nil, paymentMethodType = nil, primaryUserId = nil, accountLifeCycleStatus = nil, timeStamp = nil, timeZone = nil, pauseReason = nil)
    @accountType = accountType
    @billToCustomerId = billToCustomerId
    @countryCode = countryCode
    @currencyType = currencyType
    @accountFinancialStatus = accountFinancialStatus
    @id = id
    @language = language
    @lastModifiedByUserId = lastModifiedByUserId
    @lastModifiedTime = lastModifiedTime
    @name = name
    @number = number
    @parentCustomerId = parentCustomerId
    @paymentMethodId = paymentMethodId
    @paymentMethodType = paymentMethodType
    @primaryUserId = primaryUserId
    @accountLifeCycleStatus = accountLifeCycleStatus
    @timeStamp = timeStamp
    @timeZone = timeZone
    @pauseReason = pauseReason
  end
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}PublisherAccount
#   accountType - AdCenterWrapper::AccountType
#   billToCustomerId - SOAP::SOAPLong
#   countryCode - SOAP::SOAPString
#   currencyType - AdCenterWrapper::CurrencyType
#   accountFinancialStatus - AdCenterWrapper::AccountFinancialStatus
#   id - SOAP::SOAPLong
#   language - AdCenterWrapper::LanguageType
#   lastModifiedByUserId - SOAP::SOAPLong
#   lastModifiedTime - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   number - SOAP::SOAPString
#   parentCustomerId - SOAP::SOAPLong
#   paymentMethodId - SOAP::SOAPLong
#   paymentMethodType - AdCenterWrapper::PaymentMethodType
#   primaryUserId - SOAP::SOAPLong
#   accountLifeCycleStatus - AdCenterWrapper::AccountLifeCycleStatus
#   timeStamp - SOAP::SOAPBase64
#   timeZone - AdCenterWrapper::TimeZoneType
#   pauseReason - SOAP::SOAPUnsignedByte
class PublisherAccount < Account
  attr_accessor :accountType
  attr_accessor :billToCustomerId
  attr_accessor :countryCode
  attr_accessor :currencyType
  attr_accessor :accountFinancialStatus
  attr_accessor :id
  attr_accessor :language
  attr_accessor :lastModifiedByUserId
  attr_accessor :lastModifiedTime
  attr_accessor :name
  attr_accessor :number
  attr_accessor :parentCustomerId
  attr_accessor :paymentMethodId
  attr_accessor :paymentMethodType
  attr_accessor :primaryUserId
  attr_accessor :accountLifeCycleStatus
  attr_accessor :timeStamp
  attr_accessor :timeZone
  attr_accessor :pauseReason

  def initialize(accountType = nil, billToCustomerId = nil, countryCode = nil, currencyType = nil, accountFinancialStatus = nil, id = nil, language = nil, lastModifiedByUserId = nil, lastModifiedTime = nil, name = nil, number = nil, parentCustomerId = nil, paymentMethodId = nil, paymentMethodType = nil, primaryUserId = nil, accountLifeCycleStatus = nil, timeStamp = nil, timeZone = nil, pauseReason = nil)
    @accountType = accountType
    @billToCustomerId = billToCustomerId
    @countryCode = countryCode
    @currencyType = currencyType
    @accountFinancialStatus = accountFinancialStatus
    @id = id
    @language = language
    @lastModifiedByUserId = lastModifiedByUserId
    @lastModifiedTime = lastModifiedTime
    @name = name
    @number = number
    @parentCustomerId = parentCustomerId
    @paymentMethodId = paymentMethodId
    @paymentMethodType = paymentMethodType
    @primaryUserId = primaryUserId
    @accountLifeCycleStatus = accountLifeCycleStatus
    @timeStamp = timeStamp
    @timeZone = timeZone
    @pauseReason = pauseReason
  end
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}AdvertiserAccount
#   accountType - AdCenterWrapper::AccountType
#   billToCustomerId - SOAP::SOAPLong
#   countryCode - SOAP::SOAPString
#   currencyType - AdCenterWrapper::CurrencyType
#   accountFinancialStatus - AdCenterWrapper::AccountFinancialStatus
#   id - SOAP::SOAPLong
#   language - AdCenterWrapper::LanguageType
#   lastModifiedByUserId - SOAP::SOAPLong
#   lastModifiedTime - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   number - SOAP::SOAPString
#   parentCustomerId - SOAP::SOAPLong
#   paymentMethodId - SOAP::SOAPLong
#   paymentMethodType - AdCenterWrapper::PaymentMethodType
#   primaryUserId - SOAP::SOAPLong
#   accountLifeCycleStatus - AdCenterWrapper::AccountLifeCycleStatus
#   timeStamp - SOAP::SOAPBase64
#   timeZone - AdCenterWrapper::TimeZoneType
#   pauseReason - SOAP::SOAPUnsignedByte
#   agencyContactName - SOAP::SOAPString
#   agencyCustomerId - SOAP::SOAPLong
#   salesHouseCustomerId - SOAP::SOAPLong
class AdvertiserAccount < Account
  attr_accessor :accountType
  attr_accessor :billToCustomerId
  attr_accessor :countryCode
  attr_accessor :currencyType
  attr_accessor :accountFinancialStatus
  attr_accessor :id
  attr_accessor :language
  attr_accessor :lastModifiedByUserId
  attr_accessor :lastModifiedTime
  attr_accessor :name
  attr_accessor :number
  attr_accessor :parentCustomerId
  attr_accessor :paymentMethodId
  attr_accessor :paymentMethodType
  attr_accessor :primaryUserId
  attr_accessor :accountLifeCycleStatus
  attr_accessor :timeStamp
  attr_accessor :timeZone
  attr_accessor :pauseReason
  attr_accessor :agencyContactName
  attr_accessor :agencyCustomerId
  attr_accessor :salesHouseCustomerId

  def initialize(accountType = nil, billToCustomerId = nil, countryCode = nil, currencyType = nil, accountFinancialStatus = nil, id = nil, language = nil, lastModifiedByUserId = nil, lastModifiedTime = nil, name = nil, number = nil, parentCustomerId = nil, paymentMethodId = nil, paymentMethodType = nil, primaryUserId = nil, accountLifeCycleStatus = nil, timeStamp = nil, timeZone = nil, pauseReason = nil, agencyContactName = nil, agencyCustomerId = nil, salesHouseCustomerId = nil)
    @accountType = accountType
    @billToCustomerId = billToCustomerId
    @countryCode = countryCode
    @currencyType = currencyType
    @accountFinancialStatus = accountFinancialStatus
    @id = id
    @language = language
    @lastModifiedByUserId = lastModifiedByUserId
    @lastModifiedTime = lastModifiedTime
    @name = name
    @number = number
    @parentCustomerId = parentCustomerId
    @paymentMethodId = paymentMethodId
    @paymentMethodType = paymentMethodType
    @primaryUserId = primaryUserId
    @accountLifeCycleStatus = accountLifeCycleStatus
    @timeStamp = timeStamp
    @timeZone = timeZone
    @pauseReason = pauseReason
    @agencyContactName = agencyContactName
    @agencyCustomerId = agencyCustomerId
    @salesHouseCustomerId = salesHouseCustomerId
  end
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}Customer
#   customerAddress - AdCenterWrapper::Address
#   customerFinancialStatus - AdCenterWrapper::CustomerFinancialStatus
#   id - SOAP::SOAPLong
#   industry - AdCenterWrapper::Industry
#   lastModifiedByUserId - SOAP::SOAPLong
#   lastModifiedTime - SOAP::SOAPDateTime
#   marketCountry - SOAP::SOAPString
#   marketLanguage - AdCenterWrapper::LanguageType
#   name - SOAP::SOAPString
#   serviceLevel - AdCenterWrapper::ServiceLevel
#   customerLifeCycleStatus - AdCenterWrapper::CustomerLifeCycleStatus
#   timeStamp - SOAP::SOAPBase64
#   number - SOAP::SOAPString
class Customer
  attr_accessor :customerAddress
  attr_accessor :customerFinancialStatus
  attr_accessor :id
  attr_accessor :industry
  attr_accessor :lastModifiedByUserId
  attr_accessor :lastModifiedTime
  attr_accessor :marketCountry
  attr_accessor :marketLanguage
  attr_accessor :name
  attr_accessor :serviceLevel
  attr_accessor :customerLifeCycleStatus
  attr_accessor :timeStamp
  attr_accessor :number

  def initialize(customerAddress = nil, customerFinancialStatus = nil, id = nil, industry = nil, lastModifiedByUserId = nil, lastModifiedTime = nil, marketCountry = nil, marketLanguage = nil, name = nil, serviceLevel = nil, customerLifeCycleStatus = nil, timeStamp = nil, number = nil)
    @customerAddress = customerAddress
    @customerFinancialStatus = customerFinancialStatus
    @id = id
    @industry = industry
    @lastModifiedByUserId = lastModifiedByUserId
    @lastModifiedTime = lastModifiedTime
    @marketCountry = marketCountry
    @marketLanguage = marketLanguage
    @name = name
    @serviceLevel = serviceLevel
    @customerLifeCycleStatus = customerLifeCycleStatus
    @timeStamp = timeStamp
    @number = number
  end
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}Address
#   city - SOAP::SOAPString
#   countryCode - SOAP::SOAPString
#   id - SOAP::SOAPLong
#   line1 - SOAP::SOAPString
#   line2 - SOAP::SOAPString
#   line3 - SOAP::SOAPString
#   line4 - SOAP::SOAPString
#   postalCode - SOAP::SOAPString
#   stateOrProvince - SOAP::SOAPString
#   timeStamp - SOAP::SOAPBase64
class Address
  attr_accessor :city
  attr_accessor :countryCode
  attr_accessor :id
  attr_accessor :line1
  attr_accessor :line2
  attr_accessor :line3
  attr_accessor :line4
  attr_accessor :postalCode
  attr_accessor :stateOrProvince
  attr_accessor :timeStamp

  def initialize(city = nil, countryCode = nil, id = nil, line1 = nil, line2 = nil, line3 = nil, line4 = nil, postalCode = nil, stateOrProvince = nil, timeStamp = nil)
    @city = city
    @countryCode = countryCode
    @id = id
    @line1 = line1
    @line2 = line2
    @line3 = line3
    @line4 = line4
    @postalCode = postalCode
    @stateOrProvince = stateOrProvince
    @timeStamp = timeStamp
  end
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}User
#   contactInfo - AdCenterWrapper::ContactInfo
#   customerAppScope - AdCenterWrapper::ApplicationType
#   customerId - SOAP::SOAPLong
#   id - SOAP::SOAPLong
#   jobTitle - SOAP::SOAPString
#   lastModifiedByUserId - SOAP::SOAPLong
#   lastModifiedTime - SOAP::SOAPDateTime
#   lcid - AdCenterWrapper::LCID
#   name - AdCenterWrapper::PersonName
#   password - SOAP::SOAPString
#   secretAnswer - SOAP::SOAPString
#   secretQuestion - AdCenterWrapper::SecretQuestion
#   userLifeCycleStatus - AdCenterWrapper::UserLifeCycleStatus
#   timeStamp - SOAP::SOAPBase64
#   userName - SOAP::SOAPString
class User
  attr_accessor :contactInfo
  attr_accessor :customerAppScope
  attr_accessor :customerId
  attr_accessor :id
  attr_accessor :jobTitle
  attr_accessor :lastModifiedByUserId
  attr_accessor :lastModifiedTime
  attr_accessor :lcid
  attr_accessor :name
  attr_accessor :password
  attr_accessor :secretAnswer
  attr_accessor :secretQuestion
  attr_accessor :userLifeCycleStatus
  attr_accessor :timeStamp
  attr_accessor :userName

  def initialize(contactInfo = nil, customerAppScope = nil, customerId = nil, id = nil, jobTitle = nil, lastModifiedByUserId = nil, lastModifiedTime = nil, lcid = nil, name = nil, password = nil, secretAnswer = nil, secretQuestion = nil, userLifeCycleStatus = nil, timeStamp = nil, userName = nil)
    @contactInfo = contactInfo
    @customerAppScope = customerAppScope
    @customerId = customerId
    @id = id
    @jobTitle = jobTitle
    @lastModifiedByUserId = lastModifiedByUserId
    @lastModifiedTime = lastModifiedTime
    @lcid = lcid
    @name = name
    @password = password
    @secretAnswer = secretAnswer
    @secretQuestion = secretQuestion
    @userLifeCycleStatus = userLifeCycleStatus
    @timeStamp = timeStamp
    @userName = userName
  end
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}ContactInfo
#   address - AdCenterWrapper::Address
#   contactByPhone - SOAP::SOAPBoolean
#   contactByPostalMail - SOAP::SOAPBoolean
#   email - SOAP::SOAPString
#   emailFormat - AdCenterWrapper::EmailFormat
#   fax - SOAP::SOAPString
#   homePhone - SOAP::SOAPString
#   id - SOAP::SOAPLong
#   mobile - SOAP::SOAPString
#   phone1 - SOAP::SOAPString
#   phone2 - SOAP::SOAPString
class ContactInfo
  attr_accessor :address
  attr_accessor :contactByPhone
  attr_accessor :contactByPostalMail
  attr_accessor :email
  attr_accessor :emailFormat
  attr_accessor :fax
  attr_accessor :homePhone
  attr_accessor :id
  attr_accessor :mobile
  attr_accessor :phone1
  attr_accessor :phone2

  def initialize(address = nil, contactByPhone = nil, contactByPostalMail = nil, email = nil, emailFormat = nil, fax = nil, homePhone = nil, id = nil, mobile = nil, phone1 = nil, phone2 = nil)
    @address = address
    @contactByPhone = contactByPhone
    @contactByPostalMail = contactByPostalMail
    @email = email
    @emailFormat = emailFormat
    @fax = fax
    @homePhone = homePhone
    @id = id
    @mobile = mobile
    @phone1 = phone1
    @phone2 = phone2
  end
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}PersonName
#   firstName - SOAP::SOAPString
#   lastName - SOAP::SOAPString
#   middleInitial - SOAP::SOAPString
class PersonName
  attr_accessor :firstName
  attr_accessor :lastName
  attr_accessor :middleInitial

  def initialize(firstName = nil, lastName = nil, middleInitial = nil)
    @firstName = firstName
    @lastName = lastName
    @middleInitial = middleInitial
  end
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}ArrayOfCustomerInfo
class ArrayOfCustomerInfo < ::Array
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}CustomerInfo
#   id - SOAP::SOAPLong
#   name - SOAP::SOAPString
class CustomerInfo
  attr_accessor :id
  attr_accessor :name

  def initialize(id = nil, name = nil)
    @id = id
    @name = name
  end
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}ArrayOfUserInfo
class ArrayOfUserInfo < ::Array
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}UserInfo
#   id - SOAP::SOAPLong
#   userName - SOAP::SOAPString
class UserInfo
  attr_accessor :id
  attr_accessor :userName

  def initialize(id = nil, userName = nil)
    @id = id
    @userName = userName
  end
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}ArrayOfPilotFeature
class ArrayOfPilotFeature < ::Array
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}PilotFeature
#   id - SOAP::SOAPInt
#   countries - AdCenterWrapper::ArrayOfstring
class PilotFeature
  attr_accessor :id
  attr_accessor :countries

  def initialize(id = nil, countries = nil)
    @id = id
    @countries = countries
  end
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}ArrayOfAccountInfoWithCustomerData
class ArrayOfAccountInfoWithCustomerData < ::Array
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}AccountInfoWithCustomerData
#   customerId - SOAP::SOAPLong
#   customerName - SOAP::SOAPString
#   accountId - SOAP::SOAPLong
#   accountName - SOAP::SOAPString
#   accountNumber - SOAP::SOAPString
#   accountLifeCycleStatus - AdCenterWrapper::AccountLifeCycleStatus
#   pauseReason - SOAP::SOAPUnsignedByte
class AccountInfoWithCustomerData
  attr_accessor :customerId
  attr_accessor :customerName
  attr_accessor :accountId
  attr_accessor :accountName
  attr_accessor :accountNumber
  attr_accessor :accountLifeCycleStatus
  attr_accessor :pauseReason

  def initialize(customerId = nil, customerName = nil, accountId = nil, accountName = nil, accountNumber = nil, accountLifeCycleStatus = nil, pauseReason = nil)
    @customerId = customerId
    @customerName = customerName
    @accountId = accountId
    @accountName = accountName
    @accountNumber = accountNumber
    @accountLifeCycleStatus = accountLifeCycleStatus
    @pauseReason = pauseReason
  end
end

# {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOflong
class ArrayOflong < ::Array
end

# {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOfint
class ArrayOfint < ::Array
end

# {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOfstring
class ArrayOfstring < ::Array
end

# {https://adapi.microsoft.com}ApplicationFault
#   trackingId - SOAP::SOAPString
class ApplicationFault
  attr_accessor :trackingId

  def initialize(trackingId = nil)
    @trackingId = trackingId
  end
end

# {https://adapi.microsoft.com}AdApiFaultDetail
#   trackingId - SOAP::SOAPString
#   errors - AdCenterWrapper::ArrayOfAdApiError
class AdApiFaultDetail < ::StandardError
  attr_accessor :trackingId
  attr_accessor :errors

  def initialize(trackingId = nil, errors = nil)
    @trackingId = trackingId
    @errors = errors
  end
end

# {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#   trackingId - SOAP::SOAPString
#   operationErrors - AdCenterWrapper::ArrayOfOperationError
class ApiFault < ::StandardError
  attr_accessor :trackingId
  attr_accessor :operationErrors

  def initialize(trackingId = nil, operationErrors = nil)
    @trackingId = trackingId
    @operationErrors = operationErrors
  end
end

# {https://adapi.microsoft.com}ArrayOfAdApiError
class ArrayOfAdApiError < ::Array
end

# {https://adapi.microsoft.com}AdApiError
#   code - SOAP::SOAPInt
#   detail - SOAP::SOAPString
#   errorCode - SOAP::SOAPString
#   message - SOAP::SOAPString
class AdApiError
  attr_accessor :code
  attr_accessor :detail
  attr_accessor :errorCode
  attr_accessor :message

  def initialize(code = nil, detail = nil, errorCode = nil, message = nil)
    @code = code
    @detail = detail
    @errorCode = errorCode
    @message = message
  end
end

# {https://adcenter.microsoft.com/api/customermanagement/Exception}ArrayOfOperationError
class ArrayOfOperationError < ::Array
end

# {https://adcenter.microsoft.com/api/customermanagement/Exception}OperationError
#   code - SOAP::SOAPInt
#   details - SOAP::SOAPString
#   message - SOAP::SOAPString
class OperationError
  attr_accessor :code
  attr_accessor :details
  attr_accessor :message

  def initialize(code = nil, details = nil, message = nil)
    @code = code
    @details = details
    @message = message
  end
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}AccountLifeCycleStatus
class AccountLifeCycleStatus < ::String
  Active = AccountLifeCycleStatus.new("Active")
  Draft = AccountLifeCycleStatus.new("Draft")
  Inactive = AccountLifeCycleStatus.new("Inactive")
  Pause = AccountLifeCycleStatus.new("Pause")
  Pending = AccountLifeCycleStatus.new("Pending")
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}ApplicationType
class ApplicationType < ::String
  Advertiser = ApplicationType.new("Advertiser")
  Publisher = ApplicationType.new("Publisher")
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}AccountType
class AccountType < ::String
  Advertiser = AccountType.new("Advertiser")
  Publisher = AccountType.new("Publisher")
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}CurrencyType
class CurrencyType < ::String
  AlgerianDinar = CurrencyType.new("AlgerianDinar")
  ArgentinePeso = CurrencyType.new("ArgentinePeso")
  ArmenianDram = CurrencyType.new("ArmenianDram")
  AustralianDollar = CurrencyType.new("AustralianDollar")
  AzerbaijanianManat = CurrencyType.new("AzerbaijanianManat")
  BahrainiDinar = CurrencyType.new("BahrainiDinar")
  Baht = CurrencyType.new("Baht")
  Balboa = CurrencyType.new("Balboa")
  BelarussianRuble = CurrencyType.new("BelarussianRuble")
  BelizeDollar = CurrencyType.new("BelizeDollar")
  Bolivar = CurrencyType.new("Bolivar")
  Boliviano = CurrencyType.new("Boliviano")
  BrazilianReal = CurrencyType.new("BrazilianReal")
  BruneiDollar = CurrencyType.new("BruneiDollar")
  CanadianDollar = CurrencyType.new("CanadianDollar")
  ChileanPeso = CurrencyType.new("ChileanPeso")
  ColombianPeso = CurrencyType.new("ColombianPeso")
  CordobaOro = CurrencyType.new("CordobaOro")
  CostaRicanColon = CurrencyType.new("CostaRicanColon")
  Croatiankuna = CurrencyType.new("Croatiankuna")
  CzechKoruna = CurrencyType.new("CzechKoruna")
  DanishKrone = CurrencyType.new("DanishKrone")
  Denar = CurrencyType.new("Denar")
  DominicanPeso = CurrencyType.new("DominicanPeso")
  Dong = CurrencyType.new("Dong")
  EgyptianPound = CurrencyType.new("EgyptianPound")
  Euro = CurrencyType.new("Euro")
  Forint = CurrencyType.new("Forint")
  Guarani = CurrencyType.new("Guarani")
  HongKongDollar = CurrencyType.new("HongKongDollar")
  Hryvnia = CurrencyType.new("Hryvnia")
  IcelandKrona = CurrencyType.new("IcelandKrona")
  IndianRupee = CurrencyType.new("IndianRupee")
  IranianRial = CurrencyType.new("IranianRial")
  IraqiDinar = CurrencyType.new("IraqiDinar")
  JamaicanDollar = CurrencyType.new("JamaicanDollar")
  JapaneseYen = CurrencyType.new("JapaneseYen")
  JordanianDinar = CurrencyType.new("JordanianDinar")
  KenyanShilling = CurrencyType.new("KenyanShilling")
  Kroon = CurrencyType.new("Kroon")
  KuwaitiDinar = CurrencyType.new("KuwaitiDinar")
  Lari = CurrencyType.new("Lari")
  LatvianLats = CurrencyType.new("LatvianLats")
  LebanesePound = CurrencyType.new("LebanesePound")
  Lek = CurrencyType.new("Lek")
  Lempira = CurrencyType.new("Lempira")
  Leu = CurrencyType.new("Leu")
  Lev = CurrencyType.new("Lev")
  LibyanDinar = CurrencyType.new("LibyanDinar")
  LithuanianLitus = CurrencyType.new("LithuanianLitus")
  MalaysianRinggit = CurrencyType.new("MalaysianRinggit")
  MexicanPeso = CurrencyType.new("MexicanPeso")
  MoroccanDirham = CurrencyType.new("MoroccanDirham")
  NewIsraeliSheqel = CurrencyType.new("NewIsraeliSheqel")
  NewTaiwanDollar = CurrencyType.new("NewTaiwanDollar")
  NewZealandDollar = CurrencyType.new("NewZealandDollar")
  NorwegianKrone = CurrencyType.new("NorwegianKrone")
  NuevoSol = CurrencyType.new("NuevoSol")
  PakistanRupee = CurrencyType.new("PakistanRupee")
  Pataca = CurrencyType.new("Pataca")
  PesoUruguayo = CurrencyType.new("PesoUruguayo")
  PhilippinePeso = CurrencyType.new("PhilippinePeso")
  QatariRial = CurrencyType.new("QatariRial")
  Quetzal = CurrencyType.new("Quetzal")
  RialOmani = CurrencyType.new("RialOmani")
  Rufiyaa = CurrencyType.new("Rufiyaa")
  Rupiah = CurrencyType.new("Rupiah")
  RussianRuble = CurrencyType.new("RussianRuble")
  SaudiRiyal = CurrencyType.new("SaudiRiyal")
  SingaporeDollar = CurrencyType.new("SingaporeDollar")
  SlovakKoruna = CurrencyType.new("SlovakKoruna")
  Som = CurrencyType.new("Som")
  SouthAfricanRand = CurrencyType.new("SouthAfricanRand")
  SwedishKrona = CurrencyType.new("SwedishKrona")
  SwissFranc = CurrencyType.new("SwissFranc")
  SyrianPound = CurrencyType.new("SyrianPound")
  Tenge = CurrencyType.new("Tenge")
  Tolar = CurrencyType.new("Tolar")
  TrinidadandTobagoDollar = CurrencyType.new("TrinidadandTobagoDollar")
  Tugrik = CurrencyType.new("Tugrik")
  TunisianDinar = CurrencyType.new("TunisianDinar")
  TurkishLira = CurrencyType.new("TurkishLira")
  UAEDirham = CurrencyType.new("UAEDirham")
  UKPound = CurrencyType.new("UKPound")
  USDollar = CurrencyType.new("USDollar")
  UzbekistanSum = CurrencyType.new("UzbekistanSum")
  Won = CurrencyType.new("Won")
  YemeniRial = CurrencyType.new("YemeniRial")
  YuanRenminbi = CurrencyType.new("YuanRenminbi")
  YugoslavianNewDinar = CurrencyType.new("YugoslavianNewDinar")
  ZimbabweDollar = CurrencyType.new("ZimbabweDollar")
  Zloty = CurrencyType.new("Zloty")
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}AccountFinancialStatus
class AccountFinancialStatus < ::String
  ClearFinancialStatus = AccountFinancialStatus.new("ClearFinancialStatus")
  CreditWarning = AccountFinancialStatus.new("CreditWarning")
  Hold = AccountFinancialStatus.new("Hold")
  PendingCreditCheck = AccountFinancialStatus.new("PendingCreditCheck")
  Proposed = AccountFinancialStatus.new("Proposed")
  SoldToOnly = AccountFinancialStatus.new("SoldToOnly")
  TaxOnHold = AccountFinancialStatus.new("TaxOnHold")
  UserHold = AccountFinancialStatus.new("UserHold")
  WriteOff = AccountFinancialStatus.new("WriteOff")
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}LanguageType
class LanguageType < ::String
  Arabic = LanguageType.new("Arabic")
  Chinese = LanguageType.new("Chinese")
  Danish = LanguageType.new("Danish")
  Dutch = LanguageType.new("Dutch")
  English = LanguageType.new("English")
  Finnish = LanguageType.new("Finnish")
  French = LanguageType.new("French")
  German = LanguageType.new("German")
  Hebrew = LanguageType.new("Hebrew")
  Italian = LanguageType.new("Italian")
  Japanese = LanguageType.new("Japanese")
  Korean = LanguageType.new("Korean")
  Norwegian = LanguageType.new("Norwegian")
  Portuguese = LanguageType.new("Portuguese")
  Russian = LanguageType.new("Russian")
  Spanish = LanguageType.new("Spanish")
  Swedish = LanguageType.new("Swedish")
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}PaymentMethodType
class PaymentMethodType < ::String
  Check = PaymentMethodType.new("Check")
  CreditCard = PaymentMethodType.new("CreditCard")
  ElectronicFundsTransfer = PaymentMethodType.new("ElectronicFundsTransfer")
  Invoice = PaymentMethodType.new("Invoice")
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}TimeZoneType
class TimeZoneType < ::String
  AbuDhabiMuscat = TimeZoneType.new("AbuDhabiMuscat")
  Adelaide = TimeZoneType.new("Adelaide")
  Alaska = TimeZoneType.new("Alaska")
  AlmatyNovosibirsk = TimeZoneType.new("AlmatyNovosibirsk")
  AmsterdamBerlinBernRomeStockholmVienna = TimeZoneType.new("AmsterdamBerlinBernRomeStockholmVienna")
  Arizona = TimeZoneType.new("Arizona")
  AstanaDhaka = TimeZoneType.new("AstanaDhaka")
  AthensBuckarestIstanbul = TimeZoneType.new("AthensBuckarestIstanbul")
  AtlanticTimeCanada = TimeZoneType.new("AtlanticTimeCanada")
  AucklandWellington = TimeZoneType.new("AucklandWellington")
  Azores = TimeZoneType.new("Azores")
  Baghdad = TimeZoneType.new("Baghdad")
  BakuTbilisiYerevan = TimeZoneType.new("BakuTbilisiYerevan")
  BangkokHanoiJakarta = TimeZoneType.new("BangkokHanoiJakarta")
  BeijingChongqingHongKongUrumqi = TimeZoneType.new("BeijingChongqingHongKongUrumqi")
  BelgradeBratislavaBudapestLjubljanaPrague = TimeZoneType.new("BelgradeBratislavaBudapestLjubljanaPrague")
  BogotaLimaQuito = TimeZoneType.new("BogotaLimaQuito")
  Brasilia = TimeZoneType.new("Brasilia")
  Brisbane = TimeZoneType.new("Brisbane")
  BrusselsCopenhagenMadridParis = TimeZoneType.new("BrusselsCopenhagenMadridParis")
  Bucharest = TimeZoneType.new("Bucharest")
  BuenosAiresGeorgetown = TimeZoneType.new("BuenosAiresGeorgetown")
  Cairo = TimeZoneType.new("Cairo")
  CanberraMelbourneSydney = TimeZoneType.new("CanberraMelbourneSydney")
  CapeVerdeIsland = TimeZoneType.new("CapeVerdeIsland")
  CaracasLaPaz = TimeZoneType.new("CaracasLaPaz")
  CasablancaMonrovia = TimeZoneType.new("CasablancaMonrovia")
  CentralAmerica = TimeZoneType.new("CentralAmerica")
  CentralTimeUSCanada = TimeZoneType.new("CentralTimeUSCanada")
  ChennaiKolkataMumbaiNewDelhi = TimeZoneType.new("ChennaiKolkataMumbaiNewDelhi")
  ChihuahuaLaPazMazatlan = TimeZoneType.new("ChihuahuaLaPazMazatlan")
  Darwin = TimeZoneType.new("Darwin")
  EasternTimeUSCanada = TimeZoneType.new("EasternTimeUSCanada")
  Ekaterinburg = TimeZoneType.new("Ekaterinburg")
  FijiKamchatkaMarshallIsland = TimeZoneType.new("FijiKamchatkaMarshallIsland")
  Greenland = TimeZoneType.new("Greenland")
  GreenwichMeanTimeDublinEdinburghLisbonLondon = TimeZoneType.new("GreenwichMeanTimeDublinEdinburghLisbonLondon")
  GuadalajaraMexicoCityMonterrey = TimeZoneType.new("GuadalajaraMexicoCityMonterrey")
  GuamPortMoresby = TimeZoneType.new("GuamPortMoresby")
  HararePretoria = TimeZoneType.new("HararePretoria")
  Hawaii = TimeZoneType.new("Hawaii")
  HelsinkiKyivRigaSofiaTallinnVilnius = TimeZoneType.new("HelsinkiKyivRigaSofiaTallinnVilnius")
  Hobart = TimeZoneType.new("Hobart")
  IndianaEast = TimeZoneType.new("IndianaEast")
  InternationalDatelineWest = TimeZoneType.new("InternationalDatelineWest")
  IrkutskUlaanBataar = TimeZoneType.new("IrkutskUlaanBataar")
  IslamabadKarachiTashkent = TimeZoneType.new("IslamabadKarachiTashkent")
  Jerusalem = TimeZoneType.new("Jerusalem")
  Kabul = TimeZoneType.new("Kabul")
  Kathmandu = TimeZoneType.new("Kathmandu")
  Krasnoyarsk = TimeZoneType.new("Krasnoyarsk")
  KualaLumpurSingapore = TimeZoneType.new("KualaLumpurSingapore")
  KuwaitRiyadh = TimeZoneType.new("KuwaitRiyadh")
  MagadanSolomonIslandNewCaledonia = TimeZoneType.new("MagadanSolomonIslandNewCaledonia")
  MidAtlantic = TimeZoneType.new("MidAtlantic")
  MidwayIslandAndSamoa = TimeZoneType.new("MidwayIslandAndSamoa")
  MoscowStPetersburgVolgograd = TimeZoneType.new("MoscowStPetersburgVolgograd")
  MountainTimeUSCanada = TimeZoneType.new("MountainTimeUSCanada")
  Nairobi = TimeZoneType.new("Nairobi")
  Newfoundland = TimeZoneType.new("Newfoundland")
  Nukualofa = TimeZoneType.new("Nukualofa")
  OsakaSapporoTokyo = TimeZoneType.new("OsakaSapporoTokyo")
  PacificTimeUSCanadaTijuana = TimeZoneType.new("PacificTimeUSCanadaTijuana")
  Perth = TimeZoneType.new("Perth")
  Rangoon = TimeZoneType.new("Rangoon")
  Santiago = TimeZoneType.new("Santiago")
  SarajevoSkopjeWarsawZagreb = TimeZoneType.new("SarajevoSkopjeWarsawZagreb")
  Saskatchewan = TimeZoneType.new("Saskatchewan")
  Seoul = TimeZoneType.new("Seoul")
  SriJayawardenepura = TimeZoneType.new("SriJayawardenepura")
  Taipei = TimeZoneType.new("Taipei")
  Tehran = TimeZoneType.new("Tehran")
  Vladivostok = TimeZoneType.new("Vladivostok")
  WestCentralAfrica = TimeZoneType.new("WestCentralAfrica")
  Yakutsk = TimeZoneType.new("Yakutsk")
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}CustomerFinancialStatus
class CustomerFinancialStatus < ::String
  ClearFinancialStatus = CustomerFinancialStatus.new("ClearFinancialStatus")
  CreditHold = CustomerFinancialStatus.new("CreditHold")
  CreditWarning = CustomerFinancialStatus.new("CreditWarning")
  PendingCreditCheck = CustomerFinancialStatus.new("PendingCreditCheck")
  ProposalsOnly = CustomerFinancialStatus.new("ProposalsOnly")
  SoldToOnly = CustomerFinancialStatus.new("SoldToOnly")
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}Industry
class Industry < ::String
  AgencySalesHouse = Industry.new("AgencySalesHouse")
  Automotive = Industry.new("Automotive")
  ConsumerPackagedGoods = Industry.new("ConsumerPackagedGoods")
  Education = Industry.new("Education")
  Entertainment = Industry.new("Entertainment")
  FinancialServices = Industry.new("FinancialServices")
  FoodServices = Industry.new("FoodServices")
  Gaming = Industry.new("Gaming")
  GovernmentNonprofitPolitical = Industry.new("GovernmentNonprofitPolitical")
  Healthcare = Industry.new("Healthcare")
  Internal = Industry.new("Internal")
  NA = Industry.new("NA")
  Other = Industry.new("Other")
  Pharmaceuticals = Industry.new("Pharmaceuticals")
  PublishingAndWebMedia = Industry.new("PublishingAndWebMedia")
  RealEstate = Industry.new("RealEstate")
  Retail = Industry.new("Retail")
  Services = Industry.new("Services")
  Technology = Industry.new("Technology")
  Telecommunications = Industry.new("Telecommunications")
  TravelHospitality = Industry.new("TravelHospitality")
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}ServiceLevel
class ServiceLevel < ::String
  Internal = ServiceLevel.new("Internal")
  Premium = ServiceLevel.new("Premium")
  Select = ServiceLevel.new("Select")
  SelfServe = ServiceLevel.new("SelfServe")
  SelfServeTrusted = ServiceLevel.new("SelfServeTrusted")
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}CustomerLifeCycleStatus
class CustomerLifeCycleStatus < ::String
  Active = CustomerLifeCycleStatus.new("Active")
  Inactive = CustomerLifeCycleStatus.new("Inactive")
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}EmailFormat
class EmailFormat < ::String
  Html = EmailFormat.new("Html")
  Text = EmailFormat.new("Text")
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}LCID
class LCID < ::String
  ArabicSaudiArabia = LCID.new("ArabicSaudiArabia")
  ChineseHongKong = LCID.new("ChineseHongKong")
  ChineseTaiwan = LCID.new("ChineseTaiwan")
  DanishDenmark = LCID.new("DanishDenmark")
  DutchNetherlands = LCID.new("DutchNetherlands")
  EnglishAustralia = LCID.new("EnglishAustralia")
  EnglishCanada = LCID.new("EnglishCanada")
  EnglishIndia = LCID.new("EnglishIndia")
  EnglishIndonesia = LCID.new("EnglishIndonesia")
  EnglishIreland = LCID.new("EnglishIreland")
  EnglishMalaysia = LCID.new("EnglishMalaysia")
  EnglishNewZeeland = LCID.new("EnglishNewZeeland")
  EnglishPhilippines = LCID.new("EnglishPhilippines")
  EnglishSingapore = LCID.new("EnglishSingapore")
  EnglishThailand = LCID.new("EnglishThailand")
  EnglishUK = LCID.new("EnglishUK")
  EnglishUS = LCID.new("EnglishUS")
  EnglishVietnam = LCID.new("EnglishVietnam")
  FinnishFinland = LCID.new("FinnishFinland")
  FrenchCanada = LCID.new("FrenchCanada")
  FrenchFrance = LCID.new("FrenchFrance")
  GermanAustria = LCID.new("GermanAustria")
  GermanGermany = LCID.new("GermanGermany")
  GermanSwitzerland = LCID.new("GermanSwitzerland")
  HebrewIsrael = LCID.new("HebrewIsrael")
  ItalianItaly = LCID.new("ItalianItaly")
  KoreanKorea = LCID.new("KoreanKorea")
  NorwegianNorway = LCID.new("NorwegianNorway")
  PortuguesePortugal = LCID.new("PortuguesePortugal")
  RussianRussia = LCID.new("RussianRussia")
  SpanishArgentina = LCID.new("SpanishArgentina")
  SpanishChile = LCID.new("SpanishChile")
  SpanishColombia = LCID.new("SpanishColombia")
  SpanishMexico = LCID.new("SpanishMexico")
  SpanishPeru = LCID.new("SpanishPeru")
  SpanishSpain = LCID.new("SpanishSpain")
  SpanishVenezuela = LCID.new("SpanishVenezuela")
  SwedishSweden = LCID.new("SwedishSweden")
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}SecretQuestion
class SecretQuestion < ::String
  Anniversary = SecretQuestion.new("Anniversary")
  FatherMiddleName = SecretQuestion.new("FatherMiddleName")
  FavoriteMovie = SecretQuestion.new("FavoriteMovie")
  FavoritePetsName = SecretQuestion.new("FavoritePetsName")
  FavoriteSportsTeam = SecretQuestion.new("FavoriteSportsTeam")
  FavoriteTeacherName = SecretQuestion.new("FavoriteTeacherName")
  FirstChildMiddleName = SecretQuestion.new("FirstChildMiddleName")
  HighSchoolName = SecretQuestion.new("HighSchoolName")
  None = SecretQuestion.new("None")
  SpouseMiddleName = SecretQuestion.new("SpouseMiddleName")
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}UserLifeCycleStatus
class UserLifeCycleStatus < ::String
  Active = UserLifeCycleStatus.new("Active")
  Deleted = UserLifeCycleStatus.new("Deleted")
  Inactive = UserLifeCycleStatus.new("Inactive")
  New = UserLifeCycleStatus.new("New")
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}UserRole
class UserRole < ::String
  AdvertiserCampaignManager = UserRole.new("AdvertiserCampaignManager")
  ClientAdmin = UserRole.new("ClientAdmin")
  ClientManager = UserRole.new("ClientManager")
  ClientViewer = UserRole.new("ClientViewer")
  PublisherAccountManager = UserRole.new("PublisherAccountManager")
  PublisherAdViewer = UserRole.new("PublisherAdViewer")
  PublisherAdmin = UserRole.new("PublisherAdmin")
  PublisherListManager = UserRole.new("PublisherListManager")
  PublisherReportUser = UserRole.new("PublisherReportUser")
  SuperAdmin = UserRole.new("SuperAdmin")
end

# {https://adcenter.microsoft.com/api/customermanagement}GetAccountsInfoRequest
#   customerId - SOAP::SOAPLong
#   onlyParentAccounts - SOAP::SOAPBoolean
class GetAccountsInfoRequest
  attr_accessor :customerId
  attr_accessor :onlyParentAccounts

  def initialize(customerId = nil, onlyParentAccounts = nil)
    @customerId = customerId
    @onlyParentAccounts = onlyParentAccounts
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}GetAccountsInfoResponse
#   accountsInfo - AdCenterWrapper::ArrayOfAccountInfo
class GetAccountsInfoResponse
  attr_accessor :accountsInfo

  def initialize(accountsInfo = nil)
    @accountsInfo = accountsInfo
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}FindAccountsRequest
#   customerId - SOAP::SOAPLong
#   accountFilter - SOAP::SOAPString
#   topN - SOAP::SOAPInt
#   applicationScope - AdCenterWrapper::ApplicationType
class FindAccountsRequest
  attr_accessor :customerId
  attr_accessor :accountFilter
  attr_accessor :topN
  attr_accessor :applicationScope

  def initialize(customerId = nil, accountFilter = nil, topN = nil, applicationScope = nil)
    @customerId = customerId
    @accountFilter = accountFilter
    @topN = topN
    @applicationScope = applicationScope
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}FindAccountsResponse
#   accountsInfo - AdCenterWrapper::ArrayOfAccountInfo
class FindAccountsResponse
  attr_accessor :accountsInfo

  def initialize(accountsInfo = nil)
    @accountsInfo = accountsInfo
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}AddAccountRequest
#   account - AdCenterWrapper::Account
class AddAccountRequest
  attr_accessor :account

  def initialize(account = nil)
    @account = account
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}AddAccountResponse
#   accountId - SOAP::SOAPLong
#   accountNumber - SOAP::SOAPString
#   createTime - SOAP::SOAPDateTime
class AddAccountResponse
  attr_accessor :accountId
  attr_accessor :accountNumber
  attr_accessor :createTime

  def initialize(accountId = nil, accountNumber = nil, createTime = nil)
    @accountId = accountId
    @accountNumber = accountNumber
    @createTime = createTime
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}UpdateAccountRequest
#   account - AdCenterWrapper::Account
class UpdateAccountRequest
  attr_accessor :account

  def initialize(account = nil)
    @account = account
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}UpdateAccountResponse
#   lastModifiedTime - SOAP::SOAPDateTime
class UpdateAccountResponse
  attr_accessor :lastModifiedTime

  def initialize(lastModifiedTime = nil)
    @lastModifiedTime = lastModifiedTime
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}GetCustomerRequest
#   customerId - SOAP::SOAPLong
class GetCustomerRequest
  attr_accessor :customerId

  def initialize(customerId = nil)
    @customerId = customerId
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}GetCustomerResponse
#   customer - AdCenterWrapper::Customer
class GetCustomerResponse
  attr_accessor :customer

  def initialize(customer = nil)
    @customer = customer
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}UpdateCustomerRequest
#   customer - AdCenterWrapper::Customer
class UpdateCustomerRequest
  attr_accessor :customer

  def initialize(customer = nil)
    @customer = customer
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}UpdateCustomerResponse
#   lastModifiedTime - SOAP::SOAPDateTime
class UpdateCustomerResponse
  attr_accessor :lastModifiedTime

  def initialize(lastModifiedTime = nil)
    @lastModifiedTime = lastModifiedTime
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}SignupCustomerRequest
#   customer - AdCenterWrapper::Customer
#   user - AdCenterWrapper::User
#   account - AdCenterWrapper::Account
#   parentCustomerId - SOAP::SOAPLong
#   applicationScope - AdCenterWrapper::ApplicationType
class SignupCustomerRequest
  attr_accessor :customer
  attr_accessor :user
  attr_accessor :account
  attr_accessor :parentCustomerId
  attr_accessor :applicationScope

  def initialize(customer = nil, user = nil, account = nil, parentCustomerId = nil, applicationScope = nil)
    @customer = customer
    @user = user
    @account = account
    @parentCustomerId = parentCustomerId
    @applicationScope = applicationScope
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}SignupCustomerResponse
#   customerId - SOAP::SOAPLong
#   customerNumber - SOAP::SOAPString
#   userId - SOAP::SOAPLong
#   accountId - SOAP::SOAPLong
#   accountNumber - SOAP::SOAPString
#   createTime - SOAP::SOAPDateTime
class SignupCustomerResponse
  attr_accessor :customerId
  attr_accessor :customerNumber
  attr_accessor :userId
  attr_accessor :accountId
  attr_accessor :accountNumber
  attr_accessor :createTime

  def initialize(customerId = nil, customerNumber = nil, userId = nil, accountId = nil, accountNumber = nil, createTime = nil)
    @customerId = customerId
    @customerNumber = customerNumber
    @userId = userId
    @accountId = accountId
    @accountNumber = accountNumber
    @createTime = createTime
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}GetAccountRequest
#   accountId - SOAP::SOAPLong
class GetAccountRequest
  attr_accessor :accountId

  def initialize(accountId = nil)
    @accountId = accountId
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}GetAccountResponse
#   account - AdCenterWrapper::Account
class GetAccountResponse
  attr_accessor :account

  def initialize(account = nil)
    @account = account
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}GetCustomersInfoRequest
#   customerNameFilter - SOAP::SOAPString
#   topN - SOAP::SOAPInt
#   applicationScope - AdCenterWrapper::ApplicationType
class GetCustomersInfoRequest
  attr_accessor :customerNameFilter
  attr_accessor :topN
  attr_accessor :applicationScope

  def initialize(customerNameFilter = nil, topN = nil, applicationScope = nil)
    @customerNameFilter = customerNameFilter
    @topN = topN
    @applicationScope = applicationScope
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}GetCustomersInfoResponse
#   customersInfo - AdCenterWrapper::ArrayOfCustomerInfo
class GetCustomersInfoResponse
  attr_accessor :customersInfo

  def initialize(customersInfo = nil)
    @customersInfo = customersInfo
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}AddUserRequest
#   user - AdCenterWrapper::User
#   role - AdCenterWrapper::UserRole
#   accountIds - AdCenterWrapper::ArrayOflong
class AddUserRequest
  attr_accessor :user
  attr_accessor :role
  attr_accessor :accountIds

  def initialize(user = nil, role = nil, accountIds = nil)
    @user = user
    @role = role
    @accountIds = accountIds
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}AddUserResponse
#   id - SOAP::SOAPLong
#   createTime - SOAP::SOAPDateTime
class AddUserResponse
  attr_accessor :id
  attr_accessor :createTime

  def initialize(id = nil, createTime = nil)
    @id = id
    @createTime = createTime
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}DeleteAccountRequest
#   accountId - SOAP::SOAPLong
#   timeStamp - SOAP::SOAPBase64
class DeleteAccountRequest
  attr_accessor :accountId
  attr_accessor :timeStamp

  def initialize(accountId = nil, timeStamp = nil)
    @accountId = accountId
    @timeStamp = timeStamp
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}DeleteAccountResponse
class DeleteAccountResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}DeleteCustomerRequest
#   customerId - SOAP::SOAPLong
#   timeStamp - SOAP::SOAPBase64
class DeleteCustomerRequest
  attr_accessor :customerId
  attr_accessor :timeStamp

  def initialize(customerId = nil, timeStamp = nil)
    @customerId = customerId
    @timeStamp = timeStamp
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}DeleteCustomerResponse
class DeleteCustomerResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}UpdateUserRequest
#   user - AdCenterWrapper::User
class UpdateUserRequest
  attr_accessor :user

  def initialize(user = nil)
    @user = user
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}UpdateUserResponse
#   lastModifiedTime - SOAP::SOAPDateTime
class UpdateUserResponse
  attr_accessor :lastModifiedTime

  def initialize(lastModifiedTime = nil)
    @lastModifiedTime = lastModifiedTime
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}UpdateUserRolesRequest
#   customerId - SOAP::SOAPLong
#   userId - SOAP::SOAPLong
#   newRoleId - SOAP::SOAPInt
#   newAccountIds - AdCenterWrapper::ArrayOflong
#   newCustomerIds - AdCenterWrapper::ArrayOflong
#   deleteRoleId - SOAP::SOAPInt
#   deleteAccountIds - AdCenterWrapper::ArrayOflong
#   deleteCustomerIds - AdCenterWrapper::ArrayOflong
class UpdateUserRolesRequest
  attr_accessor :customerId
  attr_accessor :userId
  attr_accessor :newRoleId
  attr_accessor :newAccountIds
  attr_accessor :newCustomerIds
  attr_accessor :deleteRoleId
  attr_accessor :deleteAccountIds
  attr_accessor :deleteCustomerIds

  def initialize(customerId = nil, userId = nil, newRoleId = nil, newAccountIds = nil, newCustomerIds = nil, deleteRoleId = nil, deleteAccountIds = nil, deleteCustomerIds = nil)
    @customerId = customerId
    @userId = userId
    @newRoleId = newRoleId
    @newAccountIds = newAccountIds
    @newCustomerIds = newCustomerIds
    @deleteRoleId = deleteRoleId
    @deleteAccountIds = deleteAccountIds
    @deleteCustomerIds = deleteCustomerIds
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}UpdateUserRolesResponse
#   lastModifiedTime - SOAP::SOAPDateTime
class UpdateUserRolesResponse
  attr_accessor :lastModifiedTime

  def initialize(lastModifiedTime = nil)
    @lastModifiedTime = lastModifiedTime
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}GetUserRequest
#   userId - SOAP::SOAPLong
class GetUserRequest
  attr_accessor :userId

  def initialize(userId = nil)
    @userId = userId
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}GetUserResponse
#   user - AdCenterWrapper::User
#   roles - AdCenterWrapper::ArrayOfint
#   accounts - AdCenterWrapper::ArrayOflong
#   customers - AdCenterWrapper::ArrayOflong
class GetUserResponse
  attr_accessor :user
  attr_accessor :roles
  attr_accessor :accounts
  attr_accessor :customers

  def initialize(user = nil, roles = nil, accounts = nil, customers = nil)
    @user = user
    @roles = roles
    @accounts = accounts
    @customers = customers
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}GetCurrentUserRequest
class GetCurrentUserRequest
  def initialize
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}GetCurrentUserResponse
#   user - AdCenterWrapper::User
class GetCurrentUserResponse
  attr_accessor :user

  def initialize(user = nil)
    @user = user
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}DeleteUserRequest
#   userId - SOAP::SOAPLong
#   timeStamp - SOAP::SOAPBase64
class DeleteUserRequest
  attr_accessor :userId
  attr_accessor :timeStamp

  def initialize(userId = nil, timeStamp = nil)
    @userId = userId
    @timeStamp = timeStamp
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}DeleteUserResponse
class DeleteUserResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}GetUsersInfoRequest
#   customerId - SOAP::SOAPLong
#   statusFilter - AdCenterWrapper::UserLifeCycleStatus
class GetUsersInfoRequest
  attr_accessor :customerId
  attr_accessor :statusFilter

  def initialize(customerId = nil, statusFilter = nil)
    @customerId = customerId
    @statusFilter = statusFilter
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}GetUsersInfoResponse
#   usersInfo - AdCenterWrapper::ArrayOfUserInfo
class GetUsersInfoResponse
  attr_accessor :usersInfo

  def initialize(usersInfo = nil)
    @usersInfo = usersInfo
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}GetCustomerPilotFeatureRequest
#   customerId - SOAP::SOAPLong
class GetCustomerPilotFeatureRequest
  attr_accessor :customerId

  def initialize(customerId = nil)
    @customerId = customerId
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}GetCustomerPilotFeatureResponse
#   featurePilotFlags - AdCenterWrapper::ArrayOfint
class GetCustomerPilotFeatureResponse
  attr_accessor :featurePilotFlags

  def initialize(featurePilotFlags = nil)
    @featurePilotFlags = featurePilotFlags
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}GetPilotFeaturesCountriesRequest
class GetPilotFeaturesCountriesRequest
  def initialize
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}GetPilotFeaturesCountriesResponse
#   pilotFeatures - AdCenterWrapper::ArrayOfPilotFeature
class GetPilotFeaturesCountriesResponse
  attr_accessor :pilotFeatures

  def initialize(pilotFeatures = nil)
    @pilotFeatures = pilotFeatures
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}GetAccessibleCustomerRequest
#   customerId - SOAP::SOAPLong
class GetAccessibleCustomerRequest
  attr_accessor :customerId

  def initialize(customerId = nil)
    @customerId = customerId
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}GetAccessibleCustomerResponse
#   accessibleCustomer - AdCenterWrapper::Customer
#   validFields - SOAP::SOAPInt
class GetAccessibleCustomerResponse
  attr_accessor :accessibleCustomer
  attr_accessor :validFields

  def initialize(accessibleCustomer = nil, validFields = nil)
    @accessibleCustomer = accessibleCustomer
    @validFields = validFields
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}FindAccountsOrCustomersInfoRequest
#   filter - SOAP::SOAPString
#   topN - SOAP::SOAPInt
#   applicationScope - AdCenterWrapper::ApplicationType
class FindAccountsOrCustomersInfoRequest
  attr_accessor :filter
  attr_accessor :topN
  attr_accessor :applicationScope

  def initialize(filter = nil, topN = nil, applicationScope = nil)
    @filter = filter
    @topN = topN
    @applicationScope = applicationScope
  end
end

# {https://adcenter.microsoft.com/api/customermanagement}FindAccountsOrCustomersInfoResponse
#   accountInfoWithCustomerData - AdCenterWrapper::ArrayOfAccountInfoWithCustomerData
class FindAccountsOrCustomersInfoResponse
  attr_accessor :accountInfoWithCustomerData

  def initialize(accountInfoWithCustomerData = nil)
    @accountInfoWithCustomerData = accountInfoWithCustomerData
  end
end


end
