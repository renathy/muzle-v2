import React from "react";
import { BsArrowReturnLeft } from "react-icons/bs";
import { Context } from "../../ContextProvider";

const buttonClass = "w-1/3 h-16 p-2 flex items-center justify-center border border-transparent hover:border-gray-500 active:border-gray-300 cursor-pointer rounded-sm";

const ImageList = () => {
  const { state, setState } = React.useContext(Context);
  const { canvas } = state;
  const { data } = state;
  const [categories, setCategories] = React.useState([]);
  const [category, setCategory] = React.useState(null);

  React.useEffect(() => {
    if (data) {
      setCategories(data.categories);
    }
  }, [data]);

  // const dragStart = (event, image) => {
  //   const imageSize = event.target.childNodes[0].getBoundingClientRect();
  //   setState({
  //     ...state,
  //     dragItem: {
  //       type: "image",
  //       object: image,
  //       offsetX: event.clientX - imageSize.left,
  //       offsetY: event.clientY - imageSize.top,
  //       width: imageSize.width,
  //       height: imageSize.height,
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

  //todo: shape and image tabs is copy paste put into one place instead
  const handleElementAdd = (event, image) => {
    canvas.isDrawingMode = false;

    const imageSize = event.target.childNodes[0].getBoundingClientRect();

    const imageUrl = `/storage/${image.src}`;
      new fabric.Image.fromURL(imageUrl, img => {
        var scale = 1;        
        scale = 100/img.width;        
        var oImg = img.set({
           left:  state.width / 2 - img.width * scale, 
           top:  state.height / 2 - img.height * scale, 
           angle: 0,
           borderColor: '#cc0000',
           cornerColor: '#cc0000',
           cornerStyle: 'circle'
          })
         .scale(scale);       
       
        canvas.add(oImg).renderAll.bind(canvas);
        canvas.setActiveObject(oImg);
      });
  };

  const showCategories = () => {
    setCategory(null);
  };

  return (
    <div>
      <div className="flex items-center justify-between">
      {category && (
        <button
          onClick={showCategories}
          className="p-2 rounded-full bg-gray-900 hover:bg-gray-700 active:opacity-80 focus:outline-none"
        >
          <BsArrowReturnLeft />
        </button>
      )}
      </div>

      {category === null && (
        <div className="flex flex-wrap">
          {categories.map(cat => (
            <div             
              key={cat.name}
              onClick={() => setCategory(cat)}
              className={buttonClass}
            >
              <img src={`/storage/${cat.src}`} alt="" className="max-w-full max-h-full" />
            </div>
          ))}
        </div>
      )}

      {category && (
        <div className="flex flex-wrap">
          {category.images.map((img) => (
            <div              
              key={img.name}
              onClick={(e) => handleElementAdd(e, img)}
              className={buttonClass}
            >
              <img
                src={`/storage/${img.src}`}
                alt=""
                className="max-w-full max-h-full pointer-events-none"
              />
            </div>
          ))}
        </div>
      )}
    </div>
  );
};

export default ImageList;
