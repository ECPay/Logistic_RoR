require 'ecpay_logistics'

class YOURCONTROLLER < ApplicationController

  def ReturnCVS
    ## 參數值為[PLEASE MODIFY]者，請在每次測試時給予獨特值
	## 產生訂單預設參數為全帶，欄位值會因條件不同而有所不同 ##
    base_param = {
      'AllPayLogisticsID' => '', #請帶數字, ex: f0a0d7e9fae1bb72bc93, 為create時所產生的
      'ServerReplyURL' => 'http://192.168.0.1/ReceiverServerReply', #物流狀況會通知到此URL
	  'GoodsName' => '',
	  'GoodsAmount' => '100',
      'CollectionAmount' => '',  
      'ServiceType' => '4',
      'SenderName' => '綠界科技',
	  'SenderPhone' => '',
	  'Remark' => '',
      'Quantity' => '',  
      'Cost' => '',
	  'PlatformID' => ''
    }

    create = ECpayLogistics::ReturnClient.new
    res = create.returncvs(base_param)
    render :text => res
  end