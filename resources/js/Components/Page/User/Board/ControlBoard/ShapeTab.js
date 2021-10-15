import React from "react";
import { Context } from "../ContextProvider";

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

  const handleElementAdd = (event, imageName) => {
    const imageSize = event.target.childNodes[0].getBoundingClientRect();    console.log(imageSize);

    const imageUrl = `/img/${imageName}`;
      new fabric.Image.fromURL(imageUrl, img => {
        var scale = 0.2;      
        var oImg = img.set({left:  state.width / 2, top:  state.height / 2 - img.height, angle: 0})
        .scale(scale);

        canvas.add(oImg).renderAll.bind(canvas);
        canvas.setActiveObject(oImg);
      });
  };

  const handleElementAddCircle = (event, name) => {
    const circle = new fabric.Circle({
      left: state.width / 2 - 10,
      top: state.height / 2 - 10,
      radius: 10,
      fill: name,
    });
    canvas.add(circle).renderAll.bind(canvas);
    canvas.setActiveObject(circle);
  }

  return (
    <div className="flex items-center justify-between">
      <div
        className={objectWrapper}
        //draggable
        // onDragStart={(e) => dragStart(e, "line", "#00E7FF")}
        // onDragEnd={dragEnd}
        onClick={(e) => handleElementAdd(e, 'zila_bulta.png')}
      >
        <img
            src={`/img/zila_bulta.png`}
            alt=""
            className="max-w-full max-h-full pointer-events-none"
          />
      </div>
      <div
        className={objectWrapper}
        draggable
        // onDragStart={(e) => dragStart(e, "line", "#DC2626")}
        // onDragEnd={dragEnd}
        onClick={(e) => handleElementAdd(e, 'sarkana_bulta.png')}
      >
          <img
            src={`/img/sarkana_bulta.png`}
            alt=""
            className="max-w-full max-h-full pointer-events-none"
          />
      </div>
      <div
        className={objectWrapper}
        // draggable
        // onDragStart={(e) => dragStart(e, "circle", "#22D3EE")}
        // onDragEnd={dragEnd}
        onClick={(e) => handleElementAddCircle(e, '#22D3EE')}
      >
        <div className="w-2 h-2 rounded-full bg-blue-400"></div>
      </div>
      <div
        className={objectWrapper}
        // draggable
        // onDragStart={(e) => dragStart(e, "circle", "#DC2626")}
        // onDragEnd={dragEnd}
        onClick={(e) => handleElementAddCircle(e, '#DC2626')}

      >
        <div className="w-2 h-2 rounded-full bg-red-600"></div>
      </div>
    </div>
  );
};

export default ShapeTab;
