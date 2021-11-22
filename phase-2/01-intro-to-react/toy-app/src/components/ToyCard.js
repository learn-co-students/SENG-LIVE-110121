function ToyCard(props) {
    return (
        // Must return JSX as one Parent Level Element
        <div>
            {/* Render each value that we need via 
            the "toy" Object passed as a prop
            from "App.js" */}
            
            <h1>Toy Name: {"your code here"}</h1>
            <img src={"your code here"}/>
            <p>Likes: {"your code here"}</p>
        </div>
    );
}

// Export ToyCard Component function to make usable elsewhere in our React app