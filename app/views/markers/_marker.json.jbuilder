json.extract! marker, :id, :created_at, :updated_at, :lat, :lng, :name, :description, :address

json.companies marker.companies_markers do |cm|
	json.(cm.company, :id, :name)
	json.owned cm.owner?
	json.changed_responsibility_at cm.changed_responsibility_at
	json.companies_marker_id cm.id
end

json.url marker_url(marker)
