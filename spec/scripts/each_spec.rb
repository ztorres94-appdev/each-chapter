describe "each_spell_word.rb" do
  
  it "spells 'Georgia' correctly", points: 1 do
    # Un-require each_spell_word.rb
    each_spell_word = $".select{|r| r.include? 'each_spell_word.rb'}
    $".delete(each_spell_word.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("Georgia")
    response = /.?G.?\n.?e.?\n.?o.?\n.?r.?\n.?g.?\n.?i.?\n.?a.?\n/i
    
    expect { require_relative("../../each_spell_word") }.to output(response).to_stdout
  end
end

describe "each_spell_word.rb" do
  
  it "spells 'Supercalifragilisticexpialidocious' correctly", points: 1 do
    # Un-require each_spell_word.rb
    each_spell_word = $".select{|r| r.include? 'each_spell_word.rb'}
    $".delete(each_spell_word.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("Supercalifragilisticexpialidocious")
    response = /.?S.?\n.?u.?\n.?p.?\n.?e.?\n.?r.?\n.?c.?\n.?a.?\n.?l.?\n.?i.?\n.?f.?\n.?r.?\n.?a.?\n.?g.?\n.?i.?\n.?l.?\n.?i.?\n.?s.?\n.?t.?\n.?i.?\n.?c.?\n.?e.?\n.?x.?\n.?p.?\n.?i.?\n.?a.?\n.?l.?\n.?i.?\n.?d.?\n.?o.?\n.?c.?\n.?i.?\n.?o.?\n.?u.?\n.?s.?/i
    
    expect { require_relative("../../each_spell_word") }.to output(response).to_stdout
  end
end


describe "each_letter_count.rb" do
  
  it "prints the letters and number of times the letters appear for the word 'levee'", points: 1 do
    # Un-require each_letter_count.rb
    each_letter_count = $".select{|r| r.include? 'each_letter_count.rb'}
    $".delete(each_letter_count.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("levee")
    
    response = /.?l appears 1 times.?\n.?e appears 3 times.?\n.?v appears 1 times.?\n.?e appears 3 times.?\n.?e appears 3 times.?\n/i

    expect { require_relative("../../each_letter_count") }.to output(response).to_stdout
  end
end

describe "each_letter_count.rb" do
  
  it "prints the letters and number of times the letters appear for the word 'loop'", points: 1 do
    # Un-require each_letter_count.rb
    each_letter_count = $".select{|r| r.include? 'each_letter_count.rb'}
    $".delete(each_letter_count.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("loop")
    
    response = /.?l appears 1 times.?\n.?o appears 2 times.?\n.?o appears 2 times.?\n.?p appears 1 times.?\n/i

    expect { require_relative("../../each_letter_count") }.to output(response).to_stdout
  end
end

describe "each_even_word.rb" do
  
  it "prints the 'mountain' and 'pink' when the input is 'mountain pink vines'", points: 1 do
    # Un-require each_even_word.rb
    each_even_word = $".select{|r| r.include? 'each_even_word.rb'}
    $".delete(each_even_word.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("mountain pink vines")
    
    response = /.?mountain.?\n.?pink.?\n/i

    expect { require_relative("../../each_even_word") }.to output(response).to_stdout
  end
end

describe "each_even_word.rb" do
  
  it "prints nothing when the input is 'odd numbers squad'", points: 1 do
    # Un-require each_even_word.rb
    each_even_word = $".select{|r| r.include? 'each_even_word.rb'}
    $".delete(each_even_word.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("odd numbers squad")
    
    response = /.?odd.?\n.?numbers.?\n.?squad.?\n/i

    expect { require_relative("../../each_even_word") }.to_not output(response).to_stdout
  end
end


