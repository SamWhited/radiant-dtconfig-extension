require File.expand_path("../../spec_helper", __FILE__)

describe "DramaTech Tags" do
  dataset :greenroom

  let(:greenroom){ pages(:greenroom) }
  let(:greenroomtwo){ pages(:greenroomtwo) }

  describe "<r:if_greenroom>" do
    it "should render the contained block if the page URL matches" do
      greenroom.should render('<r:if_greenroom>true</r:if_greenroom>').as('true')
    end

    it "should not render the contained block if the page URL does not match" do
      greenroomtwo.should render('<r:if_greenroom>true</r:if_greenroom>').as('')
    end
  end

  describe "<r:unless_greenroom>" do
    it "should not render the contained block if the page URL matches" do
      greenroom.should render('<r:unless_greenroom>true</r:unless_greenroom>').as('')
    end

    it "should render the contained block if the page URL does not match" do
      greenroomtwo.should render('<r:unless_greenroom>true</r:unless_greenroom>').as('true')
    end
  end
end
