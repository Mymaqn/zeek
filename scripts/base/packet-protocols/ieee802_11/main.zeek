module PacketAnalyzer::IEEE802_11;

event zeek_init() &priority=20
	{
	PacketAnalyzer::register_packet_analyzer(PacketAnalyzer::ANALYZER_IEEE802_11, 0x0800, PacketAnalyzer::ANALYZER_IP);
	PacketAnalyzer::register_packet_analyzer(PacketAnalyzer::ANALYZER_IEEE802_11, 0x86DD, PacketAnalyzer::ANALYZER_IP);
	PacketAnalyzer::register_packet_analyzer(PacketAnalyzer::ANALYZER_IEEE802_11, 0x0806, PacketAnalyzer::ANALYZER_ARP);
	PacketAnalyzer::register_packet_analyzer(PacketAnalyzer::ANALYZER_IEEE802_11, 0x8035, PacketAnalyzer::ANALYZER_ARP);

	# IPv4 and IPv6 tunnels
	PacketAnalyzer::register_packet_analyzer(PacketAnalyzer::ANALYZER_IEEE802_11, 0x0004, PacketAnalyzer::ANALYZER_IPTUNNEL);
	PacketAnalyzer::register_packet_analyzer(PacketAnalyzer::ANALYZER_IEEE802_11, 0x0029, PacketAnalyzer::ANALYZER_IPTUNNEL);
	}