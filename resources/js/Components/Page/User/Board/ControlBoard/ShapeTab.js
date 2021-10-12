import React from "react";
import { Context } from "../ContextProvider";

const objectWrapper =
  "py-2 px-2 border border-transparent hover:border-gray-500 rounded-sm cursor-pointer";

const ShapeTab = () => {
  const { state, setState } = React.useContext(Context);

  const dragStart = (event, type, color) => {
    const objectSize = event.target.childNodes[0].getBoundingClientRect();
    setState({
      ...state,
      dragItem: {
        type,
        object: {
          color,
        },
        offsetX: event.clientX - objectSize.left,
        offsetY: event.clientY - objectSize.top,
        width: objectSize.width,
        height: objectSize.height,
      },
    });
  };

  const dragEnd = () => {
    setState({
      ...state,
      dragItem: {
        type: null,
        object: null,
        offsetX: 0,
        offsetY: 0,
        width: 0,
        height: 0,
      },
    });
  };

  return (
    <div className="flex items-center justify-between">
      <div
        className={objectWrapper}
        draggable
        onDragStart={(e) => dragStart(e, "line", "#00E7FF")}
        onDragEnd={dragEnd}
      >
        <div className="w-14 h-2 bg-cyan-400"></div>
      </div>
      <div
        className={objectWrapper}
        draggable
        onDragStart={(e) => dragStart(e, "line", "#DC2626")}
        onDragEnd={dragEnd}
      >
        <div className="w-14 h-2 bg-red-600"></div>
      </div>
      <div
        className={objectWrapper}
        draggable
        onDragStart={(e) => dragStart(e, "circle", "#22D3EE")}
        onDragEnd={dragEnd}
      >
        <div className="w-2 h-2 rounded-full bg-cyan-400"></div>
      </div>
      <div
        className={objectWrapper}
        draggable
        onDragStart={(e) => dragStart(e, "circle", "#DC2626")}
        onDragEnd={dragEnd}
      >
        <div className="w-2 h-2 rounded-full bg-red-600"></div>
      </div>
    </div>
  );
};

export default ShapeTab;
