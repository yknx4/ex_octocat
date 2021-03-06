# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Api.CodeScanning do
  @moduledoc """
  API calls for all endpoints tagged `CodeScanning`.
  """

  alias ExOctocat.Connection
  import ExOctocat.RequestBuilder

  @doc """
  Delete a code scanning analysis from a repository
  Deletes a specified code scanning analysis from a repository. For private repositories, you must use an access token with the `repo` scope. For public repositories, you must use an access token with `public_repo` and `repo:security_events` scopes. GitHub Apps must have the `security_events` write permission to use this endpoint.  You can delete one analysis at a time. To delete a series of analyses, start with the most recent analysis and work backwards. Conceptually, the process is similar to the undo function in a text editor.  When you list the analyses for a repository, one or more will be identified as deletable in the response:  ``` \"deletable\": true ```  An analysis is deletable when it's the most recent in a set of analyses. Typically, a repository will have multiple sets of analyses for each enabled code scanning tool, where a set is determined by a unique combination of analysis values:  * `ref` * `tool` * `analysis_key` * `environment`  If you attempt to delete an analysis that is not the most recent in a set, you'll get a 400 response with the message:  ``` Analysis specified is not deletable. ```  The response from a successful `DELETE` operation provides you with two alternative URLs for deleting the next analysis in the set (see the example default response below). Use the `next_analysis_url` URL if you want to avoid accidentally deleting the final analysis in the set. This is a useful option if you want to preserve at least one analysis for the specified tool in your repository. Use the `confirm_delete_url` URL if you are content to remove all analyses for a tool. When you delete the last analysis in a set the value of `next_analysis_url` and `confirm_delete_url` in the 200 response is `null`.  As an example of the deletion process, let's imagine that you added a workflow that configured a particular code scanning tool to analyze the code in a repository. This tool has added 15 analyses: 10 on the default branch, and another 5 on a topic branch. You therefore have two separate sets of analyses for this tool. You've now decided that you want to remove all of the analyses for the tool. To do this you must make 15 separate deletion requests. To start, you must find the deletable analysis for one of the sets, step through deleting the analyses in that set, and then repeat the process for the second set. The procedure therefore consists of a nested loop:  **Outer loop**: * List the analyses for the repository, filtered by tool. * Parse this list to find a deletable analysis. If found:    **Inner loop**:   * Delete the identified analysis.   * Parse the response for the value of `confirm_delete_url` and, if found, use this in the next iteration.  The above process assumes that you want to remove all trace of the tool's analyses from the GitHub user interface, for the specified repository, and it therefore uses the `confirm_delete_url` value. Alternatively, you could use the `next_analysis_url` value, which would leave the last analysis in each set undeleted to avoid removing a tool's analysis entirely.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - owner (String.t):
  - repo (String.t):
  - analysis_id (integer()): The ID of the analysis, as returned from the `GET /repos/{owner}/{repo}/code-scanning/analyses` operation.
  - opts (KeywordList): [optional] Optional parameters
    - :confirm_delete (String.t): Allow deletion if the specified analysis is the last in a set. If you attempt to delete the final analysis in a set without setting this parameter to `true`, you'll get a 400 response with the message: `Analysis is last of its type and deletion may result in the loss of historical alert data. Please specify confirm_delete.`
  ## Returns

  {:ok, ExOctocat.Model.CodeScanningAnalysisDeletion.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec code_scanning_delete_analysis(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          integer(),
          keyword()
        ) ::
          {:ok, ExOctocat.Model.CodeScanningAnalysisDeletion.t()}
          | {:ok, ExOctocat.Model.BasicError.t()}
          | {:ok, ExOctocat.Model.InlineResponse503.t()}
          | {:error, Tesla.Env.t()}
  def code_scanning_delete_analysis(connection, owner, repo, analysis_id, opts \\ []) do
    optional_params = %{
      :confirm_delete => :query
    }

    %{}
    |> method(:delete)
    |> url("/repos/#{owner}/#{repo}/code-scanning/analyses/#{analysis_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %ExOctocat.Model.CodeScanningAnalysisDeletion{}},
      {400, %ExOctocat.Model.BasicError{}},
      {403, %ExOctocat.Model.BasicError{}},
      {404, %ExOctocat.Model.BasicError{}},
      {503, %ExOctocat.Model.InlineResponse503{}}
    ])
  end

  @doc """
  Get a code scanning alert
  Gets a single code scanning alert. You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` read permission to use this endpoint.  **Deprecation notice**: The instances field is deprecated and will, in future, not be included in the response for this endpoint. The example response reflects this change. The same information can now be retrieved via a GET request to the URL specified by `instances_url`.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - owner (String.t):
  - repo (String.t):
  - alert_number (integer()): The number that identifies an alert. You can find this at the end of the URL for a code scanning alert within GitHub, and in the `number` field in the response from the `GET /repos/{owner}/{repo}/code-scanning/alerts` operation.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, ExOctocat.Model.CodeScanningAlert.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec code_scanning_get_alert(Tesla.Env.client(), String.t(), String.t(), integer(), keyword()) ::
          {:ok, ExOctocat.Model.CodeScanningAlert.t()}
          | {:ok, ExOctocat.Model.BasicError.t()}
          | {:ok, ExOctocat.Model.InlineResponse503.t()}
          | {:error, Tesla.Env.t()}
  def code_scanning_get_alert(connection, owner, repo, alert_number, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/repos/#{owner}/#{repo}/code-scanning/alerts/#{alert_number}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %ExOctocat.Model.CodeScanningAlert{}},
      {403, %ExOctocat.Model.BasicError{}},
      {404, %ExOctocat.Model.BasicError{}},
      {503, %ExOctocat.Model.InlineResponse503{}}
    ])
  end

  @doc """
  Get a code scanning analysis for a repository
  Gets a specified code scanning analysis for a repository. You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` read permission to use this endpoint.  The default JSON response contains fields that describe the analysis. This includes the Git reference and commit SHA to which the analysis relates, the datetime of the analysis, the name of the code scanning tool, and the number of alerts.  The `rules_count` field in the default response give the number of rules that were run in the analysis. For very old analyses this data is not available, and `0` is returned in this field.  If you use the Accept header `application/sarif+json`, the response contains the analysis data that was uploaded. This is formatted as [SARIF version 2.1.0](https://docs.oasis-open.org/sarif/sarif/v2.1.0/cs01/sarif-v2.1.0-cs01.html).  **Deprecation notice**: The `tool_name` field is deprecated and will, in future, not be included in the response for this endpoint. The example response reflects this change. The tool name can now be found inside the `tool` field.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - owner (String.t):
  - repo (String.t):
  - analysis_id (integer()): The ID of the analysis, as returned from the `GET /repos/{owner}/{repo}/code-scanning/analyses` operation.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, String.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec code_scanning_get_analysis(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          integer(),
          keyword()
        ) ::
          {:ok, ExOctocat.Model.BasicError.t()}
          | {:ok, ExOctocat.Model.InlineResponse503.t()}
          | {:ok, String.t()}
          | {:error, Tesla.Env.t()}
  def code_scanning_get_analysis(connection, owner, repo, analysis_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/repos/#{owner}/#{repo}/code-scanning/analyses/#{analysis_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, false},
      {403, %ExOctocat.Model.BasicError{}},
      {404, %ExOctocat.Model.BasicError{}},
      {503, %ExOctocat.Model.InlineResponse503{}}
    ])
  end

  @doc """
  Get information about a SARIF upload
  Gets information about a SARIF upload, including the status and the URL of the analysis that was uploaded so that you can retrieve details of the analysis. For more information, see \"[Get a code scanning analysis for a repository](/rest/reference/code-scanning#get-a-code-scanning-analysis-for-a-repository).\" You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` read permission to use this endpoint.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - owner (String.t):
  - repo (String.t):
  - sarif_id (String.t): The SARIF ID obtained after uploading.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, ExOctocat.Model.CodeScanningSarifsStatus.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec code_scanning_get_sarif(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, nil}
          | {:ok, ExOctocat.Model.CodeScanningSarifsStatus.t()}
          | {:ok, ExOctocat.Model.BasicError.t()}
          | {:ok, ExOctocat.Model.InlineResponse503.t()}
          | {:error, Tesla.Env.t()}
  def code_scanning_get_sarif(connection, owner, repo, sarif_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/repos/#{owner}/#{repo}/code-scanning/sarifs/#{sarif_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %ExOctocat.Model.CodeScanningSarifsStatus{}},
      {403, %ExOctocat.Model.BasicError{}},
      {404, false},
      {503, %ExOctocat.Model.InlineResponse503{}}
    ])
  end

  @doc """
  List instances of a code scanning alert
  Lists all instances of the specified code scanning alert. You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` read permission to use this endpoint.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - owner (String.t):
  - repo (String.t):
  - alert_number (integer()): The number that identifies an alert. You can find this at the end of the URL for a code scanning alert within GitHub, and in the `number` field in the response from the `GET /repos/{owner}/{repo}/code-scanning/alerts` operation.
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Page number of the results to fetch.
    - :per_page (integer()): Results per page (max 100)
    - :ref (String.t): The Git reference for the results you want to list. The `ref` for a branch can be formatted either as `refs/heads/<branch name>` or simply `<branch name>`. To reference a pull request use `refs/pull/<number>/merge`.
  ## Returns

  {:ok, [%CodeScanningAlertInstance{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec code_scanning_list_alert_instances(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          integer(),
          keyword()
        ) ::
          {:ok, list(ExOctocat.Model.CodeScanningAlertInstance.t())}
          | {:ok, ExOctocat.Model.BasicError.t()}
          | {:ok, ExOctocat.Model.InlineResponse503.t()}
          | {:error, Tesla.Env.t()}
  def code_scanning_list_alert_instances(connection, owner, repo, alert_number, opts \\ []) do
    optional_params = %{
      :page => :query,
      :per_page => :query,
      :ref => :query
    }

    %{}
    |> method(:get)
    |> url("/repos/#{owner}/#{repo}/code-scanning/alerts/#{alert_number}/instances")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%ExOctocat.Model.CodeScanningAlertInstance{}]},
      {403, %ExOctocat.Model.BasicError{}},
      {404, %ExOctocat.Model.BasicError{}},
      {503, %ExOctocat.Model.InlineResponse503{}}
    ])
  end

  @doc """
  List code scanning alerts for a repository
  Lists all open code scanning alerts for the default branch (usually `main` or `master`). You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` read permission to use this endpoint.  The response includes a `most_recent_instance` object. This provides details of the most recent instance of this alert for the default branch or for the specified Git reference (if you used `ref` in the request).

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - owner (String.t):
  - repo (String.t):
  - opts (KeywordList): [optional] Optional parameters
    - :tool_name (String.t): The name of a code scanning tool. Only results by this tool will be listed. You can specify the tool by using either `tool_name` or `tool_guid`, but not both.
    - :tool_guid (String.t): The GUID of a code scanning tool. Only results by this tool will be listed. Note that some code scanning tools may not include a GUID in their analysis data. You can specify the tool by using either `tool_guid` or `tool_name`, but not both.
    - :page (integer()): Page number of the results to fetch.
    - :per_page (integer()): Results per page (max 100)
    - :ref (String.t): The Git reference for the results you want to list. The `ref` for a branch can be formatted either as `refs/heads/<branch name>` or simply `<branch name>`. To reference a pull request use `refs/pull/<number>/merge`.
    - :state (ExOctocat.Model.CodeScanningAlertState.t): Set to `open`, `fixed`, or `dismissed` to list code scanning alerts in a specific state.
  ## Returns

  {:ok, [%CodeScanningAlertItems{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec code_scanning_list_alerts_for_repo(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, list(ExOctocat.Model.CodeScanningAlertItems.t())}
          | {:ok, ExOctocat.Model.BasicError.t()}
          | {:ok, ExOctocat.Model.InlineResponse503.t()}
          | {:error, Tesla.Env.t()}
  def code_scanning_list_alerts_for_repo(connection, owner, repo, opts \\ []) do
    optional_params = %{
      :tool_name => :query,
      :tool_guid => :query,
      :page => :query,
      :per_page => :query,
      :ref => :query,
      :state => :query
    }

    %{}
    |> method(:get)
    |> url("/repos/#{owner}/#{repo}/code-scanning/alerts")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%ExOctocat.Model.CodeScanningAlertItems{}]},
      {403, %ExOctocat.Model.BasicError{}},
      {404, %ExOctocat.Model.BasicError{}},
      {503, %ExOctocat.Model.InlineResponse503{}}
    ])
  end

  @doc """
  List code scanning analyses for a repository
  Lists the details of all code scanning analyses for a repository, starting with the most recent. The response is paginated and you can use the `page` and `per_page` parameters to list the analyses you're interested in. By default 30 analyses are listed per page.  The `rules_count` field in the response give the number of rules that were run in the analysis. For very old analyses this data is not available, and `0` is returned in this field.  You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` read permission to use this endpoint.  **Deprecation notice**: The `tool_name` field is deprecated and will, in future, not be included in the response for this endpoint. The example response reflects this change. The tool name can now be found inside the `tool` field.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - owner (String.t):
  - repo (String.t):
  - opts (KeywordList): [optional] Optional parameters
    - :tool_name (String.t): The name of a code scanning tool. Only results by this tool will be listed. You can specify the tool by using either `tool_name` or `tool_guid`, but not both.
    - :tool_guid (String.t): The GUID of a code scanning tool. Only results by this tool will be listed. Note that some code scanning tools may not include a GUID in their analysis data. You can specify the tool by using either `tool_guid` or `tool_name`, but not both.
    - :page (integer()): Page number of the results to fetch.
    - :per_page (integer()): Results per page (max 100)
    - :ref (String.t): The Git reference for the analyses you want to list. The `ref` for a branch can be formatted either as `refs/heads/<branch name>` or simply `<branch name>`. To reference a pull request use `refs/pull/<number>/merge`.
    - :sarif_id (String.t): Filter analyses belonging to the same SARIF upload.
  ## Returns

  {:ok, [%CodeScanningAnalysis{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec code_scanning_list_recent_analyses(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, list(ExOctocat.Model.CodeScanningAnalysis.t())}
          | {:ok, ExOctocat.Model.BasicError.t()}
          | {:ok, ExOctocat.Model.InlineResponse503.t()}
          | {:error, Tesla.Env.t()}
  def code_scanning_list_recent_analyses(connection, owner, repo, opts \\ []) do
    optional_params = %{
      :tool_name => :query,
      :tool_guid => :query,
      :page => :query,
      :per_page => :query,
      :ref => :query,
      :sarif_id => :query
    }

    %{}
    |> method(:get)
    |> url("/repos/#{owner}/#{repo}/code-scanning/analyses")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%ExOctocat.Model.CodeScanningAnalysis{}]},
      {403, %ExOctocat.Model.BasicError{}},
      {404, %ExOctocat.Model.BasicError{}},
      {503, %ExOctocat.Model.InlineResponse503{}}
    ])
  end

  @doc """
  Update a code scanning alert
  Updates the status of a single code scanning alert. You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` write permission to use this endpoint.

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - owner (String.t):
  - repo (String.t):
  - alert_number (integer()): The number that identifies an alert. You can find this at the end of the URL for a code scanning alert within GitHub, and in the `number` field in the response from the `GET /repos/{owner}/{repo}/code-scanning/alerts` operation.
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject71):
  ## Returns

  {:ok, ExOctocat.Model.CodeScanningAlert.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec code_scanning_update_alert(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          integer(),
          keyword()
        ) ::
          {:ok, ExOctocat.Model.CodeScanningAlert.t()}
          | {:ok, ExOctocat.Model.BasicError.t()}
          | {:ok, ExOctocat.Model.InlineResponse503.t()}
          | {:error, Tesla.Env.t()}
  def code_scanning_update_alert(connection, owner, repo, alert_number, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:patch)
    |> url("/repos/#{owner}/#{repo}/code-scanning/alerts/#{alert_number}")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %ExOctocat.Model.CodeScanningAlert{}},
      {403, %ExOctocat.Model.BasicError{}},
      {404, %ExOctocat.Model.BasicError{}},
      {503, %ExOctocat.Model.InlineResponse503{}}
    ])
  end

  @doc """
  Upload an analysis as SARIF data
  Uploads SARIF data containing the results of a code scanning analysis to make the results available in a repository. You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` write permission to use this endpoint.  There are two places where you can upload code scanning results.  - If you upload to a pull request, for example `--ref refs/pull/42/merge` or `--ref refs/pull/42/head`, then the results appear as alerts in a pull request check. For more information, see \"[Triaging code scanning alerts in pull requests](/code-security/secure-coding/triaging-code-scanning-alerts-in-pull-requests).\"  - If you upload to a branch, for example `--ref refs/heads/my-branch`, then the results appear in the **Security** tab for your repository. For more information, see \"[Managing code scanning alerts for your repository](/code-security/secure-coding/managing-code-scanning-alerts-for-your-repository#viewing-the-alerts-for-a-repository).\"  You must compress the SARIF-formatted analysis data that you want to upload, using `gzip`, and then encode it as a Base64 format string. For example:  ``` gzip -c analysis-data.sarif | base64 -w0 ```  SARIF upload supports a maximum of 5000 results per analysis run. Any results over this limit are ignored and any SARIF uploads with more than 25,000 results are rejected. Typically, but not necessarily, a SARIF file contains a single run of a single tool. If a code scanning tool generates too many results, you should update the analysis configuration to run only the most important rules or queries.  The `202 Accepted`, response includes an `id` value. You can use this ID to check the status of the upload by using this for the `/sarifs/{sarif_id}` endpoint. For more information, see \"[Get information about a SARIF upload](/rest/reference/code-scanning#get-information-about-a-sarif-upload).\"

  ## Parameters

  - connection (ExOctocat.Connection): Connection to server
  - owner (String.t):
  - repo (String.t):
  - opts (KeywordList): [optional] Optional parameters
    - :body (InlineObject72):
  ## Returns

  {:ok, ExOctocat.Model.CodeScanningSarifsReceipt.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec code_scanning_upload_sarif(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil}
          | {:ok, ExOctocat.Model.BasicError.t()}
          | {:ok, ExOctocat.Model.InlineResponse503.t()}
          | {:ok, ExOctocat.Model.CodeScanningSarifsReceipt.t()}
          | {:error, Tesla.Env.t()}
  def code_scanning_upload_sarif(connection, owner, repo, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:post)
    |> url("/repos/#{owner}/#{repo}/code-scanning/sarifs")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {202, %ExOctocat.Model.CodeScanningSarifsReceipt{}},
      {400, false},
      {403, %ExOctocat.Model.BasicError{}},
      {404, %ExOctocat.Model.BasicError{}},
      {413, false},
      {503, %ExOctocat.Model.InlineResponse503{}}
    ])
  end
end
