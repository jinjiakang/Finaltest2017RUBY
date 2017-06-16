json.extract! grade_result, :id, :name, :stundent_id, :score, :created_at, :updated_at
json.url grade_result_url(grade_result, format: :json)
