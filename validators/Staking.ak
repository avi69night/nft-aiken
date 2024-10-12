
module Staking

type StakedNFT = {
    nft_id: String,
    owner: Address,
    staked_at: Timestamp,
}

pub fn stake_nft(nft_id: String, owner: Address) -> StakedNFT {
    StakedNFT { nft_id, owner, staked_at: Timestamp::now() }
}

pub fn calculate_rewards(nft: StakedNFT, reward_rate: Int) -> Int {
    let duration = Timestamp::now() - nft.staked_at
    duration * reward_rate  // Reward proportional to time staked
}
