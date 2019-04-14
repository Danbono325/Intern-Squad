json.extract! project_sponsor, :id, :ProjectName, :ProjectDesc, :ProjectSponsorName, :ProjectSponsorLink, :created_at, :updated_at
json.url project_sponsor_url(project_sponsor, format: :json)
