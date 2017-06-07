require 'ecpay_logistics'

class YOURCONTROLLER < ApplicationController

  def QueryLogisticsTradeInfo
    ## 參數值為[PLEASE MODIFY]者，請在每次測試時給予獨特值
	## 產生訂單預設參數為全帶，欄位值會因條件不同而有所不同 ##
    base_param = {
      'AllPayLogisticsID' => '', #請帶20碼uid, ex: 84851681561813188188, 為Create時所得到的物流交易編號
	  'PlatformID' => ''
    }

    create = ECpayLogistics::QueryClient.new
    res = create.querylogisticstradeinfo(base_param)
    render :text => res
  end