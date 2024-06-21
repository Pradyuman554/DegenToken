# DegenToken
DegenToken.sol is a solidity program which allows us to simulate a game reward and a redeeming shop type game. I have created a new token called **DegenToken** which is awarded to users as reward of playing/achievements in games/platforms.

### Execution
The project was compiled in **Remix IDE**, deployed on the **Avalanche Fuji C-Chain**, using **Metamask** as our Wallet.
<br>
It is an implementation of the **ERC20 token** provided by **openzeppelin** and already many built in functions like **transfer, balanceOf, _mint, etc.**.
<br>
I have added some functions to this contract which were our requirements for the project.
<br>
Functions include:
1. mintDGN: Mint the degenToken to some address mentioned
2. burnDGN: Burn extra degenToken from the address
3. redeemDGN: A simulation wherein some DegenTokens are burned in order for us to redeem our rewards from the shop
4. getBalance: Returns the balance of the current account
5. shopContent: Simply displays the available items in the shop

### Deployment:
The project has been deployed on the Avalanche Fuji C-Chain.
