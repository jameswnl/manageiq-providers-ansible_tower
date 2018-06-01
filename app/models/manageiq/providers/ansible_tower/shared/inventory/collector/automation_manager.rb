module ManageIQ::Providers::AnsibleTower::Shared::Inventory::Collector::AutomationManager
  def connection
    @connection ||= manager.connect
  end

  def inventories
    connection.api.inventories.all
  end

  def hosts
    connection.api.hosts.all
  end

  def job_templates
    connection.api.job_templates.all
  end

  def workflow_job_templates
    connection.api.workflow_job_templates.all
  end

  def workflow_job_template_nodes
    connection.api.workflow_job_template_nodes.all
  end

  def projects
    connection.api.projects.all
  end

  def credentials
    connection.api.credentials.all
  end
end
