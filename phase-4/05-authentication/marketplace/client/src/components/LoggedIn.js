import Navbar from "./NavBar";
import Routing from "./Routing";

const LoggedIn = ({ currentUser, setCurrentUser }) => {
  return (
    <div>
      <h1>Welcome, {currentUser.username}</h1>
      <Navbar setCurrentUser={setCurrentUser}/>
      <Routing />
    </div>
  );
};

export default LoggedIn;
