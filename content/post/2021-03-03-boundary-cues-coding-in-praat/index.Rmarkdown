---
title: Boundary cues coding in Praat
author: Naomi Peck
date: '2021-03-03'
draft: true
slug: coding-cues-praat
categories: 
  - R
  - Praat
  - ELAN
  - Methodology
tags: 
  - Comparing Cues
  - R
  - Praat
  - ELAN
  - Walkthrough
subtitle: 'An outline of our coding methodology'
summary: 'A description of the methodology used for Peck et al. 2021.'
authors: 
  - admin
lastmod: '2021-03-03T11:32:49+01:00'
featured: no
image:
  caption: ''
  focal_point: ''
  preview_only: no
---

In 2020, my colleagues (Kirsten Culhane and Maria Vollmer) and I decided to investigate prosodic boundary cues in the languages we work on, hoping to take part in the 'Prosodic boundary phenomena' workshop at DGfS 2021. 
This resulted in a talk in the aforementioned workshop, which you can find here. <!-- add link here -->
This study was a way for us to investigate what prosodic cues were most important in our languages, and explore the range of variation both inter- and intra-linguistically. 
This was particularly useful as we are all relatively new to the study of our respective languages, and this gave us an opportunity to be more hands-on with our data and focus solely on prosodic aspects that we hadn't had the time to look at beforehand.

So, why boundary cues?
Part of the project that we three are involved in involves looking at the encoding of complex nominal or verbal units, including whether they are realised within single intonation units.
Given that we were already looking at speech at an intonation unit level, it wasn't a big step to looking at how these units can be segmented in the first case, i.e., the intonation unit boundary cues themselves.
The source of our project-internal prosody coding scheme, Izre'el and Mettouchi 2015, also suggested that there were differences in how speakers of different languages used boundary cues. <!-- add reference here --> 
Using their insight, we decided to conduct a study looking at whether certain boundary cues were used more frequently on language-specific and cross-linguistic grounds.

The first problem we encountered was how to collect the data.
I suggested that we could use Praat TextGrids as an easy way to annotate the presence or absence of boundary cues.
All of our data was annotated already in ELAN; however, annotating within ELAN for phonetic and prosodic data would likely make use of the integration of Praat in ELAN and require the use of both programs.
From that perspective, it was easier to simply export .eaf files as .textgrid and then work directly on the files within Praat itself.
We decided to use the intonation unit segmentation from ELAN and then use interval tier annotations aligned to the IUs in Praat to annotate for the presence (1) or absence (0) of features.
The use of Praat as our primary annotation program also meant that we could easily see the f0 traces and spectrograms, which were crucial for investigating pitch reset and creaky voice.
It is also a very easy and largely intuitive program to use - the steep learning curve only comes into play when learning to script.
As such, even Maria, who had barely worked with Praat before, found herself coding with ease not long after starting.

The set-up of our tiers was the next problem.
The cues we initially agreed to code for were pitch reset, pauses, initial rushes, final lengthening, creaky voice and tonal parallelism, based on discussions in Izre'el and Mettouchi 2015 and Himmelmann et al. 2018. <!-- add references here -->
Later, this list was expanded to include final rushes, initial lengthening and final devoicing, after we had done some initial investigation of our data.
We chose to have a uniform TextGrid tier order across files - something quite basic, but easy to overlook!
The first tiers were reference and intonation unit segmentation tiers inherited from ELAN.
This different between languages depending on how they had been segmented; for example, Waima'a had a ratio of 1:1 between reference and intonation, while Warlpiri and Kera'a had a one-to-many relationship.
The next two tiers were a transcription tier, also taken from the original ELAN file, and a comment tier, in which the annotator could write about any issues encountered during the coding process.
The rest of the tiers were dedicated to boundary cues, with one cue coded per tier.
The tiers were ordered as follows: pitch reset, pauses, initial lengthening, final lengthening, initial rush, final rush, tonal parallelism, creaky rush, and final devoicing.
This resulted in a TextGrid with 12 or 13 tiers, depending on the original segmentation in ELAN.

The process of coding was relatively quick. 
However, the extraction of our coding into a format which we could query using programs like RStudio was harder.
First, I tried using .textgrid to .csv converters that I had found online; however, the output was not consistent, and I had a mess of semi-aligned columns and results all over the place.
The .csv output that I got was not even worth trying to tidy, and I decided to instead manually input the coding into a .csv myself.
There are some videos out there for those who'd like to try the process - this one I found to be decent (after the fact): <!-- input video here -->
And coincidentally, the day I started planning for this post, an R package called 'phonfieldwork' came out, which seems like it would do a similar job.

<!-- 
need to change the tone! do I want this to be meta-decisions or a walkthrough of how we did the coding? 

perhaps concentrate in this post on the import into Praat + set up of TextGrid files + coding?
converting the .textgrid to .csv could probably be a topic on its own, especially if you don't use python.
and then I can play with phonfieldwork!

-->
