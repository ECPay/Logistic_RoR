require 'ecpay_logistics'

class YOURCONTROLLER < ApplicationController

  def Map
    ## 參數值為[PLEASE MODIFY]者，請在每次測試時給予獨特值
	## 產生訂單預設參數為全帶，欄位值會因條件不同而有所不同 ##
    base_param = {
      'MerchantTradeNo' => '', #請帶20碼uid, ex: f0a0d7e9fae1bb72bc93
      'ServerReplyURL' => 'http://192.168.0.1/ReceiverServerReply', #物流狀況會通知到此URL
	  'LogisticsType' => 'CVS',
	  'LogisticsSubType' => 'FAMI',
      'IsCollection' => 'N',  
      'ExtraData' => '',
      'Device' => ''
    }

    create = ECpayLogistics::QueryClient.new
    htm = create.expressmap(base_param)
    render :text => htm
  end