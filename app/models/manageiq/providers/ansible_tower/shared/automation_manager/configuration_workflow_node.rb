module ManageIQ::Providers::AnsibleTower::Shared::AutomationManager::ConfigurationWorkflowNode
  extend ActiveSupport::Concern

  include ProviderObjectMixin

  module ClassMethods
    def provider_collection(manager)
      manager.with_provider_connection do |connection|
        connection.api.workflow_job_template_nodes
      end
    end
  end

  def provider_object(connection = nil)
    (connection || connection_source.connect).api.workflow_job_template_nodes.find(manager_ref)
  end

  FRIENDLY_NAME = 'Ansible Tower Workflow Job Template Node'.freeze
end
