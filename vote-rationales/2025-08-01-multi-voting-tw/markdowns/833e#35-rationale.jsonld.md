
# Summary

The Intersect Constitutional Council votes the treasury withdrawal governance action **“8ad3d454f3496a35cb0d07b0fd32f687f66338b7d60e787fc0a22939e5d8833e#35”** to be **constitutional**.

# Rationale Statement

During the assessment of the 39 treasury withdrawal governance actions it became clear that a template has been used, with identical sections repeated across all 39 while each individual proposal contained their own vendor/project-specific sections within. It was therefore identified that the majority of the constitutional alignment was satisfied by the templated sections and while each individual proposal has been assessed for completeness, the Council reiterates its role is to assess the constitutionality of proposals and not to pass any subjective judgement on the individual vendors/projects represented in each proposal.

The series of 39 treasury withdrawal governance actions have been submitted by Intersect, on behalf of multiple vendors, following the approval of the budget info action (“e14de8d9dc4f4ddf3fe9250a8a926e20f10e99b86bd0610b77d7a054981591ee#0”). With regards to the standard constitutionality checks that this Council applies to all governance action types, all proposals meet the required standards of Article III Section 5. They all follow a standardized and legible format, including a URL and hash of their off-chain contents and provide a title, abstract, reasoning and relevant supporting materials. Their contents are identical to the final off-chain version of the proposals, as confirmed by the matching metadata hashes. Key elements repeated across all proposals that this Council highlighted for their constitutionality include; provided smart contract and withdrawal stake address details, valid and verifiable author signature, outlined budget management processes, on-chain withdrawal proposal amount matching that of the proposal metadata and the on-chain / off-chain content hashes matching.

Following the process taken for the first treasury withdrawal action to be submitted on-chain, the additional checks to verify a match between the withdrawal amounts put forth in the metadata and those submitted on-chain have been carried out. This has been confirmed by cross-referencing the metadata with the currently live on-chain proposal, queried via the command-line, and further supports the constitutional requirement of Article III Section 5 for the proposal to be “open, transparent and protected from undue influence or manipulation”. For clarity, the total sum of all treasury withdrawal proposals in this series of 39 proposals is 275,031,507 ada. The budget info action that these treasury withdrawals are linked to outlined a budget for 275,269,340 ada, leaving 237,833 ada remaining from the previously approved Intersect budget. This can be attributed to 2 proposals lowering their requested amounts and notes can be found within their respective proposals. Cardano Ecosystem Pavilions at Exhibitions lowered their request by 229,833 ada (https://gov.tools/governance_actions/8ad3d454f3496a35cb0d07b0fd32f687f66338b7d60e787fc0a22939e5d8833e#29) while Input Output Research lowered their request by 8,000 ada (https://gov.tools/governance_actions/8ad3d454f3496a35cb0d07b0fd32f687f66338b7d60e787fc0a22939e5d8833e#32), accounting for the total 237,833 ada difference between budget info action and the combined treasury withdrawal requests.

As with the previous treasury withdrawal action to be submitted on-chain the majority of the constitutionality focus centred around Article IV. The series of 39 treasury withdrawal actions are linked to a previously approved on-chain budget info action (Article IV Section 1) and each specifies a process for overseeing the use of funds from Cardano Blockchain treasury withdrawals including designating one or more administrators who shall be responsible for oversight (Article IV Section 2). The combined total of all 39 treasury withdrawal proposals is 275,031,507 ada and after taking into account the only other approved treasury withdrawal of 1.5 million ada, even should they all pass they would not cause the Cardano Blockchain treasury balance to violate the currently applicable net change limit of 350 million ada, previously established by the approval of governance action “9b62b3c632f329016a968ac25211825bb4f84b12461121c7da3aa11df92370f9#0”. The treasury withdrawal actions are also made pursuant to a budget that is in effect and that has not been deemed unconstitutional by the ICC (Article IV Section 3).

The proposals outline in detail the intended management structure for the withdrawal funds, among which includes a Treasury Reserve Smart Contract (TRSC) and Project-Specific Smart Contracts (PSSC), a stake address has also been provided (see https://cardanoscan.io/stakekey/f18583857e4a12ffe1e6f641a1785a0f2f036c565cfbe6ff9db8e5a469). 

The Constitution mandates that any treasury withdrawal funds must not be staked with an SPO and must be delegated to the predefined auto-abstain voting option (Article IV Section 5). Following checks using Cardano blockchain explorers it can be confirmed that, as of 23 July 2025, the provided treasury withdrawal stake address is not delegated to an SPO and is delegated to the predefined auto-abstain voting option.

Lastly, the proposals satisfy the treasury guardrails TREASURY-02a, TREASURY-03a and TREASURY-04a in Appendix I Section 3. That is to say, they are made pursuant to a previously approved budget, do not exceed the net change limit and are denominated in ada.

# Precedent Discussion

Following the previously approved and enacted on-chain treasury withdrawal action, the first in the history of the Cardano Blockchain, the Council has applied the same additional checks that we applied then, mainly that of assessing Article IV and ensuring continuity with the previously approved budget info action that they are connected to.

The additional “safety check” has also been carried out by cross-referencing the author signatures for each of the proposals with those disclosed by Intersect in their recent blog post (https://www.intersectmbo.org/news/treasury-withdrawal-security-verifying-governance-action-authors). While not necessarily a constitutional requirement, it does provide a useful safeguard against an imposter attempting to submit another proposal against the same budget info action.

# Counterargument Discussion

As stated in previous vote rationales, the Intersect Constitutional Council continues to assert its’ independence from Intersect as an institution. This was particularly demonstrated when the Council voted a previous Intersect proposal as unconstitutional due to a perceived procedural error. Therefore, although the 39 treasury withdrawal proposals have been submitted by Intersect, this Council is comfortable enough in its independence to still be able to vote on these proposals without undue influence.

# Conclusion

The Intersect Constitutional Council considers this treasury withdrawal action to be Constitutional.

# Internal Vote

- Constitutional: 7
- Unconstitutional: 0
- Abstain: 0
- Did Not Vote: 0
- Against Voting: 0

# References

- [Cardano Blockchain Ecosystem Constitution](ipfs://bafkreiazhhawe7sjwuthcfgl3mmv2swec7sukvclu3oli7qdyz4uhhuvmy)
- [Cardano Blockchain Ecosystem Budget - 275M ada Administered by Intersect info action metadata](ipfs://bafkreibeajhkes7bxjlkghkingcgltqcwazz2ya5oknveqwt5nont7tg6u)
- [Details of all successful proposals from Ekklesia (CSV)](ipfs://bafybeicwrop4q7xvnyjdd5drumbe56sqtm5lbe2ul3c262zt4hgguzdycm)
- [Currently applicable NCL of 350M ada](ipfs://bafkreiaqno22swabd3kcqt2awtgwaucdzaagacoemxwadm3exrchhnfite)
- [Provided Stake Address (checked for SPO/DRep delegation)](https://cardanoscan.io/stakekey/f18583857e4a12ffe1e6f641a1785a0f2f036c565cfbe6ff9db8e5a469)

# Authors

[
  {
    "name": "Intersect Constitutional Council"
  }
]

