---
slug:  "2026-07-22-getting-started"
date:  2026-07-22
title: "Getting Started"
tag:   "News"
file:  "updates/2026-07-22-getting-started.md"
---

It's been a couple of months since we first started our Archaeology Impossible Project. With a name like that, how do you get started? If we were doing physical fieldwork, in a way it would be easy: we'd go out to the site, get a feel for the lay of the land. We'd go to the library, and see what has already been written about the site. We'd see if someone else had already done work at the site, and we'd try to look at their archives ("data available upon request" is often not honoured, though.) But we're presented with a few issues.

The mountain tries to kill you. Not out of malice, just out of its simple being. Everyone who climbs Chomolungma is willfully, knowingly, choosing to become physically disabled and possibly killed. Lower the oxygen, lower your cognitive abilities. Oxygen tanks will keep you alive, but it's not like you're operating at your full capabilities, whatever those may be. In earlier eras of climbing at Chomolungma/Everest, the use of oxygen corresponded with a lessening of one's honour and masculinity. All eras of climbing require a tenuous chain of supply and invasion (quite literally, in the case of the Younghusband expedition). An archaeology of Everest is an archaeology of ability, of gender, of colonialism, of capitalism. It is frankly, an archaeology of the messiest expressions of Western ideologies. And on some level, it is an archaeology concerned with a "wicked problem": the impact of adventure tourism on a pristine landscape (Schofield 2024). It's a lot to wrestle with. With that in mind, getting started presented us with two problems.

1. What is 'Everest', anyway, as a _place_? How would you define the boundaries, anyway? Everest is as much a state of mind, a colonial construct, a metaphor, someone's bucket list, as it is a place with 'boundaries', however constructed.
2. What constitutes the evidence? How is that evidence formed? (We've already had several decades of research into site formation processes, over in the physical world).

Our project emerges from the International Space Station Archaeology Project, and in particular, the SQuARE experiment (Walsh et al. 2024). In that experiment, the astronauts set up 'test pits' for us by literally marking out squares within the ISS using Kapton tape. Then they took photographs every 24 hours (more or less) of whatever was in those squares over 60 days. In terrestrial archaeology, you work backwards from the present to the past by digging down (law of superposition and all that). On the ISS, we worked forward (day 1 ... day 60) but each day receded backwards from us as we analyzed. Time's arrow is a bit malleable. 

What's the equivalent at Everest? We spent some time looking at Flickr, Instagram, Tiktok, and wherever else climbers leave documentation of their presence in that place. It's clear that there are some loci that appear over and over again across photographs by people from around the world. The 'Welcome to Base Camp 5634' stone. The memorials to dead climbers. The ever-changing base camp as seen from below. The ever-changing Khumbu glacier. Green Boots (the knick-name for a dead climber close to the summit whose identity is suspected but not known). We also read histories and ethnographies about Everest and the people on and around it. We made lists of times people encountered stuff that had been left behind by previous visitors. And we watched movies made by the earliest climbing expeditions, in [1922](https://www.youtube.com/watch?v=tpaJRFWUEc0) and [1924](https://www.youtube.com/watch?v=tBJ0bCflZWo). 

So that's our evidence. We began searching Flickr (through paid API access) and paging manually through Instagram (because Facebook only provides API access if you're trying to build a business on that data that Facebook can then extract rents on). We tried to steer our way through the data by focusing on keywords related to trash and garbage - the idea that Everest is "the world's highest junkyward" emerges in a 1963 National Geographic article (Bishop 1963; Bishop and Naumann 1996), although Mazzolini 2012 points out that the problem of garbage is a lot more complicated than what that pat phrase implies.

After a lot of fiddling (which also involved pulling together a Chrome plugin that allowed us to gather copies of useful images and metadata) we have an initial dataset of some 2500 images and videos from across Flickr and Instagram. Videos have to be broken into individual shots or frames (we're using Arnold and Tilton's [Distant Viewing Toolkit](https://distantviewing.org/) for that). 

Social media photography was never intended as archaeological evidence (though the mutability and multifaceted archaeological aspects of it have been of interest to archaeologists since the emergence of social media, eg Morgan and Eve 2012, Huffer and Graham 2017). One aspect of social media photography that didn't emerge in the ISS materials is that social media is contextualized not only by the initial caption, but also subsequent comments, the use of @-handles to draw others into 'conversation', the emergent social network that _that_ implies, issues of reposting as a social signal... it's all another mess. Our methods emerge out of work that SG did in the context of the online human remains trade with Damien Huffer. Their Bone Trade Project used text analysis and computer vision tools to look at the practices of photographing the dead as a way of forming taste in that trade, of commodifying the dead as something-for-sale. They used things like topic models - which look at word or phrase co-occurence patterns to spot changing discourses over time, and word vectors that expressed those discourses in a multi-dimensional space to characterize the semantic valence of ideas in the trade. They also transformed the images themselves into multi-dimensional space (this is called an 'embedding model', whether text or images or indeed both within the _same_ space) which enabled the same kind of analysis at the level of the photograph itself (see Huffer and Graham 2023 for an overview of the entire project, its methods, and results).

## Initial Experiments

In which case, here's what we're working with right now. 

**'Place'** right now is defined as whatever turns up when someone has tagged a post or image with 'Everest' _or_ when we can search (as on Flickr) via geofencing. We can set a radius for photos geotagged within 10 km of the summit of the mountain, for instance.

When we map what we've got, not everything has coordinates of course. But there are some interesting patterns already:

![](images/map1.png)

As expected, most things are in Tibet or Nepal, but there are a few further afield: a post geotagged in England for instance turns out to be a stain-glassed window in a church in memory of a climber. Other posts look like they were in fact taken in Nepal, but someone ended up attaching geo-coordinates in Malaysia. Is that a function of manually added coordinates and making a mistake? Did some switch get flipped during upload? And then there are images in the United States that seem to correspond with the preparations for an expedition to Nepal - gathering equipment, training on North American mountains and so on.

Zoom in a bit closer:
 
![](images/map2.png)

The impact on Nepal v Tibet clearly shows up, a function of the geopolitics of the region. The path of the Khumbu glacier is clear. The colours of the points correspond with the original search terms we used that surfaced the images. Geofencing certainly was the most effective strategy for recovering imagery - but maybe that misses out on important aspects. The problem of [geolocating](https://bellingcat.gitbook.io/toolkit) all the other images is on our agenda. 

**Corpus of evidence** Therefore, we need to consider the nature of this evidence in more depth. Here, we started with a bit of text analysis.

Let's begin with the search terms. Here's what we've got from Flickr so far:

![](images/flickr-search-terms.png)

For Instagram, we've only searched 'everest trash' and 'everest base camp', but that returned nearly a thousand media files (and any given post might have a carousel of images and videos attached to it). Not every post carries tags. Any given video might have several shots or scenes in it, so right now SG is wrestling with how to burst those apart for the purposes of looking at the material culture captured (we've tried keyframe detection, but shot-detection will probably give more meaningful results. Stay tuned.) 

There are approximately 1000 unique tags across both Flickr and Instagram, where unique means '#everesttrash' and '#everest_trash' are counted by the machine as distinct. OpenRefine will probably be our friend there. 

![](images/flickr-v-insta-tags.png)

When we look at these over time, we can also see that something weird was going on in 2023. There looks to have been an expedition that year that was very conscientious in its tagging (in such a way that they overwhelm other signals. We need to unpack this). The rise and fall of Flickr as a web 2.0 darling is also visible in the overall relative patterning of recovered materials (and looks to be having a bit of an upsurge in popularity in recent years).

If we look at the actual descriptions/captions for a post (never minding any subsequent chatter on a post), treating them as fodder for a topic model, we see something like this:

![](images/early-topic-model.png)

Instagram folks are far more concerned with the idea of Everest-as-trash-heap than Flickr folks are. Now, absolute numbers of posts are different of course, and there is some finessing that needs to be done, but it certainly re-inforces the idea that Flickr is for the artsy, and Instagram is for the clicks. Indeed, on Instagram a lot of the 'trash' posts seem to just recycle old news footage etc related to this particular story. One particular issue we discovered to our frustration is that AI slop means we have to be extremely careful with anything from about 2024 onwards, on Instagram. Photos of avalanches that never happened. Videos doctored in ways for the lulz. SG had to redo the initial data collection once we realized the extent of the problem. But you can't filter Instagram by date! The answer is: you reverse-engineer the shortcodes, and use a Chrome plugin to grey-out posts after a cut-off date (the plugin looks at the shortcode, figures out the date, overlays a mask). We went with July 2024 as our cut-off.

Another thing we can do is embed the images in a text/vision model like CLIP. We drop the images through the CLIP model to turn them into vectors, then measure visual similarity. Images that are similar in terms of colour, shape, and composition tend to describe a similar path through the embedding space (a vector is a direction). Thus, you can measure the angle of difference for one vector versus another. When projected down to a mere two dimensions, we can see that there is very clearly a difference in the way Flickr users capture the idea of 'Everest' versus Instagram users. The categories in the image below are from an early stab at topic modeling the image captions (as an experiment to see if topics and visual composition had any kind of congruence; so far, we don't think so. But again, this was just an experiment).

![](images/flickr-v-insta-visual-comparison.png).

Once you have images in the same embedding space as text, you can do free-text search for a particular _concept_. The CLIP model was trained with image and caption pairs, so if we define a path through the textual (our search phrase), we can find which of our images are closest in the visual. 

![](images/clip-search.png)

Here, we just gave it a word, 'garbage' and it duly returned the images (is descending order of closeness to the 'garbage' vector) that matched. It's clear that CLIP was not trained with the idea that it should be a garbage detector. But there are [ways of fine-tuning CLIP](https://electricarchaeology.ca/2023/10/10/archaeclip-or-building-a-visual-search-engine-for-archaeology/). 

## What have we learned so far?

These initial experiments are very rough-and-ready, but they are pointing us towards the kinds of workflows that we might develop, and the issues that we will have to confront. Data cleaning is always the most tedious but important part of any kind of project. It's not self-evident what constitutes our evidence, or the location of our 'site'. Garbage is not ubiquitous _in photographs_ but seems to be (so far) a function of the way different platforms construct their voice and vision. The more we turn things around, the more complicated it all seems to get. But... there seems to be something to all of this.


---

Bishop, B. C. (1963). How we climbed Everest. National Geographic,
124(4): 477-508

Bishop, B and Naumann, C. (1996). Mount Everest: Reclamation of the World’s Highest Junk Yard. Mountain Research and Development 16(3): 323. https://doi.org/10.2307/3673958.

Huffer, D., & Graham, S. (2017). The Insta-Dead: The rhetoric of the human remains trade on Instagram. Internet Archaeology. 45.5 https://doi.org/10.11141/ia.45.5

Huffer, D., & Graham, S. (2023). These Were People Once: The Online Trade in Human Remains and Why It Matters. New York: Berghahn Books.

Mazzolini, E. (2012). The Garbage Question on Top of the World. In S. Foote and E. Mazzolini (eds) Histories of the Dustheap: Waste, Material Cultures, Social Justice. Cambridge MA: MIT Press https://direct.mit.edu/books/edited-volume/2169/Histories-of-the-DustheapWaste-Material-Cultures

Morgan, C., & Eve, S. (2012). DIY and digital archaeology: what are you doing to participate? World Archaeology, 44(4), 521–537. https://doi-org.proxy.library.carleton.ca/10.1080/00438243.2012.741810

Schofield, J. (2024). Wicked Problems for Archaeoloogists: Heritage as Transformative Practice. Oxford: Oxford UP.

Walsh, Justin St P., et al. ‘Archaeology in Space: The Sampling Quadrangle Assemblages Research Experiment (SQuARE) on the International Space Station. Report 1: Squares 03 and 05’. PLOS ONE, vol. 19, no. 8, Aug. 2024, p. e0304229. PLoS Journals, https://doi.org/10.1371/journal.pone.0304229.

