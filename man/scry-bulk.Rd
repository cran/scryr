% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/api-bulk.R
\name{scry-bulk}
\alias{scry-bulk}
\alias{scry_bulk_files}
\alias{scry_bulk_file}
\title{Retrieve information about bulk data files}
\usage{
scry_bulk_files()

scry_bulk_file(name)
}
\arguments{
\item{name}{A string with file to be downloaded. Can be any one of
\verb{Oracle Cards}, \verb{Unique Artwork}, \verb{Default Cards}, \verb{All Cards} or \code{Rulings}.
See details.}
}
\value{
A data frame with 1 or more rows and the following columns:
\itemize{
\item \code{id} [chr]: A unique ID for this bulk item.
\item \code{name} [chr]: A human-readable name for this file. See details.
\item \code{type} [chr]: A computer-readable string for the kind of bulk item.
\item \code{updated_at} [dttm]: The time when this file was last updated.
\item \code{uri} [chr]: The Scryfall API URI for this file.
\item \code{description} [chr]: A human-readable description for this file.
\item \code{compressed_size} [int]: The size of this file in integer bytes.
\item \code{download_uri} [chr]: The URI that hosts this bulk file for fetching.
\item \code{content_type} [chr]: The MIME type of this file.
\item \code{content_encoding} [chr]: The Content-Encoding encoding that will be used
to transmit this file when you download it.
}
}
\description{
Scryfall provides daily exports of our card data in bulk files. Each of these
files is represented as a \code{bulk_data} object via the API. See details.
}
\details{
URLs for files change their timestamp each day, and can be fetched
programmatically. The currently available files are the following:
\itemize{
\item Oracle Cards: A JSON file containing one Scryfall card for each Oracle ID
on Scryfall. The chosen sets for the cards are an attempt to return the
most up-to-date recognizable version of the card.
\item Unique Artwork: A JSON file of Scryfall cards that together contain all
unique artworks. The chosen cards promote the best image scans.
\item Default Cards: A JSON file containing every card on Scryfall in English or
the printed language if the card is only available in one language.
\item All Cards: A JSON file containing every card on Scryfall in every language.
\item Rulings: A JSON file containing all Rulings on Scryfall. Each ruling refers
to cards via an \code{oracle_id}.
}

Please note:
\itemize{
\item Cards in bulk data include price information, but \strong{prices should be
considered dangerously stale after 24 hours}. Only use bulk price
information to track trends or provide a general estimate of card value.
Prices are not updated frequently enough to power a storefront or sales
system. You consume price information at your own risk.
\item Updates to gameplay data (such as card names, Oracle text, mana costs, etc)
are much less frequent. If you only need gameplay information, downloading
card data once per week or right after set releases would most likely be
sufficient.
\item Every card type in every product is included, including \href{https://scryfall.com/search?q=t\%3Aplane+or+t\%3Aphenom}{planar cards},
\href{https://scryfall.com/search?q=t\%3Ascheme}{schemes}, \href{https://scryfall.com/search?q=t\%3Avanguard}{Vanguard cards},
\href{https://scryfall.com/search?q=t\%3Atoken}{tokens},
\href{https://scryfall.com/search?q=t\%3Aemblem}{emblems}, and \href{https://scryfall.com/search?q=is\%3Afunny}{funny cards}.
}

Bulk data is only collected once every 12 hours. You can use \code{\link[=scry_cards]{scry_cards()}}
to retrieve fresh objects instead.
}
\examples{
\donttest{
# Get information about bulk data files
scry_bulk_files()

# Download a bulk data file
scry_bulk_file("Rulings")
}

}
\references{
\url{https://scryfall.com/docs/api/bulk-data}
}
