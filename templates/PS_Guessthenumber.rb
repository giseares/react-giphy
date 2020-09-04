// 0. get a randon number <= 100
// 1. Ask the user guest a number
// 2. Initialize a counter for attemps
// 3. Tell the user how far is from the number
// 4. Loop until guess is right (compare)
// 5. Ask if want to play again

puts "Welcome to guest the number"
inf = 1
sup = 100
number = rand(inf...sup)

puts "Please enter a number from 1 to 100"
prints "> "
guess = gets.chomp.to_i
counter = 1
play = "Y"

until play == "Y"
  until number == guess
    puts "Yoy guess was #{guess}"
    if number > guess 
        puts "The number is bigger"
    else 
      puts "The number is smaller"
    end 
    puts "try again"
    prints "> "
    guess = gets.chomp.to_i
    counter += 1
  end
  puts "Congratulations you win!!"
  puts "You needed #{counter} tries!"
  puts "Do you want play again? Y/N"
  prints "> "
  play = gets.chomp.to_i
  number = rand(inf...sup)
  counter = 1
  puts "Please enter a number from 1 to 100"
  prints "> "
  guess = gets.chomp.to_i
end

puts "Thks to play with us"







class Hello extends Component {
  constructor(props) {
    super(props);

    this.state = {
      clicked: false,
      counter: 0,
      // inf: 1,
      // sup: 100,
      play: "Y",
      number:  1 + Math.floor(Math.random() * (100 - 1)) + 1
    };
  }

  handleClick = () => {
    // CHANGE THE STATE
    this.setState({
      clicked: !this.state.clicked,
      counter: this.state.counter + 1
    });
  }


  render() {
    // BUILD AND RETURN HTML
    return (
      <div className={this.state.clicked ? 'clicked': null}
       onClick={this.handleClick}>
       Hello {this.props.name} 
      </div>
    )
    return
      if(this.state.page === 'news') {
          return <Text>This is news page</Text>;
      } else {
          return <Text>This is another page</Text>;
      }
  }
  }
}

const root = document.getElementById('root');
if (root) {
  ReactDOM.render(<Hello name="Besysoft" />, root);
}
