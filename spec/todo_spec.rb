require 'todo'

RSpec.describe TodoList do
  let(:todo1){TodoList.new}
  describe ".add" do
    it "adds a todo to the list" do
      list_1 = @todos
      expect(todo1.add('Make mac and cheese')).to eq(['Make mac and cheese'])
    end
  end

  describe ".remove" do
    it "removes a todo from the list" do
      expect(todo1.remove('Make mac and cheese')).to eq(nil)
    end
  end

  describe "#todos" do
    it "returns all todos" do
      expect(todo1.todos).to eq(todo1.todos)
    end
  end
end
