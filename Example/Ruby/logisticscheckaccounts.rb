require 'ecpay_logistics'

class YOURCONTROLLER < ApplicationController

  def LogisticsCheckAccounts
    ## 參數值為[PLEASE MODIFY]者，請在每次測試時給予獨特值
	## 產生訂單預設參數為全帶，欄位值會因條件不同而有所不同 ##
    base_param = {
      'RtnMerchantTradeNo' => '', #請帶13碼uid, ex: 1531548185111, 為ReturnCVS時所得到的退貨訂單編號
      'PlatformID' => ''
    }

    create = ECpayLogistics::QueryClient.new
    res = create.logisticscheckaccounts(base_param)
    render :text => res
  end