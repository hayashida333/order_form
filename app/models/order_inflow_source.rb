# frozen_string_literal: true

class OrderInflowSource < ApplicationRecord
  belongs_to :order
  belongs_to :inflow_source
end
