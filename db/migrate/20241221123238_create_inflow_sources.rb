class CreateInflowSources < ActiveRecord::Migration[7.0]
  def change
    create_table :inflow_sources, comment: '申込者の流入元マスターデータ' do |t|
      t.string :name, comment: '名称'

      t.timestamps
    end
  end
end
