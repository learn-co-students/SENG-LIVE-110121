import ItemForm from "./items/ItemForm";
import ItemsList from "./items/ItemsList";
import CategoriesList from "./categories/CategoriesList";
import { Routes, Route } from "react-router-dom";

const Routing = () => {
  return (
    <Routes>
      <Route replace path="/items/new" element={<ItemForm />} />
      <Route path="/items" element={<ItemsList />} />
      <Route path="/categories" element={<CategoriesList />} />
    </Routes>
  );
};

export default Routing;
