import React from "react";
import { fabric } from "fabric";
import { Context } from "../ContextProvider";

const buttonClass = "p-2 cursor-pointer rounded-sm bg-gray-700 hover:bg-gray-600 active:bg-gray-700 focus:outline-none";

const TextTab = () => {
  const { state , setState} = React.useContext(Context);
  const { canvas } = state;
  const [canvaText, setCanvaText] = React.useState(state.canvaText);
  const [canvaColor, setCanvaColor] = React.useState(state.canvaColor);

  const handleTextAdd = () => {
    canvas.isDrawingMode = false;

    const text = new fabric.IText('TEXT', {
      left: state.width / 2,
      top: state.height / 2,
      fill: canvaColor,
      borderColor: '#cc0000',
      cornerColor: '#cc0000',
      cornerStyle: 'circle'
    });
    canvas.add(text).renderAll.bind(canvas);
  };
  const handleColor=(color)=>{
    canvas.isDrawingMode = false;

    setCanvaColor(color);
    let activeObject = canvas.getActiveObject(); 
    if(activeObject && activeObject.type == "i-text") {
      canvas.getActiveObject().set({"fill": color});
      canvas.renderAll();
    }
    setState({
      ...state,canvaColor:color
    });
  }
  const handleChange=(event)=>{
    setState({
      ...state,canvaText:event.target.value
    })

    setCanvaText(event.target.value);
  }
  return (
    <div className="space-y-4">
      <div>
        <button className={buttonClass} onClick={handleTextAdd}>
          Pievienot tekstu
        </button>
      </div>
      <div className="flex jsutify-between">
        <div className="rounded-full cursor-pointer border border-gray-300 p-px">
          <div onClick={()=>{handleColor('white')}} className="rounded-full" style={{boxShadow: canvaColor == 'white' ? "0px 1px 7px 3px #665d58" : '',width:"32px", height:"32px",backgroundColor:"white"}}>
          </div>
        </div>
        <div className="rounded-full cursor-pointer border border-gray-300 p-px">
          <div onClick={()=>{handleColor('red')}} className="rounded-full" style={{boxShadow: canvaColor == 'red' ? "0px 1px 7px 3px #665d58" : '',width:"32px", height:"32px",backgroundColor:"red"}}>
          </div>
        </div>
        <div className="rounded-full cursor-pointer border border-gray-300 p-px">
          <div onClick={()=>{handleColor('green')}} className="rounded-full" style={{boxShadow: canvaColor == 'green' ? "0px 1px 7px 3px #665d58" : '',width:"32px", height:"32px",backgroundColor:"green"}}>
          </div>
        </div>
        <div className="rounded-full cursor-pointer border border-gray-300 p-px">
          <div onClick={()=>{handleColor('blue')}} className="rounded-full" style={{boxShadow: canvaColor == 'blue' ? "0px 1px 7px 3px #665d58" : '',width:"32px", height:"32px",backgroundColor:"blue"}}>
          </div>
        </div>
        <div className="rounded-full cursor-pointer border border-gray-300 p-px">
          <div onClick={()=>{handleColor('yellow')}} className="rounded-full" style={{boxShadow: canvaColor == 'yellow' ? "0px 1px 7px 3px #665d58" : '',width:"32px", height:"32px",backgroundColor:"yellow"}}>
          </div>
        </div>
      </div>
      <div className="space-y-2">
        <p>Pievieno aprakstu</p>
        <textarea
          rows={15}
          placeholder="Apraksts"
          className="text-gray-900 p-2 w-full resize-y rounded-md focus:outline-none focus:ring-2 focus:ring-purple-600"
          value={canvaText}
          onChange={handleChange}
        >
        </textarea>
      </div>
    </div>
  );
};

export default TextTab;