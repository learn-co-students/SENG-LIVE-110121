// Accepts a Card object as a prop

import { useState } from 'react';

function Card({ title, content="Add Some Content Here"}) {
    // props = { title: "My Title" }
    // props.title => "My Title"
    
    // State to Manage Whether Card Has Been Added to Cart (Or Not) => isAdded
    // Initial Value => false

    const [ isAdded, setAdded ] = useState(false);

    // State to Manage Whether Card Has Been Liked (Or Not) => isLiked
    // Initial Value => false

    const [ isLiked, setLiked ] = useState(false);

    const ColoredLine = ({ color }) => (
        <hr
            style={{
                color: color,
                backgroundColor: color,
                height: 2,
                width: "10rem"
            }}
        />
    );

    const CardContent = () => (
        <>
            <h2 className="component-name">Card Component</h2>
            <h1>{title}</h1>
            <ColoredLine color="black" />
            <p>{content}</p>
        </>
    );

    return (
        <div className="card">
            { isAdded ? <h2>Added to Cart!</h2> : <CardContent /> }


            {/* Break Out Activity #1: Modify the onClick behavior of our Add to Cart <button> 
            to render only an H2 element saying “Added to Cart” in place of Card details. */}

            {/* Break Out Activity #2: Create a <Button /> Component to enable each Button to 
            manage its own isToggled state. 💡 To configure each <Button />, try passing a “name” 
            prop from Card.js */}

            <button className="button" onClick={() => setAdded(!isAdded)}>
                {isAdded ? "Remove From Cart" : "Add to Cart" }
            </button>
            <br />
            <button className="button" onClick={() => setLiked(!isLiked)}>
                {isLiked ? "❤️" : "♡" }
            </button>
        </div>
    );
}

export default Card;