require 'ecpay_logistics'

    ## 參數值為[PLEASE MODIFY]者，請在每次測試時給予獨特值
	## 產生訂單預設參數為全帶，欄位值會因條件不同而有所不同 ##
    base_param = {
      'AllPayLogisticsID' => '1682237', #請帶20碼uid, ex: 84851681561813188188, 為Create時所得到的物流交易編號
	  'CVSPaymentNo' => 'W3720626640', #請帶15碼uid, ex: 848516815618131, 為Create時所得到的寄貨編號
	  'PlatformID' => ''
    }

    create = ECpayLogistics::C2CProcessClient.new
res = create.printokmartc2corderinfo(base_param)
puts res