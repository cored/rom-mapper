# encoding: utf-8

module ROM
  class Mapper
    class Loader

      # Loader class that calls initialize
      #
      # @private
      class ObjectBuilder < self

        # @api private
        def call(tuple)
          model.new(attributes(tuple))
        end

        private

        # @api private
        def attributes(tuple)
          Hash[header.map { |attribute| [attribute.name, tuple[attribute.name]] }]
        end

      end # ObjectBuilder

    end # Loader
  end # Mapper
end # ROM
