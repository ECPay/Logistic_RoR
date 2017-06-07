require 'ecpay_logistics'

class YOURCONTROLLER < ApplicationController

  def CreateTestData
    ## 參數值為[PLEASE MODIFY]者，請在每次測試時給予獨特值
	## 產生訂單預設參數為全帶，欄位值會因條件不同而有所不同 ##
    base_param = {
      'LogisticsSubType' => 'FAMI',
	  'ClientReplyURL' => '',
	  'PlatformID' => ''
    }

    create = ECpayLogistics::QueryClient.new
    res = create.createtestdata(base_param)
    render :text => res
  end