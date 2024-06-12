// Get image dimensions
width = getWidth();
height = getHeight();
id = getImageID();
n_frames=42 // numer of frames for animation, more frames = smoother
pw = 2 // power; >1 for elastic/bounce effect; 1 for linear effect

// Calculate ROI width per image in the animation 
roiWidth = width / n_frames;




// Create a new stack to hold the ROIs
newImage("Curtain", "RGB white", width, height, n_frames);

	selectImage(id);
	if (nSlices!=2) {exit("The input image must consist of 2 Slices")}
	Stack.setSlice(1); 
	makeRectangle(0, 0, width, height);
	run("Copy");
	
//Fill the entire stack with slice #1	
for (i=1; i<n_frames+1;i++) {
	selectImage("Curtain");
	Stack.setSlice(i);
	makeRectangle(0, 0, width, height);
    run("Paste");
}

// Loop to copy ROI of increasing size from slice #2

	selectImage(id);
	Stack.setSlice(2); 

for (i=1; i<n_frames+1;i++) {
	
	//This creates an elastic/bounce effect for pw>1
	j=i/n_frames;
	x=pow(j,pw) / (pow(j,pw)+pow((1-j),pw)) * n_frames;
	
    // Set the ROI
    makeRectangle(0, 0, roiWidth*(x), height);

    // Copy the current ROI
    run("Copy");

    // Paste the ROI into the new stack
	selectImage("Curtain");
	Stack.setSlice(i+1); 
	makeRectangle(0, 0, roiWidth*(x), height);
    run("Paste");
    
    // Go back to the original image
	selectImage(id);
}

// Show the new stack
selectWindow("Curtain");
run("Animation Options...", "speed=8 first=1 last=n_frames loop");

