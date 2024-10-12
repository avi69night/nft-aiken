
module Listing

type Listing = {
    nft_id: String,
    seller: Address,
    price: Int,
}

pub fn create_listing(
    nft_id: String, 
    price: Int, 
    seller: Address
) -> Listing {
    Listing { nft_id, price, seller }
}

pub fn cancel_listing(listing_id: String) -> Bool {
    // Logic to find and cancel listing
    true  // Assume successful cancellation
}
