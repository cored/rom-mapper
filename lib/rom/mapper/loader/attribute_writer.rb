# encoding: utf-8

module ROM
  class Mapper
    class Loader

      # Special type of Allocator loader which uses attribute writers
      #
      # @private
      class AttributeWriter < Allocator

        # @api private
        def call(tuple)
          allocate { |attribute, object|
            object.public_send("#{attribute.name}=", tuple[attribute.name])
          }
        end

      end # AttributeWriter

    end # Loader
  end # Mapper
end # ROM
