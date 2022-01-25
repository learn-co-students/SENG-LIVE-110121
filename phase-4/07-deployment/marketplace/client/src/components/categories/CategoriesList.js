import { useState, useEffect } from "react";

const CategoriesList = () => {
  const [categories, setCategories] = useState([]);
  useEffect(() => {
    fetch("/categories")
      .then((resp) => resp.json)
      .then((categories) => setCategories(categories));
  }, []);
  console.log(categories);
  return <div>Categories</div>;
};

export default CategoriesList;
