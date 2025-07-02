class RateConversion
  RoundTo = 10
  
  MemberRateDataFile = "#{Rails.root}/tmp/budget_member_rate_data.yml"
  DeliverableDataFile = "#{Rails.root}/tmp/budget_deliverable_data.yml"
  VendorInvoiceDataFile = "#{Rails.root}/tmp/billing_vendor_invoice_data.yml"

  
  def self.compare_values(pre, post, message)
    pre = pre.to_f.round(RoundTo)
    post = post.to_f.round(RoundTo)
    
    puts "ERROR: #{message} (pre: #{pre}, post: #{post})" unless pre == post
    return pre == post
  end
end
