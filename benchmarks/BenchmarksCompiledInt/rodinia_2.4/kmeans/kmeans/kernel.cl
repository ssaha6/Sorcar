//pass
//--local_size=[256] --num_groups=[1930]

#ifndef FLT_MAX
#define FLT_MAX 3.40282347e+38
#endif

__kernel void
kmeans_kernel_c(__global float  *feature,   
			  __global float  *clusters,
			  __global int    *membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures,
				int		offset,
				int		size
			  ) 
{
	unsigned int point_id = get_global_id(0);
    int index = 0;
    //const unsigned int point_id = get_global_id(0);
		if (point_id < npoints)
		{
			float min_dist=FLT_MAX;
			for (int i=0; i < nclusters; i++) {
				
				float dist = 0;
				float ans  = 0;
				for (int l=0; l<nfeatures; l++){
						ans += (feature[l * npoints + point_id]-clusters[i*nfeatures+l])* 
							   (feature[l * npoints + point_id]-clusters[i*nfeatures+l]);
				}

				dist = ans;
				if (dist < min_dist) {
					min_dist = dist;
					index    = i;
					
				}
			}
		  //printf("%d\n", index);
		  membership[point_id] = index;
		}	
	
	return;
}
