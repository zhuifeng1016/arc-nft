# ArcNFT Deployment Guide

## Pre-flight

```bash
# 1. Get testnet USDC from Circle Faucet
# Visit: https://faucet.circle.com
# Connect wallet, claim 20 USDC on Arc Testnet

# 2. Bridge USDC (if on Sepolia)
# Visit: https://bridge.arc.network
# Source: Ethereum Sepolia → Destination: Arc Testnet
# Amount: sufficient USDC for gas + deployment
```

## Deploy via Remix

1. Open https://remix.ethereum.org
2. Create new file: `ArcNFT.sol`
3. Paste contract from `contracts/ArcNFT.sol`
4. Select compiler: Solidity 0.8.0+
5. Compile
6. Deploy tab → Environment: Injected Provider (MetaMask)
7. Select Arc Testnet network (Chain ID 5042002)
8. Constructor args: `"ArcNFT", "ANFT"`
9. Confirm transaction (gas paid in USDC)

## Deploy via Hardhat (future)

```bash
npx hardhat run scripts/deploy.js --network arc
```

## Verify

```bash
# Contract
https://testnet.arcscan.app/address/0xeb407ED91D9417Df8a1648088DF7790d8D689092

# Wallet activity (22+ txns)
https://testnet.arcscan.app/address/0xBcA647eD0feD6fAF8527918B0B20A65Fc1633E7f
```

## Related

- Arc Docs: https://docs.arc.network
- Circle Developer: https://console.circle.com
- Circle CCTP: https://www.circle.com/en/cross-chain-transfer-protocol
