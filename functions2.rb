def sum(*var)
    case var.length
        when 2
            if ( var[0].is_a?(Integer) && var[1].is_a?(Integer) )
                puts "int + int = #{var[0] + var[1]}"
            elsif ( var[0].is_a?(Integer) && var[1].is_a?(Float) )
                puts "int + float = #{var[0] + var[1]}"
            elsif ( var[0].is_a?(Float) && var[1].is_a?(Integer) )
                puts "float + int = #{var[0] + var[1]}"
            else
                puts "float + float = #{var[0] + var[1]}"
            end
        when 3
            if ( var[0].is_a?(Integer) && var[1].is_a?(Integer) && var[2].is_a?(Integer) )
                puts "int + int + int = #{ var[0] + var[1] + var[2] }"
            elsif ( var[0].is_a?(Integer) && var[1].is_a?(Integer) && var[2].is_a?(Float) )
                puts "int + int + float = #{ var[0] + var[1] + var[2] }"
            elsif ( var[0].is_a?(Integer) && var[1].is_a?(Float) && var[2].is_a?(Integer) )
                puts "int + float + int = #{ var[0] + var[1] + var[2] }"
            elsif ( var[0].is_a?(Float) && var[1].is_a?(Integer) && var[2].is_a?(Float) )
                puts "float + int + float = #{ var[0] + var[1] + var[2] }"
            elsif ( var[0].is_a?(Float) && var[1].is_a?(Float) && var[2].is_a?(Float) )
                puts "float + float + float = #{ var[0] + var[1] + var[2] }"
            end
        else
            puts "Only 1 value: #{var}"
    end
end

sum(1)
sum(1.45)
sum("ds")
puts


sum(1,2)
sum(1,2.5)
sum(1.5,2)
sum(1.5,2.5)
puts


sum(1,2,3)
sum(1,2,3.55)
sum(1,2.60,3)
sum(1.12,2,3.96)
sum(1.12,2.51,3.96)
























