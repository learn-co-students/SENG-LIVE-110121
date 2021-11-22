/* 
    - Break Out Activity #1: Take HTML from Toy Tales lab (Lines 9 - 48) and turn it into JSX
        - https://github.com/learn-co-curriculum/phase-1-challenge-toy-tale/blob/master/index.html
        - What needs to change? What's the same?
        - Refactor HTML into separate components

    - Break Out Activity #2: Implement a ToyCard Component
        - Start by hard-coding the JSX in your App component return statement
        - Use props to make your component reusable
        - Copy/paste data from the "toys.js" file as props and iterate over Toy objects
          to create a ToyCard component for each
        - BONUS: Try importing and storing data from the "toys.js" file
*/

// Break Out Activity #2: Import Custom Components
import MyToys from './toys';
import ToyCard from './components/ToyCard'
// Break Out Activity #2 - Bonus: Import Array of Toy Objects from "toys.js"

// Root App Component Function
function App() {
    return (
        // Must return JSX as one Parent Level Element
        <div>
        <div id="toy-header">
        <img
          src="https://fontmeme.com/permalink/180719/67429e6afec53d21d64643101c43f029.png"
          alt="toy-header"
        />
      </div>
  
      <div className="container">
        <form className="add-toy-form">
          <h3>Create a toy!</h3>
  
          <input
            type="text"
            name="name"
            value=""
            placeholder="Enter a toy's name..."
            className="input-text"
          />
          <br />
          <input
            type="text"
            name="image"
            value=""
            placeholder="Enter a toy's image URL..."
            className="input-text"
          />
          <br />
          <input
            type="submit"
            name="submit"
            value="Create Toy"
            className="submit"
          />
        </form>
      </div>
      <p style={{textAlign:"center"}}>
        Andy needs your help! <button id="new-toy-btn">Add a new toy!</button>
      </p>
  
      <div id="toy-collection">

          {MyToys.map(toy=>{
              return (<ToyCard toy={toy.id} toy={toy}/>);
          })}
      </div>
    </div>
    )
}
export default App;