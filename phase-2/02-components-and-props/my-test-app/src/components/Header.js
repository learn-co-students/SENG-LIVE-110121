function Header({ firstName, lastName, isLoggedIn }) {
    return (
        <header className="header">
                <h2 className="component-name">Header Component</h2>
                <h1>Hi, {firstName} {lastName}! </h1>
                <p>You're Logged In</p>
        </header>
    );
}

export default Header;