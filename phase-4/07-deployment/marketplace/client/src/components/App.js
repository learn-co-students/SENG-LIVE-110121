import { useState, useEffect } from "react";
import { BrowserRouter as Router } from "react-router-dom";
import LoggedIn from "./LoggedIn";
import LoggedOut from "./LoggedOut";

function App() {
  const [currentUser, setCurrentUser] = useState(null);
  const [authenticated, setAuthenticated] = useState(false);
  console.log(currentUser);
  useEffect(() => {
    fetch("/me", {
      credentials: "include",
    }).then((res) => {
      if (res.ok) {
        res.json().then((user) => {
          setCurrentUser(user);
          setAuthenticated(true);
        });
      } else {
        setAuthenticated(true);
      }
    });
  }, []);

  if (!authenticated) {
    return <div></div>;
  }
  return (
    <div>
      <h1>Marketplace App</h1>

      <Router>
        {currentUser ? (
          <LoggedIn setCurrentUser={setCurrentUser} currentUser={currentUser} />
        ) : (
          <LoggedOut
            setCurrentUser={setCurrentUser}
            currentUser={currentUser}
          />
        )}
      </Router>
    </div>
  );
}

export default App;
