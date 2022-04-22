class Config < ApplicationRecord
  after_save do
    vars = {}
    customer = DoAddonConnector::Customer.find_by(key: self.resource_uuid)
    if customer.present?
        vars.store(self.name, self.value) 

        # send it to the service
        customer.update_config(vars)
    end
  end

  after_destroy do
    vars = {}
    customer = DoAddonConnector::Customer.find_by(key: self.resource_uuid)
    if customer.present?
        vars.store(self.name, self.value)

        # send it to the service
        customer.update_config(vars)
    end
  end

end
