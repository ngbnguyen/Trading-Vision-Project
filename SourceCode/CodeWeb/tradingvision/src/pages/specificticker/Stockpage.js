import React, { useState, useEffect } from "react";
import useStyles from "./style";
import {
	Container,
	Typography,
	Button,
	Checkbox,
	IconButton,
	CircularProgress,
	Divider,
	Grid,
} from "@material-ui/core";
import TabInfo from "../../components/specificticker/TabInfo";
import Chart from "../../components/specificticker/ChartTab";
import ComparePopup from "../../components/compare/ComparePopup";
import FavoriteBorderIcon from "@mui/icons-material/FavoriteBorder";
import Favorite from "@mui/icons-material/Favorite";
import { Dialog, Box } from "@mui/material";
import CloseIcon from "@material-ui/icons/Close";
import axios from "axios";
import { useParams } from "react-router-dom";
import { ToastContainer, toast, Slide } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import PageNotFound from "../error/PageNotFound";
import Login from "../login/Login"


	function Stockpage({user}) {
		const classes = useStyles();
		
		const [open, setOpen] = useState(false);
		const handleOpen = () => setOpen(true);
		const handleClosed = () => setOpen(false);
		const label = { inputProps: { "aria-label": "Checkbox favorite" } };
		
		// Set selected row and tab
		const [selectedID, setSelectedID] = React.useState(null);
		const handleSelection = (newSelection) => {
			if (selectedID !== newSelection)
			{
				setSelectedID(newSelection);
			}
			else
			{
				setSelectedID(null);
			}
		}
		const [selectedTab, setSelectedTab] = React.useState('1');
		const { ticker } = useParams();
		const [company, setCompany] = useState([]);
		const [favorites, setFavorite] = useState([])
		//check whether fav or not
		const [isFavorite, setIsFavorite] = useState(null);
		
		const [chart,setChart] = useState("Line")
		const [loading, setLoading] = useState(true)
		// get company info
		useEffect(() => {
			getCompanyInfo();
			getFavorite();
			setTimeout(() => {
				setLoading(false)
			  }, 3200);
			window.scrollTo(0, 0)
			
		}, []);

		const getCompanyInfo = async () => {
			axios.get(`/api/companyinfo/${ticker}`)
			.then((response) => {
				setCompany(response.data.companyinfo);
			})

		};


		// Get company Id
		const CompanyId = company.map((info) =>{
			return info._id;
		})
		
		const checkid = obj => obj.CompanyId === CompanyId[0] ;

		const getFavorite = async() =>{
		axios.get(`/api/favorites`)
		  .then((response) =>{
			setFavorite(response.data.favorites)
		  })
		  
		}

		useEffect( () =>{
			
				if (favorites.some(checkid) === true) {
					setIsFavorite(true)
				}
				if (favorites.some(checkid) === false){
					setIsFavorite(false)
				}

		},[favorites.some(checkid)])
		
		const addFavorite = async() =>{
			axios.post(`/api/favorites`, {
				UserId: user.userId,
				CompanyId: CompanyId[0],
			}, 
			{
				headers: {'Content-Type': 'application/json'}
			})	
			// 

				toast.success("Successfully added to your favorites!", 
								{autoClose: 2000, 
								transition: Slide,
								position:"bottom-left",
								pauseOnHover:false,
								pauseOnVisibilityChange	: false,
								});

		}

		const deleteFavorite = async(id) => {
			axios.delete(`/api/favorites/`+ id)
		
			toast.success("Successfully deleted from your favorites!", 
							{autoClose: 2000, 
								transition: Slide,
								position:"bottom-left",
								pauseOnHover:false,
								pauseOnVisibilityChange	: false,
								});

		}
		

		return (
			<>
				{loading === true ? (
					<Container>
						<CircularProgress style={{ backgroundColor: "primary" }} className={classes.loading_spinner}/>
					</Container>
				):(
					<>
			{
				company.length !== 0 ? (
					<>
					{user ? (
					<Container className={classes.container}>

					<div className={classes.title}>
						{company.map((info) => (
							<>
								
								<Grid container>
									<Grid item xs={1}>
										<Typography 
										variant="h6" 
										className={classes.field} 
										>
											{info.StockExchange.toUpperCase()}
										</Typography>
									</Grid>
									<Divider 
										orientation="vertical" 
										// flexItem 
										light={true}
										className={classes.divider}									
										
										/>
									<Grid item>
									<Typography variant="h6" className={classes.field}>
												{info.Industry}
											</Typography>
									</Grid>
								</Grid>
								<Typography variant="h5" className={classes.name}>
									{info.CompanyName} ({info.Ticker})
									<Checkbox
										{...label}
										icon={<FavoriteBorderIcon
											sx={{ fontSize: 45, color: "#fff", marginTop:"15%"}} />}
										className={classes.fav_border}
										checked={isFavorite}
										checkedIcon={<Favorite sx={{ fontSize: 45, marginTop:"15%" }} />} 
										onChange={e =>{
											if (isFavorite === false) {
												addFavorite() 
											}
											else {
												deleteFavorite(CompanyId[0]) 
											}
											setIsFavorite(e.target.checked)
											
										}}
										/>
										<ToastContainer className={classes.toast} 
											toastStyle={{ color:"#000" }}
											pauseOnVisibilityChange={false}
											pauseOnHover={false}
											/>
										
								</Typography>
								
									

								<div className={classes.line} />

								<div className={classes.info}>
									<TabInfo info={info} />
								</div>
							</>
						))}
					</div>

				{
					chart === 'Line' ? (
						<Button
							variant="contained"
							className={classes.button}
							onClick={handleOpen}
						>
							Compare
						</Button>
					) :(
						<>
							
						</>
					)
				}	
				
				<Dialog
					open={open}
					onClose={handleClosed}
					aria-labelledby="keep-mounted-modal-title"
					aria-describedby="keep-mounted-modal-description"
					BackdropProps={{
						style: { backgroundColor: "rgba(0,0,0,0.50)" },
					}}
					PaperProps={{
						style: {
							backgroundColor: "rgba(0,0,0,0.90)",
							color: "white",
							height: "600px",
							width: "1200px",
						},
					}}
				>
					<Box>
						<IconButton
							style={{ color: "white", marginLeft: "85%" }}
							onClick={handleClosed}
						>
							<CloseIcon />
						</IconButton>
						<ComparePopup
							selectedID={selectedID}
							setSelectedID={setSelectedID}
							selectedTab={selectedTab}
							setSelectedTab={setSelectedTab}
							ticker = {ticker}
							handleClosed = {handleClosed}
							handleSelection = {handleSelection} />
					</Box>
				</Dialog>

				<div className={classes.graph}>
					<Chart compareTicker={selectedID} chart={chart} setChart={setChart}/>
				</div>
			</Container>
				):(
					<>
						{/* <Container>
						<CircularProgress style={{ backgroundColor: "primary" }} className={classes.loading}/>
						</Container> */}
						<Login/>
					</>
				)}
					</>
				) :(
					<PageNotFound/>					
				)
			}
			</>
				)}
			</>
			
			
		);
}

export default Stockpage;
