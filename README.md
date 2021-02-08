# Option Desk Risk Management Dashboard
The options market-making desk is in charge of trading various kinds of options in the front office. First, it’s a priority and necessity to capture the profit and loss(PNL) of your open positions accurately, quickly, and synchronously. The functionality to present the corresponding technical indicators, greeks, and implied volatility should also be implemented to ensure that the traders gather enough information to make trading decisions. Furthermore, a long horizon of performance based on specific strategies should be visualized in order to know how the portfolio performs historically. In addition to the performance analysis function, the dashboard must provide evaluation metrics with regard to picking a strategy and monitoring risks. Our team selects Value at Risk(VaR) and Expected Shortfall(ES) backtesting to implement this function, from which the abnormal signal would send alerts to traders when the portfolio has high risk exposures. Finally, the influence of presumed market movements shock test on the option price and portfolio value should be presented on the dashboard.\
Based on this analysis, our dashboard is composed of two tabs, using the Matlab container Tab Group, Performance Analysis tab, and Risk Management tab.  The Performance Analysis tab is further separated into two panels labeled as Positions and Performance. Similarly, the Risk Management tab comprises VaR and ES Backtesting panel and Risk Matrix panel. The introduction to the specific function and implementation of each part is dependent on this framework.
## Performance Analysis Tab - Positions Panel
This panel will provide the users a detailed view of their positions in all contracts. For each contract, users can see their total buys, total sells, net positions, greeks, PNL, and all the other indicators required to analyze options. All these indicators will update in real-time as the prices change. The traders then can capture as much information as possible to make the next decision.
## Performance Analysis Tab - Performance Panel
The left side of this panel accepts parameters and dropdown selections to print out the portfolio performance statistics. The users can change the portfolio type, portfolio time frame, and time scale of the display. The users can also choose to introduce transaction costs and reinvest or not in the check box to obtain final capital. The right side of the panel shows the graph of the PNL series, option price series, and projection of future price movements.
## Risk Management Tab - VaR and ES Backtesting Panel
The users can change the time period and VaR level(Ex. 0.95, 0.975, 0.99) of the simulation. The upper graph will show the movement of portfolio returns, VaR and ES. Another comparison is on the lower graph, which shows the difference between normal, historical, and EWMA backtesting. The lamp on the upper right of the panel will turn red when the risk metrics reaches a dangerous level at present.
## Risk Management Tab - Risk Matrix Panel
For a high-level view of options risk, the users can use the options risk matrix to see their risk position across multiple scenarios at once. The underlying scale and volatility scale text edit fields accept text numbers separated by commas to represent the percentage changes of the items. By selecting the risk metrics dropdown with multiple selections available, the users can see how these shocks would impact the risk level of their current positions in a landscape.    
![stack Overflow](http://lmsotfy.com/so.png)

