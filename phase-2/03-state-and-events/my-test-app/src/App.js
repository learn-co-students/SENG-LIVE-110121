import './App.css';

// Hook Imports
import { useState } from 'react';

// Component Imports
import Header from './components/Header';
import NavBar from './components/NavBar';
import CardList from './components/CardList';

// Data
import cardData from './cards';

function App() {
  // Vanilla JavaScript, Set Up New State for cardData
  // const [ STATE NAME, SETTER FUNCTION ] = useState(INITIAL VALUE);
  const [cards, setCards] = useState(cardData);
  
  return (
    <div className="App">
      {/* NavBar Component */}
      <NavBar isLoggedIn/>
      
      {/* Header Component */}
      <Header 
        firstName="Louis" 
        lastName="Medina" 
      />

      {/* CardList Component */}
      <CardList 
        cards={cards} 
      />
    </div>
  );
}

export default App;
