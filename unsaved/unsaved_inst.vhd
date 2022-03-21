	component unsaved is
		port (
			clk_clk                        : in  std_logic                    := 'X'; -- clk
			leds_pio_export                : out std_logic_vector(7 downto 0);        -- export
			reset_reset_n                  : in  std_logic                    := 'X'; -- reset_n
			uart_0_external_connection_rxd : in  std_logic                    := 'X'; -- rxd
			uart_0_external_connection_txd : out std_logic                            -- txd
		);
	end component unsaved;

	u0 : component unsaved
		port map (
			clk_clk                        => CONNECTED_TO_clk_clk,                        --                        clk.clk
			leds_pio_export                => CONNECTED_TO_leds_pio_export,                --                   leds_pio.export
			reset_reset_n                  => CONNECTED_TO_reset_reset_n,                  --                      reset.reset_n
			uart_0_external_connection_rxd => CONNECTED_TO_uart_0_external_connection_rxd, -- uart_0_external_connection.rxd
			uart_0_external_connection_txd => CONNECTED_TO_uart_0_external_connection_txd  --                           .txd
		);

