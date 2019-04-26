module Embulk
  module Output

    class GSheets < OutputPlugin
      Plugin.register_output("gsheets", self)

      def self.transaction(config, schema, count, &control)
        # configuration code:
        task = {
          "option1" => config.param("option1", :integer),                     # integer, required
          "option2" => config.param("option2", :string, default: "myvalue"),  # string, optional
          "option3" => config.param("option3", :string, default: nil),        # string, optional
        }

        # resumable output:
        # resume(task, schema, count, &control)

        # non-resumable output:
        task_reports = yield(task)
        next_config_diff = {}
        return next_config_diff
      end

      # def self.resume(task, schema, count, &control)
      #   task_reports = yield(task)
      #
      #   next_config_diff = {}
      #   return next_config_diff
      # end

      def init
        # initialization code:
        @option1 = task["option1"]
        @option2 = task["option2"]
        @option3 = task["option3"]
      end

      def close
      end

      def add(page)
        # output code:
        page.each do |record|
          #hash = Hash[schema.names.zip(record)]
        end
      end

      def finish
      end

      def abort
      end

      def commit
        task_report = {}
        return task_report
      end
    end

  end
end
