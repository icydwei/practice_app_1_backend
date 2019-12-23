require 'rspec'

class Hash

  def param_converter
    self.map { |i| i * " |inner_join| " } * " |outer_join| "
  end

end


describe 'HTML param converter' do
  it 'Adds an HTML param converter to hash class' do
    hash = {:topic => "baseball", :team => "astros"}
    expect(hash.param_converter).to eq('topic=baseball&team=astros')
  end
end

hash = {:topic => "baseball", :team=> "astros"}
puts hash.param_converter
