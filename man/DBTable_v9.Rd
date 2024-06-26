% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/r6_DBTable_v9.R
\name{DBTable_v9}
\alias{DBTable_v9}
\title{R6 Class representing a DB schema/table}
\description{
The fundamental way to communicate with database tables.
}
\details{
This class is a representation of a database table. It is the way that you can
access data (e.g. `tbl()`), manipulate data (e.g. `insert_data`, `upsert_data`),
and manipulate structural aspects of the database table (e.g. `add_indexes`, `drop_indexes`).
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{dbconnection}}{Database connection.}

\item{\code{dbconfig}}{Configuration details of the database.}

\item{\code{table_name}}{Name of the table in the database.}

\item{\code{table_name_short_for_mssql_fully_specified_for_postgres}}{Fully specified name of the table in the database (e.g. \[db\].\[dbo\].\[table_name\]).}

\item{\code{table_name_short_for_mssql_fully_specified_for_postgres_text}}{Fully specified name of the table in the database (e.g. \[db\].\[dbo\].\[table_name\]).}

\item{\code{table_name_fully_specified}}{Fully specified name of the table in the database (e.g. \[db\].\[dbo\].\[table_name\]).}

\item{\code{table_name_fully_specified_text}}{Fully specified name of the table in the database (e.g. \[db\].\[dbo\].\[table_name\]) as a text string.}

\item{\code{field_types}}{The types of each column in the database table (INTEGER, DOUBLE, TEXT, BOOLEAN, DATE, DATETIME).}

\item{\code{field_types_with_length}}{The same as \code{field_types} but with \code{(100)} added to the end of all TEXT fields.}

\item{\code{keys}}{The combination of variables that uniquely identify each row in the database.}

\item{\code{keys_with_length}}{The same as \code{keys} but with \code{(100)} added to the end of all TEXT fields.}

\item{\code{indexes}}{A named list of vectors (generally "ind1", "ind2", etc.) that improves the speed of data retrieval operations on a database table.}

\item{\code{validator_field_contents}}{A function that validates the data before it is inserted into the database.}

\item{\code{load_folder}}{A temporary folder that is used to write data to before inserting into the database.}

\item{\code{censors}}{A named list of censors.}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-DBTable_v9-new}{\code{DBTable_v9$new()}}
\item \href{#method-DBTable_v9-print}{\code{DBTable_v9$print()}}
\item \href{#method-DBTable_v9-connect}{\code{DBTable_v9$connect()}}
\item \href{#method-DBTable_v9-disconnect}{\code{DBTable_v9$disconnect()}}
\item \href{#method-DBTable_v9-table_exists}{\code{DBTable_v9$table_exists()}}
\item \href{#method-DBTable_v9-create_table}{\code{DBTable_v9$create_table()}}
\item \href{#method-DBTable_v9-remove_table}{\code{DBTable_v9$remove_table()}}
\item \href{#method-DBTable_v9-insert_data}{\code{DBTable_v9$insert_data()}}
\item \href{#method-DBTable_v9-upsert_data}{\code{DBTable_v9$upsert_data()}}
\item \href{#method-DBTable_v9-drop_all_rows}{\code{DBTable_v9$drop_all_rows()}}
\item \href{#method-DBTable_v9-drop_rows_where}{\code{DBTable_v9$drop_rows_where()}}
\item \href{#method-DBTable_v9-keep_rows_where}{\code{DBTable_v9$keep_rows_where()}}
\item \href{#method-DBTable_v9-drop_all_rows_and_then_upsert_data}{\code{DBTable_v9$drop_all_rows_and_then_upsert_data()}}
\item \href{#method-DBTable_v9-drop_all_rows_and_then_insert_data}{\code{DBTable_v9$drop_all_rows_and_then_insert_data()}}
\item \href{#method-DBTable_v9-tbl}{\code{DBTable_v9$tbl()}}
\item \href{#method-DBTable_v9-print_dplyr_select}{\code{DBTable_v9$print_dplyr_select()}}
\item \href{#method-DBTable_v9-add_indexes}{\code{DBTable_v9$add_indexes()}}
\item \href{#method-DBTable_v9-drop_indexes}{\code{DBTable_v9$drop_indexes()}}
\item \href{#method-DBTable_v9-confirm_indexes}{\code{DBTable_v9$confirm_indexes()}}
\item \href{#method-DBTable_v9-nrow}{\code{DBTable_v9$nrow()}}
\item \href{#method-DBTable_v9-info}{\code{DBTable_v9$info()}}
\item \href{#method-DBTable_v9-clone}{\code{DBTable_v9$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DBTable_v9-new"></a>}}
\if{latex}{\out{\hypertarget{method-DBTable_v9-new}{}}}
\subsection{Method \code{new()}}{
Create a new DBTable_v9 object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DBTable_v9$new(
  dbconfig,
  table_name,
  field_types,
  keys,
  indexes = NULL,
  validator_field_types = validator_field_types_blank,
  validator_field_contents = validator_field_contents_blank
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{dbconfig}}{Configuration details of the database (driver, server, port, db, schema, user, password, trusted_connection, sslmode).}

\item{\code{table_name}}{Name of the table in the database.}

\item{\code{field_types}}{The types of each column in the database table (INTEGER, DOUBLE, TEXT, BOOLEAN, DATE, DATETIME).}

\item{\code{keys}}{The combination of these variables uniquely identifies each row of data in the table.}

\item{\code{indexes}}{A named list of vectors (generally "ind1", "ind2", etc.) that improves the speed of data retrieval operations on a database table.}

\item{\code{validator_field_types}}{A function that validates the \code{field_types} before the DB schema is created.}

\item{\code{validator_field_contents}}{A function that validates the data before it is inserted into the database.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A new `DBTable_v9` object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DBTable_v9-print"></a>}}
\if{latex}{\out{\hypertarget{method-DBTable_v9-print}{}}}
\subsection{Method \code{print()}}{
Class-specific print function.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DBTable_v9$print(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{Not in use.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DBTable_v9-connect"></a>}}
\if{latex}{\out{\hypertarget{method-DBTable_v9-connect}{}}}
\subsection{Method \code{connect()}}{
Connect from the database
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DBTable_v9$connect()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DBTable_v9-disconnect"></a>}}
\if{latex}{\out{\hypertarget{method-DBTable_v9-disconnect}{}}}
\subsection{Method \code{disconnect()}}{
Disconnect from the database
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DBTable_v9$disconnect()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DBTable_v9-table_exists"></a>}}
\if{latex}{\out{\hypertarget{method-DBTable_v9-table_exists}{}}}
\subsection{Method \code{table_exists()}}{
Does the table exist
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DBTable_v9$table_exists()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DBTable_v9-create_table"></a>}}
\if{latex}{\out{\hypertarget{method-DBTable_v9-create_table}{}}}
\subsection{Method \code{create_table()}}{
Create the database table
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DBTable_v9$create_table()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DBTable_v9-remove_table"></a>}}
\if{latex}{\out{\hypertarget{method-DBTable_v9-remove_table}{}}}
\subsection{Method \code{remove_table()}}{
Drop the database table
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DBTable_v9$remove_table()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DBTable_v9-insert_data"></a>}}
\if{latex}{\out{\hypertarget{method-DBTable_v9-insert_data}{}}}
\subsection{Method \code{insert_data()}}{
Inserts data
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DBTable_v9$insert_data(
  newdata,
  confirm_insert_via_nrow = FALSE,
  verbose = TRUE
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{newdata}}{The data to insert.}

\item{\code{confirm_insert_via_nrow}}{Checks nrow() before insert and after insert. If nrow() has not increased sufficiently, then attempt an upsert.}

\item{\code{verbose}}{Boolean.
Inserts data into the database table}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DBTable_v9-upsert_data"></a>}}
\if{latex}{\out{\hypertarget{method-DBTable_v9-upsert_data}{}}}
\subsection{Method \code{upsert_data()}}{
Upserts data into the database table
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DBTable_v9$upsert_data(
  newdata,
  drop_indexes = names(self$indexes),
  verbose = TRUE
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{newdata}}{The data to insert.}

\item{\code{drop_indexes}}{A vector containing the indexes to be dropped before upserting (can increase performance).}

\item{\code{verbose}}{Boolean.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DBTable_v9-drop_all_rows"></a>}}
\if{latex}{\out{\hypertarget{method-DBTable_v9-drop_all_rows}{}}}
\subsection{Method \code{drop_all_rows()}}{
Drops all rows in the database table
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DBTable_v9$drop_all_rows()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DBTable_v9-drop_rows_where"></a>}}
\if{latex}{\out{\hypertarget{method-DBTable_v9-drop_rows_where}{}}}
\subsection{Method \code{drop_rows_where()}}{
Drops rows in the database table according to the SQL condition.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DBTable_v9$drop_rows_where(condition)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{condition}}{SQL text condition.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DBTable_v9-keep_rows_where"></a>}}
\if{latex}{\out{\hypertarget{method-DBTable_v9-keep_rows_where}{}}}
\subsection{Method \code{keep_rows_where()}}{
Keeps rows in the database table according to the SQL condition.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DBTable_v9$keep_rows_where(condition)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{condition}}{SQL text condition.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DBTable_v9-drop_all_rows_and_then_upsert_data"></a>}}
\if{latex}{\out{\hypertarget{method-DBTable_v9-drop_all_rows_and_then_upsert_data}{}}}
\subsection{Method \code{drop_all_rows_and_then_upsert_data()}}{
Drops all rows in the database table and then upserts data.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DBTable_v9$drop_all_rows_and_then_upsert_data(
  newdata,
  drop_indexes = names(self$indexes),
  verbose = TRUE
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{newdata}}{The data to insert.}

\item{\code{drop_indexes}}{A vector containing the indexes to be dropped before upserting (can increase performance).}

\item{\code{verbose}}{Boolean.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DBTable_v9-drop_all_rows_and_then_insert_data"></a>}}
\if{latex}{\out{\hypertarget{method-DBTable_v9-drop_all_rows_and_then_insert_data}{}}}
\subsection{Method \code{drop_all_rows_and_then_insert_data()}}{
Drops all rows in the database table and then inserts data.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DBTable_v9$drop_all_rows_and_then_insert_data(
  newdata,
  confirm_insert_via_nrow = FALSE,
  verbose = TRUE
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{newdata}}{The data to insert.}

\item{\code{confirm_insert_via_nrow}}{Checks nrow() before insert and after insert. If nrow() has not increased sufficiently, then attempt an upsert.}

\item{\code{verbose}}{Boolean.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DBTable_v9-tbl"></a>}}
\if{latex}{\out{\hypertarget{method-DBTable_v9-tbl}{}}}
\subsection{Method \code{tbl()}}{
Provides access to the database table via dplyr::tbl.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DBTable_v9$tbl()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DBTable_v9-print_dplyr_select"></a>}}
\if{latex}{\out{\hypertarget{method-DBTable_v9-print_dplyr_select}{}}}
\subsection{Method \code{print_dplyr_select()}}{
Prints a template dplyr::select call that you can easily copy/paste for all your variables.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DBTable_v9$print_dplyr_select()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DBTable_v9-add_indexes"></a>}}
\if{latex}{\out{\hypertarget{method-DBTable_v9-add_indexes}{}}}
\subsection{Method \code{add_indexes()}}{
Adds indexes to the database table from `self$indexes`
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DBTable_v9$add_indexes()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DBTable_v9-drop_indexes"></a>}}
\if{latex}{\out{\hypertarget{method-DBTable_v9-drop_indexes}{}}}
\subsection{Method \code{drop_indexes()}}{
Drops all indees from the database table
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DBTable_v9$drop_indexes()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DBTable_v9-confirm_indexes"></a>}}
\if{latex}{\out{\hypertarget{method-DBTable_v9-confirm_indexes}{}}}
\subsection{Method \code{confirm_indexes()}}{
Confirms that the names and number of indexes in the database are the same as in the R code.
Does not confirm the contents of the indexes!
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DBTable_v9$confirm_indexes()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DBTable_v9-nrow"></a>}}
\if{latex}{\out{\hypertarget{method-DBTable_v9-nrow}{}}}
\subsection{Method \code{nrow()}}{
Gets the number of rows in the database table
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DBTable_v9$nrow(use_count = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{use_count}}{If true, then uses the count command, which is slow but accurate. If false, then uses summary statistics, which is fast but inaccurate.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DBTable_v9-info"></a>}}
\if{latex}{\out{\hypertarget{method-DBTable_v9-info}{}}}
\subsection{Method \code{info()}}{
Gets the information about the database table
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DBTable_v9$info()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DBTable_v9-clone"></a>}}
\if{latex}{\out{\hypertarget{method-DBTable_v9-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DBTable_v9$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
