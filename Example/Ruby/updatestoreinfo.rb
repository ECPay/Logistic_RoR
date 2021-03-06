require 'ecpay_logistics'

class YOURCONTROLLER < ApplicationController

  def UpdateStoreInfo
    ## 參數值為[PLEASE MODIFY]者，請在每次測試時給予獨特值
	## 產生訂單預設參數為全帶，欄位值會因條件不同而有所不同 ##
    base_param = {
      'AllPayLogisticsID' => '', #請帶20碼uid, ex: 84851681561813188188, 為Create時所得到的物流交易編號
	  'CVSPaymentNo' => '', #請帶15碼uid, ex: 848516815618131, 為Create時所得到的寄貨編號
	  'CVSValidationNo' => '', #請帶10碼uid, ex: 8485168156, 為Create時所得到的驗證碼
	  'StoreType' => '01',
	  'ReceiverStoreID' => '',
	  'ReturnStoreID' => '',
	  'PlatformID' => ''
    }

    create = ECpayLogistics::C2CProcessClient.new
    res = create.updatestoreinfo(base_param)
    render :text => res
  end