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
      sort_by 'experiment_prototype_id, position'
      sort_reverse false
    end
  end
end
