import React from "react";
import { AiOutlineDownload } from "react-icons/ai";
import { FaTrash } from "react-icons/fa";
import { HiMinusCircle } from "react-icons/hi";
import SaveIcon from '@material-ui/icons/Save';

import { Context } from "../ContextProvider";
import { Dialog, Button, DialogContent, Input, DialogTitle, DialogActions } from '@material-ui/core';
import FormTextInput from "@/Components/Form/FormTextInput";

import _ from 'underscore';
const buttonClass =
  "rounded w-9 h-9 m-1 flex items-center justify-center text-xl focus:outline-none border border-gray-700 hover:border-gray-300 active:border-gray-500 bg-gray-600";

  const ControlTab = () => {
  const { state } = React.useContext(Context);
  const { canvas, width, height } = state;
  const [modalOpen, setModalOpen] = React.useState(false);
  const [fileName,setFileName] = React.useState("download");
  React.useEffect(() => {
    document.body.addEventListener('keydown',function(e){
      if(e.keyCode == 46){
        handleDeleteAll();
      }
    },false)
  },[]);
  const handleDelete = () => {
    const objects = canvas.getActiveObjects();
    canvas.remove(...objects);
    canvas.renderAll();
  };

  const handleDeleteAll = () => {
    if(window.confirm("Do you want to delete all elements")){
      const objects = canvas.getObjects();
      canvas.remove(...objects);
      canvas.renderAll();
    }
  };

  const handleDownload = () => {
    const url = canvas.toDataURL({
      format: "png",
      width,
      height,
    });
    const a = document.createElement("a");
    a.href = url;
    a.download = fileName;
    const clickHandler = () => {
      setTimeout(() => {
        URL.revokeObjectURL(url);
        a.removeEventListener("click", clickHandler);
        a.remove();
      }, 150);
    };
    a.addEventListener("click", clickHandler, false);
    a.click();
    setModalOpen(false)
  };
  const handleSaveName=()=>{
    setModalOpen(true);
  }
  const changeFileName=(e)=>{
    setFileName(e.target.value);
  }
  const onClose=()=>{
    setModalOpen(false);
  }

  return (
    <div className="flex flex-wrap">
      <button type="button" onClick={handleDownload} className={buttonClass} title="Lejuplādēt">
        <AiOutlineDownload />
      </button>
      <button type="button" onClick={handleSaveName} className={buttonClass} title="Save As">
        <SaveIcon />
      </button>
      <button type="button" onClick={handleDelete} className={buttonClass} title="Dzēst vienu objektu">
        <HiMinusCircle />
      </button>
      <button type="button" onClick={handleDeleteAll} className={buttonClass} title="Dzēst visu">
        <FaTrash />
      </button>
      <Dialog open={modalOpen} onClose={onClose}>
        <DialogTitle>
          Please enter file name
        </DialogTitle>
        <DialogContent>
          <Input name="name" value={fileName} onChange={changeFileName} />
        </DialogContent>
        <DialogActions>
          <Button onClick={handleDownload} color="primary">
            Save
          </Button>
        </DialogActions>
      </Dialog>
    </div>
  );
};

export default ControlTab;
