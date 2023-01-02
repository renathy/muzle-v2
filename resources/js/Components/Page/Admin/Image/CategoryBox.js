import React from 'react';
import { Collapse, ListItem, ListItemText, Divider } from '@material-ui/core';
import { MdKeyboardArrowDown, MdKeyboardArrowUp } from 'react-icons/md';
import CloseIcon from '@material-ui/icons/Close';
import IconButton from '@material-ui/core/IconButton';
import axios from 'axios';
import { filter } from 'underscore';

const CategoryBox = ({ category, images }) => {

  const [open, setOpen] = React.useState(false);
  const [boxImages, setBoxImages] = React.useState([]);

  React.useEffect(() => {
    setBoxImages(images.filter(img => img.category_id === category.id));
  }, [images]);
  const imageDelete = (id) => {
    console.log("+++++++++++++++++++++>>>>>>>>>>");
    axios.post(`/management/images/${id}`, {
      _method: "DELETE"
    }).then((res) => {
      console.log(res);
      if (res.status == 200) {
        let filterResult = boxImages.filter(ele => ele.id != id);
        setBoxImages(filterResult);
        console.log(filterResult.length,filterResult)
      }
    })
  }
  return (
    <>
      <ListItem
        button
        onClick={() => setOpen(!open)}
      >
        <ListItemText>
          {category.name} ({boxImages.length})
        </ListItemText>
        {open ? <MdKeyboardArrowUp /> : <MdKeyboardArrowDown />}
      </ListItem>
      <Collapse in={open}>
        <Divider />
        <div className="p-4">
          <div className="flex-grow flex flex-wrap p-4">
            {boxImages.map(image =>
              <div className="bg-gray-100 category-image rounded-sm w-16 h-16 m-2" key={image.id}>
                <img
                  className="w-full h-full object-contain"
                  src={`/storage/${image.src}`}
                  width="100%"
                />
                <div className="delete-button" >
                  <IconButton aria-label="delete" color="primary" onClick={() => imageDelete(image.id)}>
                    <CloseIcon fontSize="small" />
                  </IconButton>
                </div>
              </div>
            )}
          </div>
        </div>
      </Collapse>
      <Divider />
    </>
  )
};

export default CategoryBox;