module Hoodwinkd::Views
    def menu
        div.menu! do
            self << %{<a href="/">hornswaggl.d</a> | <a href="/onslaught/">onslaught</a> | <a href="http://wasteland.hobix.com">wasteland</a> | <a href="http://___._/">___._</a>}
        end
    end
end
