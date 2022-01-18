import { useState, useEffect } from "react";
import { BrowserRouter as Router } from "react-router-dom";
import LoggedIn from "./LoggedIn";
import LoggedOut from "./LoggedOut";

const App = () => {
  const [isAuthenticated, setIsAuthenticated] = useState(false);
  const [currentUser, setCurrentUser] = useState(null);

  useEffect(() => {
    fetch("/me").then((res) => {
      if (res.ok) {
        res.json().then((user) => {
          setCurrentUser(user);
          setIsAuthenticated(true);
        });
      }
    });
  }, []);

  if (isAuthenticated) {
    return <div></div>;
  }
  return (
    <div className="app">
    <h1>Welcome to Marketplace!</h1>
      <Router>{currentUser ? <LoggedIn /> : <LoggedOut />}</Router>
    </div>
  );
};

export default App;
