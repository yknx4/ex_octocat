# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Api.Migrations do
  @moduledoc """
  API calls for all endpoints tagged `Migrations`.
  """

  alias ExOctocat.Connection
  import ExOctocat.RequestBuilder

  @doc """
  Cancel an import
  Stop an import for a repository.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - owner (String.t):
  - repo (String.t):
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec migrations_cancel_import(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def migrations_cancel_import(connection, owner, repo, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/repos/#{owner}/#{repo}/import")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {204, false}
    ])
  end

  @doc """
  Delete a user migration archive
  Deletes a previous migration archive. Downloadable migration archives are automatically deleted after seven days. Migration metadata, which is returned in the [List user migrations](https://docs.github.com/rest/reference/migrations#list-user-migrations) and [Get a user migration status](https://docs.github.com/rest/reference/migrations#get-a-user-migration-status) endpoints, will continue to be available even after an archive is deleted.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - migration_id (integer()): migration_id parameter
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec migrations_delete_archive_for_authenticated_user(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil} | {:ok, ExOctocat.Model.BasicError.t()} | {:error, Tesla.Env.t()}
  def migrations_delete_archive_for_authenticated_user(connection, migration_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/user/migrations/#{migration_id}/archive")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {204, false},
      {404, %ExOctocat.Model.BasicError{}},
      {304, false},
      {403, %ExOctocat.Model.BasicError{}},
      {401, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  Delete an organization migration archive
  Deletes a previous migration archive. Migration archives are automatically deleted after seven days.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - org (String.t):
  - migration_id (integer()): migration_id parameter
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec migrations_delete_archive_for_org(Tesla.Env.client(), String.t(), integer(), keyword()) ::
          {:ok, nil} | {:ok, ExOctocat.Model.BasicError.t()} | {:error, Tesla.Env.t()}
  def migrations_delete_archive_for_org(connection, org, migration_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/orgs/#{org}/migrations/#{migration_id}/archive")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {204, false},
      {404, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  Download an organization migration archive
  Fetches the URL to a migration archive.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - org (String.t):
  - migration_id (integer()): migration_id parameter
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec migrations_download_archive_for_org(Tesla.Env.client(), String.t(), integer(), keyword()) ::
          {:ok, nil} | {:ok, ExOctocat.Model.BasicError.t()} | {:error, Tesla.Env.t()}
  def migrations_download_archive_for_org(connection, org, migration_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/orgs/#{org}/migrations/#{migration_id}/archive")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {302, false},
      {404, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  Download a user migration archive
  Fetches the URL to download the migration archive as a `tar.gz` file. Depending on the resources your repository uses, the migration archive can contain JSON files with data for these objects:  *   attachments *   bases *   commit\\_comments *   issue\\_comments *   issue\\_events *   issues *   milestones *   organizations *   projects *   protected\\_branches *   pull\\_request\\_reviews *   pull\\_requests *   releases *   repositories *   review\\_comments *   schema *   users  The archive will also contain an `attachments` directory that includes all attachment files uploaded to GitHub.com and a `repositories` directory that contains the repository's Git data.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - migration_id (integer()): migration_id parameter
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec migrations_get_archive_for_authenticated_user(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil} | {:ok, ExOctocat.Model.BasicError.t()} | {:error, Tesla.Env.t()}
  def migrations_get_archive_for_authenticated_user(connection, migration_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/user/migrations/#{migration_id}/archive")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {302, false},
      {304, false},
      {403, %ExOctocat.Model.BasicError{}},
      {401, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  Get commit authors
  Each type of source control system represents authors in a different way. For example, a Git commit author has a display name and an email address, but a Subversion commit author just has a username. The GitHub Importer will make the author information valid, but the author might not be correct. For example, it will change the bare Subversion username `hubot` into something like `hubot <hubot@12341234-abab-fefe-8787-fedcba987654>`.  This endpoint and the [Map a commit author](https://docs.github.com/rest/reference/migrations#map-a-commit-author) endpoint allow you to provide correct Git author information.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - owner (String.t):
  - repo (String.t):
  - opts (KeywordList): [optional] Optional parameters
    - :since (integer()): A user ID. Only return users with an ID greater than this ID.
  ## Returns

  {:ok, [%PorterAuthor{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec migrations_get_commit_authors(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, ExOctocat.Model.BasicError.t()}
          | {:ok, list(ExOctocat.Model.PorterAuthor.t())}
          | {:error, Tesla.Env.t()}
  def migrations_get_commit_authors(connection, owner, repo, opts \\ []) do
    optional_params = %{
      :since => :query
    }

    %{}
    |> method(:get)
    |> url("/repos/#{owner}/#{repo}/import/authors")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%ExOctocat.Model.PorterAuthor{}]},
      {404, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  Get an import status
  View the progress of an import.  **Import status**  This section includes details about the possible values of the `status` field of the Import Progress response.  An import that does not have errors will progress through these steps:  *   `detecting` - the \"detection\" step of the import is in progress because the request did not include a `vcs` parameter. The import is identifying the type of source control present at the URL. *   `importing` - the \"raw\" step of the import is in progress. This is where commit data is fetched from the original repository. The import progress response will include `commit_count` (the total number of raw commits that will be imported) and `percent` (0 - 100, the current progress through the import). *   `mapping` - the \"rewrite\" step of the import is in progress. This is where SVN branches are converted to Git branches, and where author updates are applied. The import progress response does not include progress information. *   `pushing` - the \"push\" step of the import is in progress. This is where the importer updates the repository on GitHub. The import progress response will include `push_percent`, which is the percent value reported by `git push` when it is \"Writing objects\". *   `complete` - the import is complete, and the repository is ready on GitHub.  If there are problems, you will see one of these in the `status` field:  *   `auth_failed` - the import requires authentication in order to connect to the original repository. To update authentication for the import, please see the [Update an import](https://docs.github.com/rest/reference/migrations#update-an-import) section. *   `error` - the import encountered an error. The import progress response will include the `failed_step` and an error message. Contact [GitHub Support](https://support.github.com/contact?tags=rest-api) for more information. *   `detection_needs_auth` - the importer requires authentication for the originating repository to continue detection. To update authentication for the import, please see the [Update an import](https://docs.github.com/rest/reference/migrations#update-an-import) section. *   `detection_found_nothing` - the importer didn't recognize any source control at the URL. To resolve, [Cancel the import](https://docs.github.com/rest/reference/migrations#cancel-an-import) and [retry](https://docs.github.com/rest/reference/migrations#start-an-import) with the correct URL. *   `detection_found_multiple` - the importer found several projects or repositories at the provided URL. When this is the case, the Import Progress response will also include a `project_choices` field with the possible project choices as values. To update project choice, please see the [Update an import](https://docs.github.com/rest/reference/migrations#update-an-import) section.  **The project_choices field**  When multiple projects are found at the provided URL, the response hash will include a `project_choices` field, the value of which is an array of hashes each representing a project choice. The exact key/value pairs of the project hashes will differ depending on the version control type.  **Git LFS related fields**  This section includes details about Git LFS related fields that may be present in the Import Progress response.  *   `use_lfs` - describes whether the import has been opted in or out of using Git LFS. The value can be `opt_in`, `opt_out`, or `undecided` if no action has been taken. *   `has_large_files` - the boolean value describing whether files larger than 100MB were found during the `importing` step. *   `large_files_size` - the total size in gigabytes of files larger than 100MB found in the originating repository. *   `large_files_count` - the total number of files larger than 100MB found in the originating repository. To see a list of these files, make a \"Get Large Files\" request.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - owner (String.t):
  - repo (String.t):
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, ExOctocat.Model.Import.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec migrations_get_import_status(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, ExOctocat.Model.Import.t()}
          | {:ok, ExOctocat.Model.BasicError.t()}
          | {:error, Tesla.Env.t()}
  def migrations_get_import_status(connection, owner, repo, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/repos/#{owner}/#{repo}/import")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %ExOctocat.Model.Import{}},
      {404, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  Get large files
  List files larger than 100MB found during the import

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - owner (String.t):
  - repo (String.t):
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%PorterLargeFile{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec migrations_get_large_files(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, list(ExOctocat.Model.PorterLargeFile.t())} | {:error, Tesla.Env.t()}
  def migrations_get_large_files(connection, owner, repo, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/repos/#{owner}/#{repo}/import/large_files")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%ExOctocat.Model.PorterLargeFile{}]}
    ])
  end

  @doc """
  Get a user migration status
  Fetches a single user migration. The response includes the `state` of the migration, which can be one of the following values:  *   `pending` - the migration hasn't started yet. *   `exporting` - the migration is in progress. *   `exported` - the migration finished successfully. *   `failed` - the migration failed.  Once the migration has been `exported` you can [download the migration archive](https://docs.github.com/rest/reference/migrations#download-a-user-migration-archive).

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - migration_id (integer()): migration_id parameter
  - opts (KeywordList): [optional] Optional parameters
    - :exclude ([String.t]):
  ## Returns

  {:ok, ExOctocat.Model.Migration.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec migrations_get_status_for_authenticated_user(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil}
          | {:ok, ExOctocat.Model.BasicError.t()}
          | {:ok, ExOctocat.Model.Migration.t()}
          | {:error, Tesla.Env.t()}
  def migrations_get_status_for_authenticated_user(connection, migration_id, opts \\ []) do
    optional_params = %{
      :exclude => :query
    }

    %{}
    |> method(:get)
    |> url("/user/migrations/#{migration_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %ExOctocat.Model.Migration{}},
      {404, %ExOctocat.Model.BasicError{}},
      {304, false},
      {403, %ExOctocat.Model.BasicError{}},
      {401, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  Get an organization migration status
  Fetches the status of a migration.  The `state` of a migration can be one of the following values:  *   `pending`, which means the migration hasn't started yet. *   `exporting`, which means the migration is in progress. *   `exported`, which means the migration finished successfully. *   `failed`, which means the migration failed.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - org (String.t):
  - migration_id (integer()): migration_id parameter
  - opts (KeywordList): [optional] Optional parameters
    - :exclude ([String.t]): Exclude attributes from the API response to improve performance
  ## Returns

  {:ok, ExOctocat.Model.Migration.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec migrations_get_status_for_org(Tesla.Env.client(), String.t(), integer(), keyword()) ::
          {:ok, ExOctocat.Model.BasicError.t()}
          | {:ok, ExOctocat.Model.Migration.t()}
          | {:error, Tesla.Env.t()}
  def migrations_get_status_for_org(connection, org, migration_id, opts \\ []) do
    optional_params = %{
      :exclude => :query
    }

    %{}
    |> method(:get)
    |> url("/orgs/#{org}/migrations/#{migration_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %ExOctocat.Model.Migration{}},
      {404, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  List user migrations
  Lists all migrations a user has started.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :per_page (integer()): Results per page (max 100)
    - :page (integer()): Page number of the results to fetch.
  ## Returns

  {:ok, [%Migration{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec migrations_list_for_authenticated_user(Tesla.Env.client(), keyword()) ::
          {:ok, nil}
          | {:ok, ExOctocat.Model.BasicError.t()}
          | {:ok, list(ExOctocat.Model.Migration.t())}
          | {:error, Tesla.Env.t()}
  def migrations_list_for_authenticated_user(connection, opts \\ []) do
    optional_params = %{
      :per_page => :query,
      :page => :query
    }

    %{}
    |> method(:get)
    |> url("/user/migrations")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%ExOctocat.Model.Migration{}]},
      {304, false},
      {403, %ExOctocat.Model.BasicError{}},
      {401, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  List organization migrations
  Lists the most recent migrations.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - org (String.t):
  - opts (KeywordList): [optional] Optional parameters
    - :per_page (integer()): Results per page (max 100)
    - :page (integer()): Page number of the results to fetch.
    - :exclude ([String.t]): Exclude attributes from the API response to improve performance
  ## Returns

  {:ok, [%Migration{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec migrations_list_for_org(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, list(ExOctocat.Model.Migration.t())} | {:error, Tesla.Env.t()}
  def migrations_list_for_org(connection, org, opts \\ []) do
    optional_params = %{
      :per_page => :query,
      :page => :query,
      :exclude => :query
    }

    %{}
    |> method(:get)
    |> url("/orgs/#{org}/migrations")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%ExOctocat.Model.Migration{}]}
    ])
  end

  @doc """
  List repositories in an organization migration
  List all the repositories for this organization migration.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - org (String.t):
  - migration_id (integer()): migration_id parameter
  - opts (KeywordList): [optional] Optional parameters
    - :per_page (integer()): Results per page (max 100)
    - :page (integer()): Page number of the results to fetch.
  ## Returns

  {:ok, [%MinimalRepository{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec migrations_list_repos_for_org(Tesla.Env.client(), String.t(), integer(), keyword()) ::
          {:ok, ExOctocat.Model.BasicError.t()}
          | {:ok, list(ExOctocat.Model.MinimalRepository.t())}
          | {:error, Tesla.Env.t()}
  def migrations_list_repos_for_org(connection, org, migration_id, opts \\ []) do
    optional_params = %{
      :per_page => :query,
      :page => :query
    }

    %{}
    |> method(:get)
    |> url("/orgs/#{org}/migrations/#{migration_id}/repositories")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%ExOctocat.Model.MinimalRepository{}]},
      {404, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  List repositories for a user migration
  Lists all the repositories for this user migration.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - migration_id (integer()): migration_id parameter
  - opts (KeywordList): [optional] Optional parameters
    - :per_page (integer()): Results per page (max 100)
    - :page (integer()): Page number of the results to fetch.
  ## Returns

  {:ok, [%MinimalRepository{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec migrations_list_repos_for_user(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, ExOctocat.Model.BasicError.t()}
          | {:ok, list(ExOctocat.Model.MinimalRepository.t())}
          | {:error, Tesla.Env.t()}
  def migrations_list_repos_for_user(connection, migration_id, opts \\ []) do
    optional_params = %{
      :per_page => :query,
      :page => :query
    }

    %{}
    |> method(:get)
    |> url("/user/migrations/#{migration_id}/repositories")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%ExOctocat.Model.MinimalRepository{}]},
      {404, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  Map a commit author
  Update an author's identity for the import. Your application can continue updating authors any time before you push new commits to the repository.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - owner (String.t):
  - repo (String.t):
  - author_id (integer()):
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject96):
  ## Returns

  {:ok, ExOctocat.Model.PorterAuthor.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec migrations_map_commit_author(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          integer(),
          keyword()
        ) ::
          {:ok, ExOctocat.Model.ValidationError.t()}
          | {:ok, ExOctocat.Model.BasicError.t()}
          | {:ok, ExOctocat.Model.PorterAuthor.t()}
          | {:error, Tesla.Env.t()}
  def migrations_map_commit_author(connection, owner, repo, author_id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:patch)
    |> url("/repos/#{owner}/#{repo}/import/authors/#{author_id}")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %ExOctocat.Model.PorterAuthor{}},
      {422, %ExOctocat.Model.ValidationError{}},
      {404, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  Update Git LFS preference
  You can import repositories from Subversion, Mercurial, and TFS that include files larger than 100MB. This ability is powered by [Git LFS](https://git-lfs.github.com). You can learn more about our LFS feature and working with large files [on our help site](https://help.github.com/articles/versioning-large-files/).

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - owner (String.t):
  - repo (String.t):
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject97):
  ## Returns

  {:ok, ExOctocat.Model.Import.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec migrations_set_lfs_preference(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, ExOctocat.Model.ValidationError.t()}
          | {:ok, ExOctocat.Model.Import.t()}
          | {:error, Tesla.Env.t()}
  def migrations_set_lfs_preference(connection, owner, repo, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:patch)
    |> url("/repos/#{owner}/#{repo}/import/lfs")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %ExOctocat.Model.Import{}},
      {422, %ExOctocat.Model.ValidationError{}}
    ])
  end

  @doc """
  Start a user migration
  Initiates the generation of a user migration archive.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject166):
  ## Returns

  {:ok, ExOctocat.Model.Migration.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec migrations_start_for_authenticated_user(Tesla.Env.client(), keyword()) ::
          {:ok, nil}
          | {:ok, ExOctocat.Model.ValidationError.t()}
          | {:ok, ExOctocat.Model.BasicError.t()}
          | {:ok, ExOctocat.Model.Migration.t()}
          | {:error, Tesla.Env.t()}
  def migrations_start_for_authenticated_user(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:post)
    |> url("/user/migrations")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {201, %ExOctocat.Model.Migration{}},
      {422, %ExOctocat.Model.ValidationError{}},
      {304, false},
      {403, %ExOctocat.Model.BasicError{}},
      {401, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  Start an organization migration
  Initiates the generation of a migration archive.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - org (String.t):
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject37):
  ## Returns

  {:ok, ExOctocat.Model.Migration.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec migrations_start_for_org(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, ExOctocat.Model.ValidationError.t()}
          | {:ok, ExOctocat.Model.BasicError.t()}
          | {:ok, ExOctocat.Model.Migration.t()}
          | {:error, Tesla.Env.t()}
  def migrations_start_for_org(connection, org, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:post)
    |> url("/orgs/#{org}/migrations")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {201, %ExOctocat.Model.Migration{}},
      {404, %ExOctocat.Model.BasicError{}},
      {422, %ExOctocat.Model.ValidationError{}}
    ])
  end

  @doc """
  Start an import
  Start a source import to a GitHub repository using GitHub Importer.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - owner (String.t):
  - repo (String.t):
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject94):
  ## Returns

  {:ok, ExOctocat.Model.Import.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec migrations_start_import(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, ExOctocat.Model.ValidationError.t()}
          | {:ok, ExOctocat.Model.Import.t()}
          | {:ok, ExOctocat.Model.BasicError.t()}
          | {:error, Tesla.Env.t()}
  def migrations_start_import(connection, owner, repo, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:put)
    |> url("/repos/#{owner}/#{repo}/import")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {201, %ExOctocat.Model.Import{}},
      {422, %ExOctocat.Model.ValidationError{}},
      {404, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  Unlock a user repository
  Unlocks a repository. You can lock repositories when you [start a user migration](https://docs.github.com/rest/reference/migrations#start-a-user-migration). Once the migration is complete you can unlock each repository to begin using it again or [delete the repository](https://docs.github.com/rest/reference/repos#delete-a-repository) if you no longer need the source data. Returns a status of `404 Not Found` if the repository is not locked.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - migration_id (integer()): migration_id parameter
  - repo_name (String.t): repo_name parameter
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec migrations_unlock_repo_for_authenticated_user(
          Tesla.Env.client(),
          integer(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:ok, ExOctocat.Model.BasicError.t()} | {:error, Tesla.Env.t()}
  def migrations_unlock_repo_for_authenticated_user(
        connection,
        migration_id,
        repo_name,
        _opts \\ []
      ) do
    %{}
    |> method(:delete)
    |> url("/user/migrations/#{migration_id}/repos/#{repo_name}/lock")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {204, false},
      {304, false},
      {404, %ExOctocat.Model.BasicError{}},
      {403, %ExOctocat.Model.BasicError{}},
      {401, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  Unlock an organization repository
  Unlocks a repository that was locked for migration. You should unlock each migrated repository and [delete them](https://docs.github.com/rest/reference/repos#delete-a-repository) when the migration is complete and you no longer need the source data.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - org (String.t):
  - migration_id (integer()): migration_id parameter
  - repo_name (String.t): repo_name parameter
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec migrations_unlock_repo_for_org(
          Tesla.Env.client(),
          String.t(),
          integer(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:ok, ExOctocat.Model.BasicError.t()} | {:error, Tesla.Env.t()}
  def migrations_unlock_repo_for_org(connection, org, migration_id, repo_name, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/orgs/#{org}/migrations/#{migration_id}/repos/#{repo_name}/lock")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {204, false},
      {404, %ExOctocat.Model.BasicError{}}
    ])
  end

  @doc """
  Update an import
  An import can be updated with credentials or a project choice by passing in the appropriate parameters in this API request. If no parameters are provided, the import will be restarted.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - owner (String.t):
  - repo (String.t):
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject95):
  ## Returns

  {:ok, ExOctocat.Model.Import.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec migrations_update_import(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, ExOctocat.Model.Import.t()} | {:error, Tesla.Env.t()}
  def migrations_update_import(connection, owner, repo, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:patch)
    |> url("/repos/#{owner}/#{repo}/import")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %ExOctocat.Model.Import{}}
    ])
  end
end
