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

// Break Out Activity #2 - Bonus: Import Array of Toy Objects from "toys.js"

// Root App Component Function
function App() {
    return (
        // Must return JSX as one Parent Level Element
        <div>
            {/* Break Out Activity #1: Refactor HTML into JSX */}
            <h1>Toys Go Here!</h1>    
        </div>
  );
}

export default App;