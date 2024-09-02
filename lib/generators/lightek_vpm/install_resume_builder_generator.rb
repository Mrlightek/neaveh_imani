#install_resume_builder_generator.rb
class InstallResumeBuilder < Rails::Generators::Base
  def create_resume_builder_models
    generate 'model Resume user:references summary:text'
    generate 'model Experience resume:references title:string company:string start_date:datetime end_date:datetime'
    generate 'model Education resume:references school:string degree:string start_date:datetime end_date:datetime'
    generate 'model Skill resume:references name:string proficiency:integer'
    route "resources :resumes do resources :experiences, :education, :skills end"
  end
end
