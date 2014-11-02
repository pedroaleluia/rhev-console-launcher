class VirtualMachine
  attr_accessor :id, :name, :description, :host_uuid, :state, :port, :secure_port, :address, :proxy, :smartcard_enabled

  def initialize(vm)
    @id = vm['id']
    @name = vm['name']
    @description = vm['description']
    @address = vm['display']['address'] unless vm['display'].nil?
    @port = vm['display']['port'] unless vm['display'].nil?
    @secure_port = vm['display']['secure_port'] unless vm['display'].nil?
    @state = vm['status']['state'] unless vm['status'].nil?
    @host_uuid = vm['host']['id'] unless vm['host'].nil?
    @proxy = vm['proxy']
    @smartcard_enabled = vm['smartcard_enabled']
  end
end

