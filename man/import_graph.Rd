% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/import_graph.R
\name{import_graph}
\alias{import_graph}
\title{Import a graph from various graph formats}
\usage{
import_graph(graph_file, file_type = NULL, edges_extra_attr_names = NULL,
  edges_extra_attr_coltypes = NULL)
}
\arguments{
\item{graph_file}{a connection to a graph file.
When provided as a path to a file, it will read the
file from disk. Files starting with \code{http://},
\code{https://}, \code{ftp://}, or \code{ftps://}
will be automatically downloaded.}

\item{file_type}{the type of file to be imported.
Options are: \code{gml} (GML), \code{sif} (SIF),
\code{edges} (a .edges file), and \code{mtx}
(MatrixMarket format). If not supplied, the type
of graph file will be inferred by its file extension.}

\item{edges_extra_attr_names}{for \code{edges} files,
a vector of attribute names beyond the \code{from}
and \code{to} data columns can be provided in the
order they appear in the input data file.}

\item{edges_extra_attr_coltypes}{for \code{edges}
files, this is a string of column types for any
attribute columns provided for
\code{edges_extra_attr_names}. This string
representation is where each character represents
each of the extra columns of data and the mappings
are: \code{c} -> character, \code{i} -> integer,
\code{n} -> number, \code{d} -> double,
\code{l} -> logical, \code{D} -> date, \code{T} ->
date time, \code{t} -> time, \code{?} -> guess,
or \code{_/-}, which skips the column.}
}
\value{
a graph object of class \code{dgr_graph}.
}
\description{
Import a variety of graphs from
different graph formats and create a graph object.
}
\examples{
\dontrun{
# Import a GML graph file
gml_graph <-
  import_graph(
    system.file(
      "extdata/karate.gml",
      package = "DiagrammeR"))

# Get a count of the graph's nodes
gml_graph \%>\%
  count_nodes()
#> [1] 34

# Get a count of the graph's edges
gml_graph \%>\%
  count_edges()
#> [1] 78
}
}
