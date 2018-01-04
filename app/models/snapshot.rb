class Snapshot < ApplicationRecord
	serialize :payload, Array
end
