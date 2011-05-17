RailsAdmin.authenticate_with do
  unless current_user.id == 1
    raise "Unauthorized access by #{current_user}"
  end
end
RailsAdmin.config do |config|
  config.model RoundPrototype do
    list do
      field :program_prototype_id
      field :position
      field :pair_prototype_id
      sort_by 'program_prototype_type, program_prototype_id, position'
      sort_reverse false
    end
  end

  config.model PhasePrototype do
    list do
      field :experiment_prototype_id
      field :position
      field :program_prototype_id
      field :post_intervention
      sort_by 'experiment_prototype_id, position'
      sort_reverse false
    end
  end
end
