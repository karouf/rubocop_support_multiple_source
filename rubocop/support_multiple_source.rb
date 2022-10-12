# frozen_string_literal: true

module RuboCop
  module Cop
    class SupportMultipleSource < RuboCop::Cop::Base
      def self.support_multiple_source?
        true
      end

      def on_send(node)
        puts "@test not assigned yet" unless @test
        @test ||= true 
      end
    end
  end
end
