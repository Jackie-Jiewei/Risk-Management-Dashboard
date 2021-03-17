function [var, es] = hHistoricalVaRES(returns, level)
    returns = sort(returns);
    index = uint8((1 - level) * length(returns));
    var = returns(index);
    es = mean(returns(1:index));
end