import React from "react";
import { AiOutlineDownload } from "react-icons/ai";
import { FaTrash } from "react-icons/fa";
import { HiMinusCircle } from "react-icons/hi";

import { Context } from "../ContextProvider";

const buttonClass =
  "rounded w-12 h-12 m-1 flex items-center justify-center text-xl focus:outline-none border border-gray-700 hover:border-gray-300 active:border-gray-500 bg-gray-600";

  const ControlTab = () => {
  const { state } = React.useContext(Context);
  const { canvas, width, height } = state;

  const handleDelete = () => {
    const objects = canvas.getActiveObjects();
    canvas.remove(...objects);
    canvas.renderAll();
  };

  const handleDeleteAll = () => {
    const objects = canvas.getObjects();
    canvas.remove(...objects);
    canvas.renderAll();
  };

  const handleDownload = () => {
    const url = canvas.toDataURL({
      format: "png",
      width,
      height,
    });
    const a = document.createElement("a");
    a.href = url;
    a.download = "download";
    const clickHandler = () => {
      setTimeout(() => {
        URL.revokeObjectURL(url);
        a.removeEventListener("click", clickHandler);
        a.remove();
      }, 150);
    };
    a.addEventListener("click", clickHandler, false);
    a.click();
  };

  return (
    <div className="flex flex-wrap">
      <button type="button" onClick={handleDownload} className={buttonClass} title="Lejuplādēt">
        <AiOutlineDownload />
      </button>
      <button type="button" onClick={handleDelete} className={buttonClass} title="Dzēst vienu objektu">
        <HiMinusCircle />
      </button>
      <button type="button" onClick={handleDeleteAll} className={buttonClass} title="Dzēst visu">
        <FaTrash />
      </button>
    </div>
  );
};

export default ControlTab;
