class ManageIQ::Providers::AnsibleTower::Inventory::Collector < ManageIQ::Providers::Inventory::Collector
  require_nested :AutomationManager
  require_nested :ConfigurationScriptSource
  require_nested :TargetCollection
end
