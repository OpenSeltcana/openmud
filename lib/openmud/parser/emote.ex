defmodule Universa.Parser.Emote do
  alias Universa.Event
  alias Universa.Parser

  use Parser

  def parse("emote " <> message, entity) do
    location = Universa.Component.Physical.take(entity).location

    events = [
      %Event{
        type: :broadcast,
        data: %{
          target: location,
          event: %Event{
            type: :terminal,
            source: entity.uuid,
            data: %{
              type: :output,
              template: "parser/emote.eex",
              metadata: %{
                from: entity.uuid,
                message: message
              }
            }
          }
        }
      }
    ]

    {:stop, events}
  end
end
