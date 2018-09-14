require 'ecpay_logistics'



    ## 參數值為[PLEASE MODIFY]者，請在每次測試時給予獨特值
	## 預設參數為全帶，欄位值會因條件不同而有所不同 ##
    b2candc2c_param = {
      'MerchantTradeNo' => '', #請帶20碼uid, ex: f0a0d7e9fae1bb72bc93, 為aiocheckout時所產生的
      'MerchantTradeDate' => '2017/05/17 16:23:45', #請帶交易時間, ex: 2017/05/17 16:23:45, 為aiocheckout時所產生的
      'LogisticsType' => 'CVS',
      'LogisticsSubType' => 'UNIMART',
      'GoodsAmount' => '20000',
      'CollectionAmount' => '20000',
	  'IsCollection' => '',
	  'GoodsName' => 'test',
      'SenderName' => '綠界科技',
      'SenderPhone' => '',
      'SenderCellPhone' => '0912345678',  
      'ReceiverName' => '綠界!@#',
      'ReceiverPhone' => '',
	  'ReceiverCellPhone' => '0912345678',
	  'ReceiverEmail' => '',
      'TradeDesc' => '',  
      'ServerReplyURL' => 'http://192.168.0.1/ReceiverServerReply', #物流狀況會通知到此URL
      'ClientReplyURL' => '',  
      'LogisticsC2CReplyURL' => 'https://www.ecpay.com.tw',
      'Remark' => '',
	  'PlatformID' => '',
	  'ReceiverStoreID' => '991182', #請帶收件人門市代號
	  'ReturnStoreID' => ''
    }

    create = ECpayLogistics::CreateClient.new
    res = create.create(b2candc2c_param)
    puts res

