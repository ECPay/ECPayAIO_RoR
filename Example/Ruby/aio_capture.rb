require 'ecpay_payment'

class YOURCONTROLLER < ApplicationController

  def Capture
    ## 參數值為[PLEASE MODIFY]者，請在每次測試時給予獨特值
    ## 若要測試非必帶參數請將base_param內註解的參數依需求取消註解 ##
    base_param = {
      'MerchantTradeNo' => 'close', #請帶20碼uid, ex: f0a0d7e9fae1bb72bc93
      'CaptureAMT' => '70',  
      'UserRefundAMT' => '30'     
      #'UpdatePlatformChargeFee' => '',  
      #'PlatformChargeFee' => '',
      #'Remark' => '撥退款備註'
    }


    create = ECpayPayment::ECpayExecRefundAndGrant.new
    res = create.aio_capture(base_param)
    render :text => res
  end
