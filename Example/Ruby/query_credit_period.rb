require 'ecpay_payment'

class YOURCONTROLLER < ApplicationController

  def QueryCreditPeriodInfo
    ## 參數值為[PLEASE MODIFY]者，請在每次測試時給予獨特值
    ## 若要測試非必帶參數請將base_param內註解的參數依需求取消註解 ##
    base_param = {
      'MerchantTradeNo' => 'PLEASE MODIFY',  #請帶20碼uid, ex: f0a0d7e9fae1bb72bc93
    }


    query = ECpayPayment::ECpayQueryClient.new
    res = query.query_credit_period(base_param)
    render :text => res
  end
