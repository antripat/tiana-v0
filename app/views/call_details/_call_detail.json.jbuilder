json.extract! call_detail, :id, :call_id, :word, :start_time, :end_time, :created_at, :updated_at
json.url call_detail_url(call_detail, format: :json)
