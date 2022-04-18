class Config < ApplicationRecord
  after_save do
    vars = {}
    customer = DoAddonConnector::Customer.find_by(resource_uuid: self.resource_uuid)
    vars.store(self.name, self.value)

    # send it to the service
    customer.update_config(vars)
  end

  after_destroy do
    DoAddonConnector::Customer.update_config(vars)
  end

end
