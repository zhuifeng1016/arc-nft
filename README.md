# ArcNFT: A USDC-Powered Developer Reference on Arc

A reference implementation demonstrating how Circle's infrastructure (USDC, CCTP, Developer Platform) enables a complete smart contract deployment workflow on Arc Testnet — from account provisioning to smart contract deployment and proof-of-concept asset minting, all using stablecoin-native tooling.

## Why Circle

Arc's USDC-native design removes the traditional friction of managing multiple gas assets. By combining USDC, CCTP, and Circle's developer tooling, developers can move value across chains and deploy applications using a consistent stablecoin-based workflow. This project demonstrates that experience through a minimal, reproducible implementation.

## Features

- ✅ Smart contract deployed on Arc Testnet (Chain ID 5042002)
- ✅ All gas fees paid in USDC (Arc's native gas)
- ✅ USDC bridged via CCTP (Sepolia → Arc)
- ✅ On-chain swaps verified (USDC ↔ EURC)
- ✅ Liquidity provision tested (USDC/EURC LP)
- ✅ ZNS domain (.ARC) registered
- ✅ 22+ verified transactions

## Tech Stack

| Component | Detail |
|-----------|--------|
| Blockchain | Arc Testnet (5042002) |
| Contract | Solidity 0.8.x |
| Gas Token | USDC |
| IDE | Remix |
| Bridge | CCTP (Sepolia → Arc) |
| DEX | XyloNet |

## Contract

| Item | Value |
|------|-------|
| Network | Arc Testnet |
| Address | `0xeb407ED91D9417Df8a1648088DF7790d8D689092` |
| Explorer | https://testnet.arcscan.app/address/0xeb407ED91D9417Df8a1648088DF7790d8D689092 |
| Wallet (22+ txns) | https://testnet.arcscan.app/address/0xBcA647eD0feD6fAF8527918B0B20A65Fc1633E7f |

> Public repository includes: Solidity source code, ABI, deployment guide, and architecture diagram.

## Deployment Steps

### Prerequisites
1. Circle Developer Account (https://console.circle.com)
2. Circle Testnet API Key
3. Arc Testnet added to wallet (Chain ID: 5042002, RPC: https://rpc.testnet.arc.network)
4. Remix IDE (https://remix.ethereum.org)

### Steps
1. Get testnet USDC from Circle Faucet (https://faucet.circle.com)
2. Bridge USDC from Sepolia to Arc via CCTP bridge (https://bridge.arc.network)
3. Open Remix IDE, paste `contracts/ArcNFT.sol`
4. Compile with Solidity 0.8.0+
5. Deploy to Arc Testnet (Injected Provider)
6. Constructor args: name="ArcNFT", symbol="ANFT"
7. Call `mint(address)` to mint tokens

### Verification
```
Deployed at: 0xeb407ED91D9417Df8a1648088DF7790d8D689092
Chain ID: 5042002
RPC: https://rpc.testnet.arc.network
Explorer: https://testnet.arcscan.app
```

## Roadmap

| Phase | Deliverable | Status |
|-------|-------------|--------|
| Phase 1 | Public repo + documentation + architecture diagram | ✅ Completed |
| Phase 2 | ERC-721 standard upgrade (OpenZeppelin) + on-chain metadata | Planned — Publish ERC-721 implementation and migration guide |
| Phase 3 | Batch mint + automated deployment scripts | Planned — Release Hardhat scripts and CLI tooling |
| Phase 4 | Circle Nanopayments API integration for paid minting | Planned — Demonstrate USDC micropayment-gated minting |
| Phase 5 | Web frontend + developer tutorial | Planned — Release public demo and onboarding guide |

## License

MIT
