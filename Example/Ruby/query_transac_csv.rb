require 'ecpay_payment'


    ## ????[PLEASE MODIFY]??????????????
    ## ???????????base_param????????????? ##
    base_param = {
      'DateType' => '6',
      'BeginDate' => '2018-08-30',  # ??????yyyy-MM-dd?, ex: 2017-02-12
      'EndDate' => '2018-08-30',    # ??????yyyy-MM-dd?, ex: 2017-02-12
      'MediaFormated' => '1',
	  # 'PaymentType' => '01',
      # 'PlatformStatus' => '1',
      # 'PaymentStatus' => '0',
      'AllocateStatus' => '0'
    }


    query = ECpayPayment::ECpayQueryClient.new
    res = query.query_transac_csv(base_param)
    puts res
