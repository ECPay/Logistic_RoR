require 'ecpay_logistics'

class YOURCONTROLLER < ApplicationController

  def Create_HOME
    ## 參數值為[PLEASE MODIFY]者，請在每次測試時給予獨特值
	## 預設參數為全帶，欄位值會因條件不同而有所不同 ##
    home_param = {
      'MerchantTradeNo' => '', #請帶20碼uid, ex: f0a0d7e9fae1bb72bc93, 為aiocheckout時所產生的
      'MerchantTradeDate' => '', #請帶交易時間, ex: 2017/05/17 16:23:45, 為aiocheckout時所產生的
      'LogisticsType' => 'Home' 
      'LogisticsSubType' => 'TCAT',  
      'GoodsAmount' => '100',
      'CollectionAmount' => '',
	  'IsCollection' => '',
	  'GoodsName' => '',
      'SenderName' => '綠界科技',  
      'SenderPhone' => ''     
      'SenderCellPhone' => '0912345678',  
      'ReceiverName' => '綠界科技',
      'ReceiverPhone' => '',
	  'ReceiverCellPhone' => '0912345678',
	  'ReceiverEmail' => '',
      'TradeDesc' => '',  
      'ServerReplyURL' => 'http://192.168.0.1/ReceiverServerReply', #物流狀況會通知到此URL
      'ClientReplyURL' => '',  
      'LogisticsC2CReplyURL' => '',
      'Remark' => '',
	  'PlatformID' => '',
	  'SenderZipCode' => '115',
	  'SenderAddress' => '台北市南港區三重路19-1號6-1樓',
	  'ReceiverZipCode' => '115',
	  'ReceiverAddress' => '台北市南港區三重路19-1號6-1樓',
	  'Temperature' => '0001',
	  'Distance' => '00',
	  'Specification' => '0001',
	  'ScheduledPickupTime' => '4',
	  'ScheduledDeliveryTime' => '4',
	  'ScheduledDeliveryDate' => '',
	  'PackageCount' => ''
    }

    create = ECpayLogistics::CreatClient.new
    res = create.create(home_param)
    render :text => res
  end
