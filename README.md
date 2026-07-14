# ArcNFT: USDC-Powered Smart Contract Reference on Arc

An end-to-end reference implementation demonstrating how Circle's infrastructure (USDC, CCTP, Wallet) enables smart contract deployment and stablecoin-native asset issuance on Arc Testnet.

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

| Phase | Deliverable |
|-------|-------------|
| Phase 1 | Public repo + documentation (current) |
| Phase 2 | ERC-721 standard upgrade (OpenZeppelin) |
| Phase 3 | Batch mint + deployment scripts |
| Phase 4 | Circle Nanopayments API integration |
| Phase 5 | Web frontend + developer tutorial |

## License

MIT
