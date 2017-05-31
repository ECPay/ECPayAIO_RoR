require 'ecpay_payment'

class YOURCONTROLLER < ApplicationController

  def TradeNoAio
    ## 參數值為[PLEASE MODIFY]者，請在每次測試時給予獨特值
    ## 若要測試非必帶參數請將base_param內註解的參數依需求取消註解 ##
    base_param = {
      'DateType' => '6',
      'BeginDate' => 'PLEASE MODIFY',  # 日期格式為「yyyy-MM-dd」, ex: 2017-02-12
      'EndDate' => 'PLEASE MODIFY',    # 日期格式為「yyyy-MM-dd」, ex: 2017-02-12
      'MediaFormated' => '1'
	  # 'PaymentType' => '01',
      # 'PlatformStatus' => '1',
      # 'PaymentStatus' => '0',
      # 'AllocateStauts' => '0',
    }


    create = ECpayPayment::ECpayQueryClient.new
    res = query.query_transac_csv(base_param)
    render :text => res
  end
