# perl_landmark_merging
Various Landmark Coordinate Merging scripts (GetPoints)

These are Perl scripts for merging landmark coordinate files acquired from MeshLab, Landmark Editor, or Avizo for geometric morphometric or euclidean distance analysis.

1) Meshlab Landmark Merging Script (.pp files) - getpoints_pp.pl. Reads in a set of .pp files that are exported from MeshLab. Please make sure all your .pp files are in the same folder as this script, or edit the path of the folder containing the files in line 33 of this script. The script starts looking for your first landmark in line 9 of the file. If your landmark is in a different line, please change that parameter in line 42 of the script.
2) Landmark Editor Landmarks Merging Script (for .pts files) - getpoint_pts.pl
3) Avizo Landmarks Merging Script (for .landmarkAscii files) - getpoints_landmarkAscii.pl
