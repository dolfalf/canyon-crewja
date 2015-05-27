json.array!(@question_inputs) do |question_input|
  json.extract! question_input, :id, :branch_id, :input_id, :question_group, :question_number, :question_value, :question_comment
  json.url question_input_url(question_input, format: :json)
end
