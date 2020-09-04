import React, {Component} from 'react';
import ReactDOM from 'react-dom';

import '../assets/stylesheets/application.scss';

class InputNumber extends Component {
  constructor(props){
    super(props)
    this.state = {
      guess: null,
      clicked: false,
      counter: 0,
      inf: 1,      
      sup: 100,  
      play: "Y",  
      number:  1 + Math.floor(Math.random() * (100 - 1)) + 1
    }
  }

 handleSubmit = (event) => {
    event.preventDefault()
  }

  HandleInputChange = (event) =>{
    event.preventDefault()
    console.log(event)
    console.log(event.target.name)
    console.log(event.target.value)
    this.setState({
      [event.target.name]: event.target.value
    })
  }

  
  render () {
    const {guess} = this.state
    return(
      <div>
        <h1> Guess the number </h1>
        <p>Put your number from 1 to 100 {guess}</p>
        <form onSubmit={this.handleSubmit}>
          <p><input type="text" placeholder = "Your number" value={guess} name="name"  onChange={this.handleInputChange} /></p>
          <p><button>Check it!</button></p>
        </form>
      </div>
    )
  }

}

const root = document.getElementById('root');
if (root) {
  ReactDOM.render(<InputNumber />, root);
}