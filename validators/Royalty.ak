
module Royalty

use std::auth
use std::transaction

pub const ROYALTY_PERCENTAGE = 1  // 1% royalty

pub fn distribute_royalty(
    creator_address: Address, 
    sale_amount: Int
) -> TxOut {
    let royalty_amount = sale_amount * ROYALTY_PERCENTAGE / 100
    transaction::new_txout(
        creator_address, 
        royalty_amount
    )
}
