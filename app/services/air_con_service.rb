class AirConService
  SIGNALS = {
    heat: [904,787,904,787,904,787,904,787,904,787,904,48898,6881,3341,904,2537,904,787,904,787,904,787,904,2537,904,787,904,787,904,787,904,787,904,2537,904,787,904,2537,904,2537,904,787,904,2537,904,2537,904,2537,904,2537,904,2537,904,787,904,787,904,2537,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,2537,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,2537,904,2537,904,787,904,787,904,2537,904,787,904,787,904,787,904,65535,0,3834,6881,3341,904,2537,904,787,904,787,904,787,904,2537,904,787,904,787,904,787,904,787,904,2537,904,787,904,2537,904,2537,904,787,904,2537,904,2537,904,2537,904,2537,904,2537,904,787,904,787,904,2537,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,2537,904,787,904,787,904,2537,904,787,904,787,904,2537,904,787,904,787,904,2537,904,787,904,2537,904,787,904,2537,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,2537,904,2537,904,787,904,2537,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,2537,904,2537,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,2537,904,2537,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,2537,904,815,904,815,904,815,904,815,904,815,904,2537,904,2537,904,815,904,815,904,815,904,815,904,2537,904,815,904,815,904,2537,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,2537,904,2537,904,815,904,2537,904,2537,904,2537,904],
    heat_after_5_hours: [904,787,904,787,904,787,904,787,904,787,904,48898,6881,3341,904,2537,904,787,904,787,904,787,904,2537,904,787,904,787,904,787,904,787,904,2537,904,787,904,2537,904,2537,904,787,904,2537,904,2537,904,2537,904,2537,904,2537,904,787,904,787,904,2537,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,2537,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,2537,904,2537,904,815,904,815,904,2537,904,815,904,815,904,815,904,65535,0,3834,6881,3341,904,2537,904,815,904,815,904,815,904,2537,904,815,904,815,904,815,904,815,904,2537,904,815,904,2537,904,2537,904,815,904,2537,904,2537,904,2537,904,2537,904,2537,904,815,904,815,904,2537,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,2537,904,815,904,2537,904,815,904,815,904,2537,904,815,904,815,904,2537,904,815,904,2537,904,815,904,2537,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,2537,904,2537,904,815,904,2537,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,2537,904,2537,904,815,904,2537,904,815,904,815,904,2537,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,2537,904,2537,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,2537,904,815,904,815,904,815,904,815,904,815,904,2537,904,2537,904,815,904,815,904,815,904,815,904,2537,904,815,904,815,904,2537,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,2537,904,815,904,2537,904,815,904,815,904,815,904],
    cool: [904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 48898, 6881, 3341, 904, 2537, 904, 815, 904, 815, 904, 815, 904, 2537, 904, 815, 904, 815, 904, 815, 904, 815, 904, 2537, 904, 815, 904, 2537, 904, 2537, 904, 815, 904, 2537, 904, 2537, 904, 2537, 904, 2537, 904, 2537, 904, 815, 904, 815, 904, 2537, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 2537, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 2537, 904, 2537, 904, 815, 904, 815, 904, 2537, 904, 815, 904, 815, 904, 815, 904, 65535, 0, 3834, 6881, 3341, 904, 2537, 904, 815, 904, 815, 904, 815, 904, 2537, 904, 815, 904, 815, 904, 815, 904, 815, 904, 2537, 904, 815, 904, 2537, 904, 2537, 904, 815, 904, 2537, 904, 2537, 904, 2537, 904, 2537, 904, 2537, 904, 815, 904, 815, 904, 2537, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 2537, 904, 815, 904, 815, 904, 2537, 904, 2537, 904, 2537, 904, 815, 904, 815, 904, 815, 904, 815, 904, 2537, 904, 815, 904, 2537, 904, 2537, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 2537, 904, 815, 904, 2537, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 2537, 904, 2537, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 2537, 904, 2537, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 2537, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 2537, 904, 2537, 904, 815, 904, 815, 904, 815, 904, 815, 904, 2537, 904, 815, 904, 815, 904, 2537, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 2537, 904, 2537, 904, 815, 904, 2537, 904, 815, 904, 2537, 904, 2537, 904],
    cool_after_5_hours: [904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 48898, 6881, 3341, 904, 2537, 904, 787, 904, 787, 904, 787, 904, 2537, 904, 787, 904, 787, 904, 787, 904, 787, 904, 2537, 904, 787, 904, 2537, 904, 2537, 904, 787, 904, 2537, 904, 2537, 904, 2537, 904, 2537, 904, 2537, 904, 787, 904, 787, 904, 2537, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 2537, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 2537, 904, 2537, 904, 787, 904, 787, 904, 2537, 904, 787, 904, 787, 904, 787, 904, 65535, 0, 3834, 6881, 3341, 904, 2537, 904, 787, 904, 787, 904, 787, 904, 2537, 904, 787, 904, 787, 904, 787, 904, 787, 904, 2537, 904, 787, 904, 2537, 904, 2537, 904, 787, 904, 2537, 904, 2537, 904, 2537, 904, 2537, 904, 2537, 904, 787, 904, 787, 904, 2537, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 2537, 904, 787, 904, 2537, 904, 2537, 904, 2537, 904, 787, 904, 787, 904, 787, 904, 787, 904, 2537, 904, 787, 904, 2537, 904, 2537, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 2537, 904, 787, 904, 2537, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 2537, 904, 2537, 904, 787, 904, 2537, 904, 815, 904, 815, 904, 2537, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 2537, 904, 2537, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 787, 904, 2537, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 2537, 904, 2537, 904, 815, 904, 815, 904, 815, 904, 815, 904, 2537, 904, 815, 904, 815, 904, 2537, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 815, 904, 2537, 904, 2537, 904, 2537, 904, 2537, 904, 2537, 904, 2537, 904, 2537, 904],
    off: [904,787,904,787,904,787,904,787,904,787,904,48898,6881,3341,904,2537,904,815,904,815,904,815,904,2537,904,787,904,787,904,787,904,787,904,2537,904,787,904,2537,904,2537,904,787,904,2537,904,2537,904,2537,904,2537,904,2537,904,815,904,815,904,2537,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,2537,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,787,904,2537,904,2537,904,815,904,815,904,2537,904,815,904,815,904,815,904,65535,0,3834,6881,3341,904,2537,904,815,904,815,904,815,904,2537,904,815,904,815,904,815,904,815,904,2537,904,815,904,2537,904,2537,904,815,904,2537,904,2537,904,2537,904,2537,904,2537,904,815,904,815,904,2537,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,2537,904,815,904,815,904,2537,904,815,904,815,904,815,904,815,904,2537,904,815,904,2537,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,2537,904,2537,904,815,904,2537,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,2537,904,2537,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,2537,904,2537,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,2537,904,815,904,815,904,815,904,815,904,815,904,2537,904,2537,904,815,904,815,904,815,904,815,904,2537,904,815,904,815,904,2537,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,2537,904,815,904,815,904,2537,904,815,904,2537,904,2537,904,2537,904]
  }.freeze

  def self.respond_to_missing?(method, include_private)
    SIGNALS.has_key?(method.to_s.delete('!').to_sym)
  end

  def self.method_missing(method)
    if respond_to? method
      IRKitService.post_data(SIGNALS[method.to_s.delete('!').to_sym])
    else
      raise ArgumentError, "Invalid method #{method.to_s} triggered!"
    end
  end
end
