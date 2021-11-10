import React from 'react';
import AdminLayout from '@/Components/AdminLayout';
import CreateDialog from '@/Components/Page/Admin/Background/CreateDialog';
import { usePage } from '@inertiajs/inertia-react';
import { Table, TableBody, TableCell, TableContainer, TableHead, TableRow, Paper, IconButton, Button } from '@material-ui/core';
import DeleteIcon from '@material-ui/icons/Delete';
import axios from 'axios';

const Index = () => {

  const { backgrounds } = usePage().props;
  const [data, setData] = React.useState([]);
  const [createForm, setCreateForm] = React.useState(false);

  React.useEffect(() => {
    setData(backgrounds);
  }, []);
  const deleteBackground=( id )=>{
    if(window.confirm("Do you want to delete the background image")){
      axios.post(`/management/backgrounds/${id}`, {
        _method: "DELETE"
      }).then((res) => {
        console.log(res);
        if (res.status == 200) {
          let filterResult = data.filter(background => background.id != id);
          setData(filterResult);
          
        }
      })
    }
  }
  return (
    <AdminLayout title="Background">
      <div className="space-y-4">

        <Button color="default" variant="contained" onClick={() => setCreateForm(true)}>
          New Background
        </Button>

        <TableContainer component={Paper}>
          <Table size="small">
            <TableHead>
              <TableRow>
                <TableCell>Image</TableCell>
                <TableCell>Name</TableCell>
                <TableCell>Action</TableCell>
              </TableRow>
            </TableHead>
            <TableBody>
              {data.map(background =>
                <TableRow key={background.id}>
                  <TableCell>
                    <img className="w-12" src={`/storage/${background.src}`} alt="" />
                  </TableCell>
                  <TableCell>
                    {background.name}
                  </TableCell>
                  <TableCell>
                    <IconButton aria-label="delete" color="secondary" onClick={() => deleteBackground(background.id)}>
                      <DeleteIcon />
                    </IconButton>
                  </TableCell>
                </TableRow>
              )}
            </TableBody>
          </Table>
        </TableContainer>

        <CreateDialog
          data={data}
          setData={setData}
          open={createForm}
          onClose={() => setCreateForm(false)}
        />

      </div>
    </AdminLayout>
  );
};


export default Index;
