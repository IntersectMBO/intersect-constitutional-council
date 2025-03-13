
# Summary

The Intersect Constitutional Council votes that the treauryCut parameter change governance action 941502b0aa104c850d197923259444d2b57cab7af18b63143775465aaacc84f5#0 to be unconstitutional, with a vote split of 4-3.

# Rationale Statement

In order to clear up any ambiguity, it should be noted that the parameter in question has 3 different names depending on where it is found. It is tau in the Shelley Genesis file, treasury_growth_rate in db-sync and treasuryCut in cardano-cli and the Constitution Guardrails. This rationale will hereby reference treasuryCut throughout, although the Council raises the question of whether these multiple naming conventions should be standardised for proposals going forward in order to reduce ambiguity for less technically inclined ada holders looking to vote on such actions in the future (and also bring them in-line with the approach taken in the Constitution Appendix I Section 1.2).

The governance action proposes a change to the economic parameter treasuryCut, namely a reduction from 20% to 10%.

The two main objections from those voting unconstitutional were the absence of a recovery/reversion plan in the proposal and potentially misleading staking APY figures quoted as part of the mathematical justification of the proposal.

Appendix I Section 2.6 of the Constitution states that, “A specific recovery/reversion plan **must be** produced for each parameter change” and although it could be argued that we simply revert the treasuryCut parameter setting if required, the fact is that it voids a specific requirement laid out in the Constitution as part of the parameter change process. The wording does not differentiate between categories of parameter change, it says “each parameter change”. The Constitution outlines the governance process and procedures must be followed where mandated, to begin making allowances on the first governance action reviewed under this new Constitution could set a precedent that begins to undermine the governance process and the role of the Constitution going forward.

Secondly, the proposal assumes a baseline staking APY of 4%, proposing that the change could lead to an increase to 4.5% in its mathematical justification section. However, this can be considered to be misleading and as it fails to acknowledge that staking APY is now nearer an average of 2.8% when evaluating some of the most saturated pools over the past 6 months on AdaStat. This would result in a more realistic increase to around 3.15%. It has been argued that misleading numbers like this could violate Article III Section 5, where voting should be “protected from undue influence and manipulation.” It was considered that voters could be led to thinking that they are voting for higher staking returns that are in contrast to the reality.

It should be noted that those voting the proposal to be unconstitutional in its current form agreed that, should these two issues be rectified and the proposal resubmitted then they would most likely consider it to be Constitutional.

# Precedent Discussion

The Council has already once deemed a governance action with insufficient rationale to be deemed unconstitutional during their vote on the “K increase” Info Action (GA003). It has also previously voted on a Parameter Update, the  Plutus V3 Cost Model. Here, mismatching metadata hashes on the first submission resulted in an unconstitutional vote while the correction led to a Constitutional vote. The proposal that was voted Constitutional in this instance did include the mandated recovery/reversion plan.

# Counterargument Discussion

A wide range of arguments have been considered by the Council, as is evident by the close nature of the voting split. It was acknowledged that the proposal met many other Constitutional requirements. The rationale follows a standardised and legible format and contains a title, abstract, reason for the proposal and relevant supporting materials satisfying those elements of Article III Section 5. It also meets the requirements of the treasuryCut Guardrails (TC-01 through TC-05) as laid out in Appendix I Section 2.2.

It was also discussed that while treasuryCut is an economic parameter and not a technical or security parameter, the proposed change is not likely to have a detrimental impact on any particular blockchain security mechanism and should be evaluated by its impact on sustainability of the blockchain ecosystem instead. As a result, other discussions considered the Economic Parameters Report from the Cardano Foundation, along with historical discussions surrounding past Parameter Change Proposals (PCP), articles which were absent from the governance action supporting links section. This in turn raised the question of to what extent is the burden of proof on the proposer or the ICC to put forward such information?

# Conclusion

The close nature of the discussions surrounding this governance action proposal is reflected in the narrow vote split of 4-3 on the side of unconstitutional. The Council has discussed a wide range of topics but has ultimately tried to keep the final decision making process focussed solely on its remit of determining constitutionality when put up against the Constitution document and refrained from, as much as possible, diverging into evaluating broader economic impacts on the treasury. Members wishing to present those arguments are encouraged to do so in their capacity as DReps, rather than as members of the ICC.

# Internal Vote

- Constitutional: 3
- Unconstitutional: 4
- Abstain: 0
- Did Not Vote: 0

# References

- [Cardano Blockchain Ecosystem Constitution](ipfs://bafkreiazhhawe7sjwuthcfgl3mmv2swec7sukvclu3oli7qdyz4uhhuvmy)
- [treasuryCut Parameter Change Governance Action on GovTool](https://gov.tools/governance_actions/941502b0aa104c850d197923259444d2b57cab7af18b63143775465aaacc84f5#0)
- [Parameter Naming Conventions Clarification on X](https://x.com/therealdisasm/status/1893361564780032172)
- [Cardano Foundation Economic Parameters Report (see “Actual Reserves and Treasury Distribution”)](https://github.com/cardano-foundation/cardano-economic-parameter-insights/blob/main/whitepaper.md)
- [Past PCP discussion on parameter change](https://forum.cardano.org/t/pcp-treasurytax-tau-parameter-earncoinpool/123245/11)

# Authors

