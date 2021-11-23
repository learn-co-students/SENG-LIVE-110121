// import logo from './logo.svg';
import './App.css';

// Card Data
import cards from './cards';

// Custom Components
import Header from './components/Header';
import NavBar from './components/NavBar';
import CardList from './components/CardList';

function App() {
  return (
    <div className="App">
      
      {/* NavBar Component */}
      <NavBar />
      
      {/* Header Component */}
      <Header 
        firstName = "Louis"
        lastName = "Medina"
        isLoggedIn={true}
      />

      {/* CardList Component */}
      <CardList 
        cards={cards}
      />

    </div>
  );
}

export default App;
