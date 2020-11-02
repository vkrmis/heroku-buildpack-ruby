require_relative '../spec_helper'

describe "Bugs" do
  context "database connections" do
    # TODO rake assets:precompile
    it "fails with better error message" do
      Hatchet::Runner.new("connect_to_database_on_first_push", allow_failure: true).deploy do |app|
        expect(app.output).to match("https://devcenter.heroku.com/articles/pre-provision-database")
      end
    end
  end
end
