import { NavLink, Navigate } from "react-router-dom";

const Navbar = ({setCurrentUser}) => {

  const handleLogout = () => {
    fetch("/logout", {
      method: 'DELETE'
    })
    console.log('logged out')
    setCurrentUser(null)
  }

  return (
    <nav className="flex">
      <ul className="flex">
        <li className="flex-1 mr-2">
          <NavLink to="/items" className="mr-3">
            Items For Sale
          </NavLink>
        </li>
        <li className="flex-1 mr-2">
          <NavLink to="/categories" className="mr-3">
            Categories
          </NavLink>
        </li>
        <li className="text-center flex-1">
          <NavLink to="/items/new" className="mr-3">
            New Item
          </NavLink>
        </li>
        <button onClick={handleLogout}>Logout</button>
      </ul>
      <hr />
    </nav>
  );
};

export default Navbar;
