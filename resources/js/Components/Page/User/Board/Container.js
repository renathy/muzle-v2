import React from "react";
import { Scrollbars } from "react-custom-scrollbars";
import { Context } from "./ContextProvider";
import CanvasBoard from "./CanvasBoard";
import ControlBoard from "./ControlBoard";

const styles = {
  board: { width: 972, height: 700 },
  control: { width: 250, height: 700 },
};

const renderThumb = ({ style, ...props }) => {
  const thumbStyle = {
    backgroundColor: "rgba(255,255,255,1)",
  };
  return <div style={{ ...style, ...thumbStyle }} {...props} />;
};

const Board = ({ data }) => {

  const { state, setState } = React.useContext(Context);

  React.useEffect(() => {
    setState({
      ...state,
      background: data.backgrounds[0],
      gameId: data.game.id,
      data
    });
  }, [data]);

  let sound = document.createElement("audio");
  sound.src = '/storage/sound/sound.wav';
  sound.setAttribute("preload", "auto");
  sound.setAttribute("controls", "none");
  sound.setAttribute("loop", true);
  sound.loop = true;
  sound.style.display = "none";
  document.body.appendChild(sound);

  document.addEventListener('click', function (event) {
    sound.play();
  }, false);

  // <Scrollbars
  //       className="flex-grow"
  //       renderThumbHorizontal={renderThumb}
  //       renderThumbVertical={renderThumb}
  //     ></Scrollbars>
  return (
    <div className="flex rounded-md" style={{ height: 730 }}>      
        <div style={styles.board}>
          <CanvasBoard />
        </div>
      
      <Scrollbars
        className="flex-shrink-0 bg-yellow-100 text-gray-100"
        style={styles.control}
        renderThumbHorizontal={renderThumb}
        renderThumbVertical={renderThumb}
      >
        <ControlBoard />
      </Scrollbars>
    </div>
  );
};

export default Board;
