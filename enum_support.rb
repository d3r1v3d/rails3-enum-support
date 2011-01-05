module EnumSupport
    def enum(name, values)
        const_name = name.to_s.pluralize.upcase
        self.class_eval "
            #{const_name} = %w{#{values.join(' ')}}.map{ |val| val.to_sym }
            validates :#{name}, :presence => true, 
                                :inclusion => {:in => #{const_name}, :message => self.bad_enum_message(#{const_name})}
            def #{name}
                read_attribute(:#{name}).to_sym
            end
            def #{name}=(value)
                write_attribute :#{name}, value.to_s
            end            
        "
    end

    protected

    def bad_enum_message(enum)
        "is not in the set (#{enum.join(', ')})"
    end
end
