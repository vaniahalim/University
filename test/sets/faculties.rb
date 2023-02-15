module Contexts
  module Faculties

    def create_faculties
      @profq = FactoryBot.create(:faculty, first_name: "Jeria", last_name: "Quesenberry", association: @is, rank: "Professor", active: true)
      @profh = FactoryBot.create(:faculty, first_name: "Larry", last_name: "Heimann", association: @cs, rank: "Professor", active: true)
      @profe = FactoryBot.create(:faculty, first_name: "Bob", last_name: "Engel", association: @english, rank: "Associate Professor", active: true)
      @profw = FactoryBot.create(:faculty, first_name: "Anna", last_name: "Wilson", association: @soc, rank: "Associate Professor", active: false)
    end
    
    def destroy_faculties
      @profq.delete
      @profh.delete
      @profe.delete
      @profw.delete
    end
  end
end