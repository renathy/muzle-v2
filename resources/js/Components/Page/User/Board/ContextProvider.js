import React from "react";
import { Nav } from "./Constant";

export const Context = React.createContext(null);

const ContextProvider = ({ children }) => {
  const [state, setState] = React.useState({
    canvas: null,
    nav: Nav.IMAGE,
    background: null,
    gameId: null,
    dragItem: {},
    width: 1222,
    height: 700,
    data: null,
    showHelper: false,
    canvaText:"Story text",
    canvaColor:"white"
  });

  return (
    <Context.Provider value={{ state, setState }}>
      {children}
    </Context.Provider>
  );
};

export default ContextProvider;
