% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/rcicr_2IFC.R
\name{generateStimuli2IFC}
\alias{generateStimuli2IFC}
\title{Generates 2IFC stimuli}
\usage{
generateStimuli2IFC(base_face_files, n_trials = 770, img_size = 512,
  stimulus_path = "./stimuli", label = "rcic", use_same_parameters = TRUE,
  seed = 1, maximize_baseimage_contrast = TRUE, noise_type = "sinusoid",
  nscales = 5, sigma = 25)
}
\arguments{
\item{base_face_files}{List containing base face file names (jpegs) used as base images for stimuli}

\item{n_trials}{Number specifying how many trials the task will have (function will generate two images for each trial per base image: original and inverted/negative noise)}

\item{img_size}{Number specifying the number of pixels that the stimulus image will span horizontally and vertically (will be square, so only one integer needed)}

\item{stimulus_path}{Path to save stimuli and .Rdata file to}

\item{label}{Label to prepend to each file for your convenience}

\item{use_same_parameters}{Boolean specifying whether for each base image, the same set of parameters is used, or unique set is created for each base image}

\item{seed}{Integer seeding the random number generator (for reproducibility)}

\item{maximize_baseimage_contrast}{Boolean specifying wheter the pixel values of the base image should be rescaled to maximize its contrast.}

\item{noise_type}{String specifying noise pattern type (defaults to \code{sinusoid}; other options: \code{gabor}).}

\item{nscales}{Integer specifying the number of incremental spatial scales. Defaults to 5. Higher numbers will add higher spatial frequency scales.}

\item{sigma}{Number specifying the sigma of the Gabor patch if noise_type is set to \code{gabor} (defaults to 25)}
}
\value{
Nothing, everything is saved to files.
}
\description{
Generate stimuli for 2 images forced choice reverse correlation task.
}
\details{
Will save the stimuli as
jpeg's to a folder, including .Rdata file needed for analysis of data after data collection. This
.Rdata file contains the parameters that were used to generate each stimulus.
}

