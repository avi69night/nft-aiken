
module Auction

type Auction = {
    nft_id: String,
    seller: Address,
    highest_bid: Int,
    highest_bidder: Address,
    end_time: Timestamp,
}

pub fn start_auction(
    nft_id: String, 
    start_price: Int, 
    seller: Address, 
    end_time: Timestamp
) -> Auction {
    Auction { nft_id, seller, highest_bid: start_price, highest_bidder: seller, end_time }
}

pub fn place_bid(auction: Auction, bidder: Address, bid_amount: Int) -> Auction {
    assert bid_amount > auction.highest_bid
    { auction with highest_bid = bid_amount, highest_bidder = bidder }
}
