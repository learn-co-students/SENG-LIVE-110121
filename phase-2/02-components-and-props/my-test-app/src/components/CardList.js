import Card from './Card';

// function Card() {
//     const allCards = cards.map(({ id, content = "Nothing", title }) => {
//       return (
//         <div className="card" key={id}>
//           <h2 className="component-name">Card Component</h2>
//           <h1>Title: {title}</h1>
//           <p>Content: {content}</p>
//         </div>
//       );
//     });
  
//     return <>{allCards}</>;
// }

function CardList(props) {
    
    return (
        <div className="card-list">
            <h2 className="component-name">Card List Component</h2>
            <br />
            
            {/* Break Out Activity #1: Render multiple <Card> components 
            displaying “title and “content” */}
            
            {props.cards.map(card => {
                return (
                    <Card
                        key={card.id} 
                        title={card.title} 
                        content={card.content}
                    />
                )
            })}

            {/* ❗ your code here */}
        </div>
    );
}

export default CardList;