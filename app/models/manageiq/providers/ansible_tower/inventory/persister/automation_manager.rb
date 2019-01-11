class ManageIQ::Providers::AnsibleTower::Inventory::Persister::AutomationManager < ManageIQ::Providers::AnsibleTower::Inventory::Persister
  include ManageIQ::Providers::AnsibleTower::Inventory::Persister::Definitions::Collections

  def initialize_inventory_collections
    %i(credentials
       configuration_script_sources
       configured_systems).each do |name|

      add_collection(automation, name)
    end

    add_configuration_scripts

    add_configuration_script_payloads

    add_inventory_root_groups

    add_vms
  end
end
