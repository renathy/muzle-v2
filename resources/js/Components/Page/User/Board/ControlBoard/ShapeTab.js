import React from "react";
import { FaPen } from "react-icons/fa";
import { HiMinusCircle } from "react-icons/hi";

import { Context } from "../ContextProvider";

const buttonClass =
  "rounded w-12 h-12 m-1 flex items-center justify-center text-xl focus:outline-none border border-gray-700 hover:border-gray-300 active:border-gray-500 bg-gray-600";

const objectWrapper =
  "py-2 px-2 border border-transparent hover:border-gray-500 rounded-sm cursor-pointer";

const ShapeTab = () => {
  const { state, setState } = React.useContext(Context);
  const { canvas } = state;

  // const dragStart = (event, type, color) => {
  //   const objectSize = event.target.childNodes[0].getBoundingClientRect();
  //   setState({
  //     ...state,
  //     dragItem: {
  //       type,
  //       object: {
  //         color,
  //       },
  //       offsetX: event.clientX - objectSize.left,
  //       offsetY: event.clientY - objectSize.top,
  //       width: objectSize.width,
  //       height: objectSize.height,
  //     },
  //   });
  // };

  // const dragEnd = () => {
  //   setState({
  //     ...state,
  //     dragItem: {
  //       type: null,
  //       object: null,
  //       offsetX: 0,
  //       offsetY: 0,
  //       width: 0,
  //       height: 0,
  //     },
  //   });
  // };

  const handleAddArrow = (event, imageName) => {
    canvas.isDrawingMode = false;    
    const imageSize = event.target.childNodes[0].getBoundingClientRect();    console.log(imageSize);

    const imageUrl = `/img/${imageName}`;
      new fabric.Image.fromURL(imageUrl, img => {
        var scale = 0.2;      
        var oImg = img.set({
          left:  state.width / 2, 
          top:  state.height / 2 - img.height,
          angle: 0,
          borderColor: '#cc0000',
          cornerColor: '#cc0000',
          cornerStyle: 'circle'})
        .scale(scale);

        canvas.add(oImg).renderAll.bind(canvas);
        canvas.setActiveObject(oImg);
      });
  };

  const handleAddCircle = (event, name) => {
    canvas.isDrawingMode = false;

    const circle = new fabric.Circle({
      left: state.width / 2 - 10,
      top: state.height / 2 - 10,
      radius: 10,
      fill: name,
      borderColor: '#cc0000',
      cornerColor: '#cc0000',
      cornerStyle: 'circle'
    });
    canvas.add(circle).renderAll.bind(canvas);
    canvas.setActiveObject(circle);
  }

  const enableDrawingMode = () => {
    canvas.isDrawingMode = !canvas.isDrawingMode;
    canvas.freeDrawingBrush.color = "red";
  }

  return (
    <div className="grid grid-cols-2 items-center justify-between">
      <div className={objectWrapper}
        onClick={(e) => handleAddArrow(e, 'zila_bulta.png')}
      >
        <img
            src={`/img/zila_bulta.png`}
            alt=""
            className="max-w-full max-h-full pointer-events-none"
          />
      </div>
      <div className={objectWrapper}  
        onClick={(e) => handleAddArrow(e, 'sarkana_bulta.png')}
      >
          <img
            src={`/img/sarkana_bulta.png`}
            alt=""
            className="max-w-full max-h-full pointer-events-none"
          />
      </div>
      <div
        className={objectWrapper}      
        onClick={(e) => handleAddCircle(e, '#22D3EE')}
      >
        <div className="w-6 h-6 rounded-full bg-blue-400"></div>
      </div>
      <div
        className={objectWrapper}
        // draggable
        // onDragStart={(e) => dragStart(e, "circle", "#DC2626")}
        // onDragEnd={dragEnd}
        onClick={(e) => handleAddCircle(e, '#DC2626')}

      >
        <div className="w-6 h-6 rounded-full bg-red-600"></div>
      </div>

      <div className={objectWrapper}>
        <button type="button" onClick={enableDrawingMode} className={buttonClass} title="Zīmēt">
          <FaPen />
        </button>
      </div>
    </div>
  );
};

export default ShapeTab;