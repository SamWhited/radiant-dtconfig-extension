class GreenroomDataset < Dataset::Base
  uses :home_page

  def load
    create_page "greenroom" do
      create_page "greenroomchild"
    end
    create_page "greenroomtwo" do
      create_page "greenroomtwochild"
    end
  end
end
