class Quiz
  def self.crud_verbs
    ['create', 'read', 'update', 'delete']
  end

  def self.model_command
    'rails generate model Restaurant name:string stars:integer'
  end

  def self.model_files
    ['db/migrate/YYYYMMDDHHMMSS_create_restaurants.rb', 'app/models/restaurant.rb']
  end

  def self.crud_routes
    'resources :restaurants'
  end

  def self.crud_actions
    ['index', 'show', 'new', 'create', 'edit', 'update', 'destroy']
  end
end
