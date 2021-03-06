# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule ExOctocat.Model.WorkflowRun do
  @moduledoc """
  An invocation of a workflow
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :name,
    :node_id,
    :check_suite_id,
    :check_suite_node_id,
    :head_branch,
    :head_sha,
    :run_number,
    :event,
    :status,
    :conclusion,
    :workflow_id,
    :url,
    :html_url,
    :pull_requests,
    :created_at,
    :updated_at,
    :jobs_url,
    :logs_url,
    :check_suite_url,
    :artifacts_url,
    :cancel_url,
    :rerun_url,
    :workflow_url,
    :head_commit,
    :repository,
    :head_repository,
    :head_repository_id
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :name => String.t() | nil,
          :node_id => String.t(),
          :check_suite_id => integer() | nil,
          :check_suite_node_id => String.t() | nil,
          :head_branch => String.t() | nil,
          :head_sha => String.t(),
          :run_number => integer(),
          :event => String.t(),
          :status => String.t() | nil,
          :conclusion => String.t() | nil,
          :workflow_id => integer(),
          :url => String.t(),
          :html_url => String.t(),
          :pull_requests => [ExOctocat.Model.PullRequestMinimal.t()] | nil,
          :created_at => DateTime.t(),
          :updated_at => DateTime.t(),
          :jobs_url => String.t(),
          :logs_url => String.t(),
          :check_suite_url => String.t(),
          :artifacts_url => String.t(),
          :cancel_url => String.t(),
          :rerun_url => String.t(),
          :workflow_url => String.t(),
          :head_commit => SimpleCommit | nil,
          :repository => ExOctocat.Model.MinimalRepository.t(),
          :head_repository => ExOctocat.Model.MinimalRepository.t(),
          :head_repository_id => integer() | nil
        }
end

defimpl Poison.Decoder, for: ExOctocat.Model.WorkflowRun do
  import ExOctocat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:pull_requests, :list, ExOctocat.Model.PullRequestMinimal, options)
    |> deserialize(:head_commit, :struct, ExOctocat.Model.SimpleCommit, options)
    |> deserialize(:repository, :struct, ExOctocat.Model.MinimalRepository, options)
    |> deserialize(:head_repository, :struct, ExOctocat.Model.MinimalRepository, options)
  end
end
