function Card({ title, content = "Add New Content Here!" }) {
    return (
        <div className="card">
            <h2 className="component-name">Card Component</h2>
            
            {/* Break Out Activity #1: Render multiple <Card> components 
            displaying “title and “content” */}
            <h1>Title: {title}</h1>
            <p>Content: {content}</p>
        </div>
    );
}

export default Card;