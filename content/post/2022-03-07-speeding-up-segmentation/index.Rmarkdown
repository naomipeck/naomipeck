---
title: Speeding Up Segmentation
author: Naomi Peck
date: '2022-03-07'
slug: speeding-up-segmentation
categories:
  - ELAN
  - Methodology
tags:
  - ELAN
  - Praat
  - Methodology
  - Fieldwork
  - Walkthrough
subtitle: 'Silence Recognisers for Field Linguists'
summary: 'A short introduction to some ways to automate first-pass segmentation for field linguists.'
authors: 
  - admin
lastmod: '2022-03-07T20:32:38+01:00'
featured: no
#image:
#  caption: ''
#  focal_point: ''
#  preview_only: no
#projects: []
---
Any linguist who works with audiovisual data is familiar with the idea of the 'transcription bottleneck'. This refers to the time sink it requires to put this data into a written format for further analysis, which is commonly estimated to be a 10:1 ratio (a native speaker requiring 10 minutes to fully transcribe and analyse 1 minute of data), but this can balloon out even further, e.g. to 150:1! To reduce this bottleneck, you have to be creative with data processing and make liberal use of computer-assisted methods. In this post, I'll describe two such methods -- batch-creating TextGrids with the help of a Praat script, and silence recognition in ELAN.

One method for reducing this bottleneck that I have made use of for the past 5 years is outlined by Eri Kashima [here](https://yammeringon.wordpress.com/2017/05/01/elanpraat-machine-segmenting/). In her blog post, Eri describes how to use the silence recogniser in Praat to do a first-pass segmentation of audio files. This outputs a TextGrid, which can then be imported into ELAN and adjusted accordingly. 

This method is incredibly useful and has saved me a lot of time. However, I recommend a number of tweaks. After reading up on pause duration (see a presentation I did with Laura Becker on this topic [here](https://naomipeck.com/publication/ldlt6-pausing/)), I adjusted the minimum silent interval down to 0.1 secs. Pauses of a length between 100ms and 250ms still play a role in the organisation of speech, although you will have to be careful of annotations which correspond to phonetic closure, rather than 'meaningful' pauses, and adjust your segmentation in the next pass accordingly. If you are after clause-like units rather than intonation phrase-like units, you may not want to do this, but it's generally recommended to do your segmentation in intonation units (Himmelmann 2006).

Another tweak that I made is the creation of a {{< staticref "media/textgrid script.txt" "newtab" >}}Praat script{{< /staticref >}} to automate this process even further. This script was adapted from [a script](http://phonetics.linguistics.ucla.edu/facilities/acoustic/text_grid_maker.txt) by Katherine Crosswhite, which creates TextGrids automatically for annotation. My script removes the annotation step and changes the function into To TextGrid (silences), as per Eri's method. The script prompts a user to input a directory and an optional specifier for files to be processed and batch generates TextGrids which have gone through the silence recogniser. This script saved me a lot of time in the field, as I could quickly process a text I'd just recorded for initial segmentation on the spot and get to transcribing within 5 minutes! It's also helped me quickly generate segmentation for a number of pre-existing corpora for analysis purposes.

Despite the usefulness of this script, I found myself intrigued by the built-in Silence Recognizer in ELAN. Personally, I had never really played around with the Recognizer menu before six months ago, when I started to think about pauses more deeply. However, when I tested out the recogniser, I found myself appreciating the relative simplicity of the tool. The silence recogniser can effectively carry out the same process as that described by Eri without needing to import any files, as the settings ELAN asks for -- silence level, minimal silence duration, minimal non-silence duration -- are the exact same that you need to alter in Praat. It is also possible to train the silence recogniser what the silence level should be by selecting examples throughout the text, which is an advantage this method has over Praat (although I've never done this).

The two different workflows that I have described here both have their own place in my workflows. I use the batch-grid script when I want to process many audio files at once, and then I can import the TextGrid when I'm working on the relevant file in ELAN. On the other hand, I use the ELAN silence recogniser if I'm just working in a single file, as I don't have to save or export the results of the parse and I can adjust the settings more dynamically. 

## Batch-Grid Script Walkthrough

1. Download my Praat script {{< icon name="download" pack="fas" >}}{{< staticref "media/textgrid script.txt" "newtab" >}}here{{< /staticref >}}.

2. Open Praat.

3. Navigate to *Praat* > *Open Praat Script*. Select the script to open it.

4. Modify any settings that you wish to in the "To TextGrid (silences)" line of the script. The order of numbers reflects the order in the usual pop-up dialogue box.

5. When you are satisfied with the settings, click *Run* > *Run* to begin the script.

6. The script will generate a pop-up box. Input the directory where your TextGrids are located in the "Directory" line. The directory address must finish in a slash, otherwise it won't work properly.

7. If you wish to create TextGrids for a subset of audio files in the directory, specify part of the filename(s) in the "Word" line. If you wish to create a TextGrid for all audio files in the directory, leave the "Word" line blank.

8. Click OK to begin the process. 

9. The script will run automatically across all files matching the input in the "Word" line. Don't be worried if Praat says it's not responding at any point - this is actually a sign that it's processing your files.

10. When all TextGrids have been created, a pop-up will appear saying "All done! Now import into ELAN!". Follow the remaining steps in [Eri's workflow](https://yammeringon.wordpress.com/2017/05/01/elanpraat-machine-segmenting/) to import the TextGrids into ELAN or leave the files as is.

### Troubleshooting

The script is designed to work only with .wav files. I have not tested it out on other audio file types, but you can try your luck with Praat by changing the extension in the line of the script beginning "Create Strings as file list...".

You must make sure that the directory address you give ends in a slash. All systems will accept forward slashes and Windows additionally accepts back slashes. Without a final slash, your files won't get processed properly even though the script may run!

You may run into an error message, saying your TextGrid couldn't be processed. This is a sign that your computer does not have enough RAM to process a recording of that length. If this is the case, create a working copy of the original recording and split it into multiple sections. You should be able to run the batch-grid recogniser over these with no problems. When you have created the TextGrids, import them back into Praat. Select all the TextGrids and then choose the "Concatenate" option in the right-hand pane. This will chain the TextGrids in order of their import into Praat. Carry out a sanity check to make sure that this process worked by first importing the original recording into Praat, then selecting this recording and the concatenated TextGrid. Choose "View & Edit" and do a spot check across the whole recording. If the concatenated TextGrid is a success, make sure to save it.

## ELAN Silence Recogniser Walkthrough

There is a nice guide to the silence recogniser in the ELAN Manual [here](https://www.mpi.nl/corpus/html/elan/ch02s04s03.html). However, I provide my own guide here. Please note that you should do the silence recogniser __before__ any media synchronisation, although it's not the end of the world if you don't (see Troubleshooting for a workaround). 

1. Open a pre-existing project in ELAN with at least one audio file associated with it.

2. Go to the Recognizer sub-menu in the menu pane in the top(-right) of ELAN.

3. Select the "Silence Recognizer MPI-PL" in the Recognizer drop-down box.

4. Select the audio file you wish to run the silence recogniser on in the Files List drop-down box.

5. Select the silence level. The official manual details a way to use the "Select by example" method; I simply use "Select manually" and adjust it to somewhere between -35dB and -25dB, depending on the audio quality.

6. Adjust the minimal silence and non silence duration. I recommend 100ms for both.

7. Click the "Start" button to run the silence recogniser. It doesn't take very long and you can see how it's going in the progress bar, which is very nice.

8. You should see annotations populate on the waveform. Annotations with "x" represent the start of a non-silence section; annotations with "s" represent the start of a silence section. Take a look at how the annotations correspond to the waveform and to what you can hear. If it's not good enough, repeat steps 5-7 with different settings until you are happy with the results.

9. Once you are relatively satisfied with the output, you can export these annotations using the "Create Tier(s)" button.

10. If you are using a mono file, simply deselect the "Include in tier" button next to "s" and click "Create" to get a tier with annotations for all speech sections.

11. If you are using a stereo file, you have the option to get the segmentation from Channel 1, Channel 2, or both. If exporting a single channel, follow the steps as for mono files. 

12. If you want to export both channels from a stereo file, there is no option to deselect the annotations from "s". To get a similar result, start by creating both tiers. Next, go into *Tier* > *Remove annotations or values*. In this menu, only select the tiers you have just created. Select the option to remove *Annotations* > *Annotations where value is...* and type in "s". Click OK and you should have tiers where only the non-silence values remain.

13. The output tier(s) can now be manipulated as per any other tier in ELAN.

### Troubleshooting

If you have an output which does not align with your segments, despite the waveform looking all good, you may have run the silence recogniser after synchronising your media. In this case, you will need to shift the annotations on your tier according to the offset for the given media file. To do this, first check the offset by going to *Edit* > *Linked Files*. Find the corresponding .wav file and take note of the number in the offset column. From there, make the output tier from the silence recogniser your working tier by double-clicking on it. Go to *Edit* > *Shift All Annotations...* and enter the offset in the negative. This means if your file has an offset of 1000msec, you will need to put in -1000msec to make your annotations align. You may need to delete some annotations from the start of the tier to be able to get the space to align your tiers correctly -- this is perfectly normal. Any further media synchronisation should now affect the alignment of the segmentation tier as per normal.

Another thing to note is that this method can only be used on **audio** files. If you are working primarily with video files, you can export the audio track from your video using a tool like VLC player and then import it into ELAN. You should be able to then use this output with the native silence recogniser using the method described above.

#### References

Himmelmann, Nikolaus P. 2006. The challenges of segmenting spoken language. In Jost Gippert, Nikolaus P. Himmelmann & Ulrike Mosel (eds.), Essentials of language documentation, 253–274. Berlin: Mouton de Gruyter.
