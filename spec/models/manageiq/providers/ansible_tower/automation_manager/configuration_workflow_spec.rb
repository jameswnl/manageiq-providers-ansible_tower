describe ManageIQ::Providers::AnsibleTower::AutomationManager::ConfigurationWorkflow do
  let(:provider_with_authentication)         { FactoryGirl.create(:provider_ansible_tower, :with_authentication) }
  let(:manager_with_authentication)          { provider_with_authentication.managers.first }
  let(:manager_with_configuration_workflows) { FactoryGirl.create(:automation_manager_ansible_tower, :provider, :configuration_workflow) }

  it_behaves_like 'ansible configuration_workflow'
end