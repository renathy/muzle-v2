import React from "react";
import { Context } from "../ContextProvider";

const objectWrapper =
  "py-2 px-2 border border-transparent hover:border-gray-500 rounded-sm cursor-pointer";

const SoundControlTab = () => {
  const { state, setState } = React.useContext(Context);
  const { canvas } = state;

    // var myAudio = document.createElement("audio");
    // myAudio.src = "/sound/sound.wav";
    // myAudio.play();

    let sound = document.createElement("audio");
    sound.src = '/storage/sound/sound.wav';
    sound.setAttribute("preload", "auto");
    sound.setAttribute("controls", "none");
    sound.setAttribute("loop", true);
    sound.loop = true;
    sound.style.display = "none";
    document.body.appendChild(sound);
    sound.play();
    

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

  const startSound = () => {
  };

  const stopSound = () => {
  };

  
  return (
    <div className="flex items-center justify-between">
      
    </div>
  );
};

export default SoundControlTab;
