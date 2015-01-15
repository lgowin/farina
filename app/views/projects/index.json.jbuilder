json.array!(@projects) do |project|
  json.extract! project, :id, :project_name, :product_line, :program_id, :project_priority, :project_phase, :sponsor, :owner, :proj_status, :proj_status_prev, :proj_notes
  json.url project_url(project, format: :json)
end
