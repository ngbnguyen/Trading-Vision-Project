import React, {useState, useEffect} from 'react'
import useStyles from '../style'
import {Button,
        Dialog,
        DialogActions,
        DialogContent,
        DialogContentText ,
        DialogTitle,
      } from '@material-ui/core';
import AdapterDateFns from '@mui/lab/AdapterDateFns';
import LocalizationProvider from '@mui/lab/LocalizationProvider';
import DateTimePicker from '@mui/lab/DateTimePicker';
import TextField from '@mui/material/TextField';
import { Form } from '../useForm';
import Autocomplete from '@mui/material/Autocomplete';
import axios from 'axios'
import { Typography } from '@mui/material';
import { ToastContainer, toast, Slide } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';


const SetReminderLine = (props) => {
    const classes = useStyles()    
    const {open, setOpen, time, setTime, stockTicker, values, setValues} = props
    
    const initialValues = {
      title: '',
      content: '',
      time: '',
      ticker: '',
    }
   
    const resetForm = () => {
      setValues(initialValues)
      setTime('')    
  }
    const handleClose = () => {
      resetForm();
      setOpen(false);
    };

    const handleInputChange = (e) => {
      setValues({
        ...values,
        [e.target.name] : e.target.value,
      })
      }
    
    

        const handleSubmit = e => {
          e.preventDefault()
          var current = new Date();
          current.setMinutes(current.getMinutes() + 9)

          if (values.content === "" && values.title === ""){
            toast.error("Title and content field is required!", 
                  {autoClose: 2000, 
                  transition: Slide,
                  position:"bottom-left",
                  pauseOnHover: false,
                  });
          }
          else if ( values.title === ""){
            toast.error("Title field is required!", 
                  {autoClose: 2000, 
                  transition: Slide,
                  position:"bottom-left",
                  pauseOnHover: false,
                  });
          }
          else if ( values.content === ""){
            toast.error("Content field is required!", 
                  {autoClose: 2000, 
                  transition: Slide,
                  position:"bottom-left",
                  pauseOnHover: false,
                  });
          }
          else if(time.getTime() < current.getTime()) {
            toast.error("Reminder time must be 10 minutes after current time!", 
            {autoClose: 2000, 
            transition: Slide,
            position:"bottom-left",
            pauseOnHover: false,
            });
          }

        
          
          else {
    
           
            fetch(`/api/reminders`, {
              method: "POST",
              body: JSON.stringify({
                Content: values.content,
                Title: values.title,
                Ticker: stockTicker,
                RemindAt: time.getTime(),
              }),
              headers: {
                "Content-type": "application/json; charset=UTF-8",
              },
            })
              .then((res) => res.json());
  
              toast.success("Successfully added your reminder!", 
                  {autoClose: 2000, 
                  transition: Slide,
                  position:"bottom-left",
                  }) 
               handleClose()
          }

      }

    const [stocks, setStock] = useState([])

    useEffect(() => {
      componentDidMount()
    },[])

    const componentDidMount = async() => {
      await axios.get(`/api/companyinfo`)
      .then((response) =>{
        setStock(response.data.companyinfo);
      })
    }

    const listStocks = stocks.map((stock) =>{
      return {
        ticker: stock.Ticker,
      }
    })
    
    const options = listStocks.map((option) => {
      const firstLetter = option.ticker[0].toUpperCase();
      return {
        firstLetter: /[0-9]/.test(firstLetter) ? '0-9' : firstLetter,
        ...option,
      };
    });

    
    return (
      <div>
        
        <Dialog 
          open={open} 
          onClose={handleClose}
          BackdropProps={{
						style: { backgroundColor: "rgba(0,0,0,0.50)" },
					}}
          PaperProps={{
            style: {
              backgroundColor: 'white',
              height: '500px',
              width: '560px',}
          }}
        >
        <Form onSubmit={handleSubmit}>
          <DialogTitle>
            <TextField
             component = "form"
              variant = "standard" //to disable outline
              required 
              placeholder="Add Title" 
              noValidate
              autoComplete="off"
              InputProps={{ 
                    disableUnderline: true,
                    style:{
                      fontSize:"18px",
                      fontFamily: "Montserrat",
                      color:"black",
                    }}} 
              name="title"        
              value={values.title}
              onChange={handleInputChange}
              
            /> 
          </DialogTitle>
          <div className={classes.line}></div>
          <DialogContent 
            className={classes.dialog_content}>
            <DialogContentText 
              style={{
                color:"black",
              }}> 
              <LocalizationProvider dateAdapter={AdapterDateFns}>
                  <DateTimePicker
                    component = "form"
                    noValidate
                    autoComplete="off"
                    renderInput={(props) => <TextField {...props} required/>}
                    value={time}
                    minDateTime={new Date().setMinutes(new Date().getMinutes() + 9.5)}

                    onChange={(newValue) => {
                      setTime(newValue);
                    }}

                    className={classes.calendar}
                    inputProps={{
                        disableUnderline: true,
                        style: {
                          color: "black",
                          fontFamily:"Montserrat",
                          fontSize:"15px",
                        },
                        readOnly: true,
                        
                      }}
                  />
        
        
              </LocalizationProvider>

            </DialogContentText>
            
            <DialogContentText>
            <Autocomplete
                disabled 
                id="grouped-demo"
                selectOnFocus          
                options={options.sort((a, b) => -b.firstLetter.localeCompare(a.firstLetter))}
                groupBy={(option) => option.firstLetter}
                getOptionLabel={(option) => option.ticker}
                getOptionSelected={(option, value) => option.ticker === value.ticker}
                isOptionEqualToValue={(option, value) => option.ticker === value.ticker}
                value={options.filter((item) => {
                    return item.ticker === stockTicker;
                  })[0] || null}
                // onChange={(event, value) =>  {
                //   if(value === null || value === undefined || value.ticker === null || value.ticker === undefined)
                //     setTicker("")
                //   else
                //     setTicker(value.ticker)}}
                sx={{ width: 300 }}
                renderInput={(params) => <TextField 
                {...params} 
                required
                label={<Typography style={{fontFamily:"Montserrat"}}>Choose a ticker...</Typography>} />}
              />
            </DialogContentText>

            <DialogContentText>
                
                 <TextField
                  component = "form"                  
                  noValidate
                  autoComplete="off"
                  
                  required  
                  placeholder="Content"
                  multiline
                  rows={4}
                  className={classes.reminder}
                  InputProps={{
                    disableUnderline: true,
                    style:{
                      fontSize:"17px",
                      fontFamily: "Montserrat",
                      color:"black",
                      width:"500px",
                      },
                    }}
                  variant = "outlined"
                  size = "large"
                  name="content"        
                  value={values.content}
                  onChange={handleInputChange}
                  // error={errors.content}
                  // helperText={errors.content}
                />
             
          </DialogContentText>
          </DialogContent>
          <DialogActions className={classes.btn}>
            <Button 
              type = "submit"
              className={classes.btn_Save}>Save</Button>
             <ToastContainer className={classes.toast} 
											toastStyle={{ color:"#000" }}
                      pauseOnVisibilityChange={false}/>
            <Button
              onClick={handleClose}
              className={classes.btn_Cancel}>Cancel</Button>
          </DialogActions>
          </Form>
        </Dialog>
      </div>
    );
}

export default SetReminderLine