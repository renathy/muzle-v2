import React,{useEffect} from 'react';
import UserLayout from '@/Components/UserLayout';
import FormSelectNative from "@/Components/Form/FormSelectNative";
import Board from "@/Components/Page/User/Board";
import { usePage } from '@inertiajs/inertia-react';
import { Paper } from '@material-ui/core';
import axios from "axios";

const Index = () => {

  const { games } = usePage().props;
  let { active_id } = usePage().props
  if(active_id == -1){
    active_id = games[0].id;
  }
  const [data, setData] = React.useState(null);


  const getGameData = (id) =>{
    axios.post(`/games/${id}`).then(function (response) {
      const { game, backgrounds, categories } = response.data;
      setData({ game, backgrounds, categories });
      let url = "/games/"+id;
      
      history.pushState(null, null, url);
    });
  }
  useEffect(()=>{
    if(games.length>0){
      if(active_id == -1){
        active_id = games[0].id;
      }
      getGameData(active_id)
    }
  },[])
  const handleGameSelect = event => {
    getGameData(event.target.value);
  };

  return (
    <UserLayout>
      <div className="container max-w-screen-xl mx-auto">
        <div className="py-2 space-y-2">
          <Paper>
            <div className="p-2 space-y-2">
              {games.length > 0 ?
                <div className="space-y-1">                  
                  <FormSelectNative
                    options={games}
                    valueKey="id"
                    labelKey="name"
                    onChange={handleGameSelect}
                    defaultValue={active_id}
                  />
                </div>
                :
                <div>No Games Exist</div>
              }
              {data &&
                <div>
                  <Board data={data} />
                </div>
              }
            </div>
          </Paper>
        </div>
      </div>
    </UserLayout>
  );
};


export default Index;