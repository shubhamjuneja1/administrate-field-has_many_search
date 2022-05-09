require "administrate/field/has_many"
require "rails"

module Administrate
  module Field
    class HasManySearch < Administrate::Field::HasMany
      class Engine < ::Rails::Engine
        initializer "administrate-field-has_many_search.add_assets" do |app|
          app.config.assets.precompile << "has_many_search.js" if app.config.respond_to? :assets
          Administrate::Engine.add_javascript "has_many_search.js" if defined?(Administrate::Engine)
        end
      end

      def associated_resource_options
        if data.blank?
          []
        else
          data.map do |d|
            [display_candidate_resource(d), d.id]
          end
        end
      end

      def associated_class
        super
      end
    end
  end
end
