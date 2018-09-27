# perl_landmark_merging
Various Landmark Coordinate Merging scripts (GetPoints)

These are Perl scripts for merging landmark coordinate files acquired from MeshLab, Landmark Editor, or Avizo for geometric morphometric or euclidean distance analysis. 

Input: Folder of multiple XYZ coordinate files.

Output: Single text file with each specimen on a single row.

Assumes: Each input file has the same number of coordinates in the same order. These scripts only move the data around based on position in the input, not by assigned landmark name or number.

1) Meshlab Landmark Merging Script (.pp files) - getpoints_pp.pl. Reads in a set of .pp files that are exported from MeshLab and writes them to a single text file. Please make sure all your .pp files are in the same folder as this script, or edit the path of the folder containing the files in line 33 of this script. The script starts looking for your first landmark in line 9 of the file. If your landmark is in a different line, please change that parameter in line 43 of the script.
2) Landmark Editor Landmarks Merging Script (for .pts files) - getpoint_pts.pl. 
3) Avizo Landmarks Merging Script (for .landmarkAscii files) - getpoints_landmarkAscii.pl. Reads in a set of .landmarkAscii files that are exported from Avizo (probably Amira as well) and writes them to a single text file. Please make sure all your .pp files are in the same folder as this script, or edit the path of the folder containing the files in line 33 of this script. The script starts looking for your first landmark in line 9 of the file. If your landmark is in a different line, please change that parameter in line 43 of the script.
