import Navbar from "./NavBar";
import Header from "./Header";
import Routing from "./Routing";

const LoggedIn = ({ setCurrentUser }) => {
  return (
    <div>
      <Header />
      <Navbar setCurrentUser={setCurrentUser}/>
      <Routing />
    </div>
  );
};

export default LoggedIn;
