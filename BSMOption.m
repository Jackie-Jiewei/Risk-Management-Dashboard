function [option_price] = BSMOption(PutCallFlag, S, T, K, r, sigma, Greek)
    if nargin < 7, Greek   = "Price";  end  % default: price
    if nargin < 6, error('Need more specific data'); end
    pd = makedist("normal");
    if PutCallFlag == "Call" && Greek ==  "Price" && T>0
        d1 = (log(S/K) + ((r+0.5*sigma^2)*T))/(sigma * sqrt(T));
        d2 = (log(S/K) + ((r-0.5*sigma^2)*T))/(sigma * sqrt(T));
        option_price = S * cdf(pd,d1) - K * exp(-r * T) * cdf(pd,d2);
    end
    if PutCallFlag == "Call" && Greek == "Price" && T == 0
        option_price = max(S-K,0);
    end
    if PutCallFlag == "Call" && Greek == "Delta" && T > 0
        d3 = (log(S/K) + ((r+0.5*sigma^2)*T))/(sigma * sqrt(T));
        option_price = cdf(pd,d3);
    end
    if PutCallFlag == "Call" && Greek == "Delta" && T == 0
        option_price = 0;
    end
    if PutCallFlag == "Put"
        option_price = -BSMOption("Call", S, T, K, r, -sigma, Greek);
    end
    if PutCallFlag == "Put" && Greek == "Price" && T == 0
        option_price = max(K-S,0);
    end
end