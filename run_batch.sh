
# Remove old results folder
rm -rf results


# Make directories
mkdir -p results/variants2
mkdir -p results/variants3
mkdir -p results/dryad


# Dryad all variants
sh run_dryad.sh "-a horndini "                                                                                                                                                          
sh run_dryad.sh "-a horndini -f "                                                                                                                                                       
sh run_dryad.sh "-a horndini -t "                                                                                                                                                       
sh run_dryad.sh "-a horndini -r "                                                                                                                                                       
sh run_dryad.sh "-a horndini -f  -t "                                                                                                                                                   
sh run_dryad.sh "-a horndini -f  -r "                                                                                                                                                   
sh run_dryad.sh "-a horndini -t  -r "                                                                                                                                                   
sh run_dryad.sh "-a horndini -f  -t  -r "    
                                                                                                                                           
sh run_dryad.sh "-a sorcar "                                                                                                                                                            
sh run_dryad.sh "-a sorcar -f "                                                                                                                                                         
sh run_dryad.sh "-a sorcar -t "                                                                                                                                                         
sh run_dryad.sh "-a sorcar -r "                                                                                                                                                         
sh run_dryad.sh "-a sorcar -f  -t "                                                                                                                                                     
sh run_dryad.sh "-a sorcar -f  -r "                                                                                                                                                     
sh run_dryad.sh "-a sorcar -t  -r "                                                                                                                                                     
sh run_dryad.sh "-a sorcar -f  -t  -r "     
                                                                                                                                            
sh run_dryad.sh "-a sorcar-first "                                                                                                                                                      
sh run_dryad.sh "-a sorcar-first -f "                                                                                                                                                   
sh run_dryad.sh "-a sorcar-first -t "                                                                                                                                                   
sh run_dryad.sh "-a sorcar-first -r "                                                                                                                                                   
sh run_dryad.sh "-a sorcar-first -f  -t "                                                                                                                                               
sh run_dryad.sh "-a sorcar-first -f  -r "                                                                                                                                               
sh run_dryad.sh "-a sorcar-first -t  -r "                                                                                                                                               
sh run_dryad.sh "-a sorcar-first -f  -t  -r "    
                                                                                                                                       
sh run_dryad.sh "-a sorcar-greedy "                                                                                                                                                     
sh run_dryad.sh "-a sorcar-greedy -f "                                                                                                                                                  
sh run_dryad.sh "-a sorcar-greedy -t "                                                                                                                                                  
sh run_dryad.sh "-a sorcar-greedy -r "                                                                                                                                                  
sh run_dryad.sh "-a sorcar-greedy -f  -t "                                                                                                                                              
sh run_dryad.sh "-a sorcar-greedy -f  -r "                                                                                                                                              
sh run_dryad.sh "-a sorcar-greedy -t  -r "                                                                                                                                              
sh run_dryad.sh "-a sorcar-greedy -f  -t  -r "         
                                                                                                                                 
sh run_dryad.sh "-a sorcar-minimal "                                                                                                                                                    
sh run_dryad.sh "-a sorcar-minimal -f "                                                                                                                                                 
sh run_dryad.sh "-a sorcar-minimal -t "                                                                                                                                                 
sh run_dryad.sh "-a sorcar-minimal -r "                                                                                                                                                 
sh run_dryad.sh "-a sorcar-minimal -f  -t "                                                                                                                                             
sh run_dryad.sh "-a sorcar-minimal -f  -r "                                                                                                                                             
sh run_dryad.sh "-a sorcar-minimal -t  -r "                                                                                                                                             
sh run_dryad.sh "-a sorcar-minimal -f  -t  -r "      



# Gpuverify and horndini
sh run_gpuverify.sh
sh run.sh "-a horndini "


# top n variants of sorcar
sh run.sh "-a sorcar "     
sh run.sh "-a sorcar -r "                                                                                                                                                       
sh run.sh "-a sorcar-minimal " 
sh run.sh "-a sorcar -f  -t  -r "     
sh run.sh "-a sorcarfirst "                                                                                                               



# mkdir -p results/variants2

# sh run.sh "-a horndini "                                                                                                                                                          
# sh run.sh "-a horndini -f " &                                                                                                                                                       
# sh run.sh "-a horndini -t " &                                                                                                                                                       
# sh run.sh "-a horndini -r " &                                                                                                                                                       
# sh run.sh "-a horndini -f  -t " &                                                                                                                                                   
# sh run.sh "-a horndini -f  -r " &                                                                                                                                                   
# sh run.sh "-a horndini -t  -r " &                                                                                                                                                   
# sh run.sh "-a horndini -f  -t  -r " &    
                                                                                                                                           
# sh run.sh "-a sorcar " &                                                                                                                                                            
# sh run.sh "-a sorcar -f " &                                                                                                                                                         
# sh run.sh "-a sorcar -t " &                                                                                                                                                         
# sh run.sh "-a sorcar -r " &                                                                                                                                                         
# sh run.sh "-a sorcar -f  -t " &                                                                                                                                                     
# sh run.sh "-a sorcar -f  -r " &                                                                                                                                                     
# sh run.sh "-a sorcar -t  -r " &                                                                                                                                                     
# sh run.sh "-a sorcar -f  -t  -r " &     
                                                                                                                                            
# sh run.sh "-a sorcar-first " &                                                                                                                                                      
# sh run.sh "-a sorcar-first -f " &                                                                                                                                                   
# sh run.sh "-a sorcar-first -t " &                                                                                                                                                   
# sh run.sh "-a sorcar-first -r " &                                                                                                                                                   
# sh run.sh "-a sorcar-first -f  -t " &                                                                                                                                               
# sh run.sh "-a sorcar-first -f  -r " &                                                                                                                                               
# sh run.sh "-a sorcar-first -t  -r " &                                                                                                                                               
# sh run.sh "-a sorcar-first -f  -t  -r " &    
                                                                                                                                       
# sh run.sh "-a sorcar-greedy " &                                                                                                                                                     
# sh run.sh "-a sorcar-greedy -f " &                                                                                                                                                  
# sh run.sh "-a sorcar-greedy -t " &                                                                                                                                                  
# sh run.sh "-a sorcar-greedy -r " &                                                                                                                                                  
# sh run.sh "-a sorcar-greedy -f  -t " &                                                                                                                                              
# sh run.sh "-a sorcar-greedy -f  -r " &                                                                                                                                              
# sh run.sh "-a sorcar-greedy -t  -r " &                                                                                                                                              
# sh run.sh "-a sorcar-greedy -f  -t  -r " &         
                                                                                                                                 
# sh run.sh "-a sorcar-minimal " &                                                                                                                                                    
# sh run.sh "-a sorcar-minimal -f " &                                                                                                                                                 
# sh run.sh "-a sorcar-minimal -t " &                                                                                                                                                 
# sh run.sh "-a sorcar-minimal -r " &                                                                                                                                                 
# sh run.sh "-a sorcar-minimal -f  -t " &                                                                                                                                             
# sh run.sh "-a sorcar-minimal -f  -r " &                                                                                                                                             
# sh run.sh "-a sorcar-minimal -t  -r " &                                                                                                                                             
# sh run.sh "-a sorcar-minimal -f  -t  -r " &      
