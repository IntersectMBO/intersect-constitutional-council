
# Summary

The Intersect Constitutional Council votes the Plomin hard fork action to be constitutional.

# Rationale Statement

The proposal is a hard fork governance action. It is a proposal to hard fork to Protocol Major Version 10 and Minor Version 0 named the “Plomin” hard fork. Its intent is for all 7 governance actions in CIP-1694 to be enabled, and it will affect the withdrawal of staking rewards by allowing it only after delegation to a DRep (including the pre-defined abstain/no-confidence options).

The hard fork should only be valid after INTERIM-01 of having had sufficient time for DReps to register and campaign, at least 18 epochs and and it needs to pass the HARDFORK-XX guardrails in particular HARDFORK-04 “At least 85% of stake pools by active stake should have upgraded to a Cardano node version that is capable of processing the rules associated with the new protocol version.”

As the Intersect Constitutional Council understands the facts during the governance action proposal period a new node version (10.1.4) has been introduced that is meant to mitigate a risk of a potential DoS attack following the hard fork according to the release notes.

**These facts raises a principle question if the HARDFORK-04 of at least 85% of stake pools should be upgrade requires a node version that does not introduce a security risk in the network after the hard fork.**

The language of the guardrail in HARDFORK-04 itself is silent on this, it simply says that the node version is capable of processing the rules associated with the new protocol version.

The most relevant article in the Interim Constitution is the article 3 section 6 paragraph 3 that highlights the requirement of sufficient technical review and scrutiny mandated by the Cardano Blockchain Guardrails to ensure that the governance actions does not endanger the security, functionality or performance of the Cardano Blockchain. Here we see that the Guardrails are intended to protect against security issues as one of their functions. This is also highlighted in the introduction to the guardrails “To implement Cardano Blockchain on-chain governance pursuant to CIP-1694, it is necessary to establish sensible guardrails that will enable the Cardano Blockchain to continue to operate in a secure and sustainable way.” And that they are intended to “(...)  guide the choice of sensible parameter settings and avoid potential problems with security, performance or functionality. “ In short while the wording itself in the HARDFORK-04 is of little guidance the description of the guardrails highlights its role to enable safety of the protocol and in Intersect Constitution Councils opinion this should include that a node version that if not upgraded to before a hard fork that would introduce a security risk should not be counted for in the 85% number for stake pools.

**In conclusion the Intersect Constitution Council believes that the 85% number for node upgrades should only include nodes that are from a security standpoint safe to hard fork into (in this case currently only version 10.1.4).**

During the Interim phase the community is in a bootstrap phase for DReps expressed in the INTERIM-01 rule reflecting the intent in CIP-1694 of such a bootstrapping phase that also has provisions before a subsequent hard fork can be ratified.

According to Adastats per 20. January 2025 721 DReps have registered and 92003 delegators has delegated 4.77 Billion Ada that is now live for voting power of the DReps. Source: https://adastat.net/dreps

**A question raised is if a sufficient number of DReps have registered and campaigned and a sufficient number of Ada holders have chosen their initial voting delegation. The time requirement in INTERIM-01 has been fulfilled but the question is this guardrail covers more than the time requirement and also covers the actual number of DReps and ada holders to cover the intent of the bootstrapping phase in CIP-1694. It also raises the question of who are to judge what is sufficient.**

The wording itself suggest it is only a timing component as it starts with “to provide sufficient time (..)” however the wording of “at least” could open up for a subjective component to how long this time period should be and that the number of DReps and Ada holders is a relevant criteria in such a subjective consideration. Again if one goes to the intent of the guardrails it is clear that they should ensure the security, performance and functionality of the Cardano Blockchain and since this hard fork enables DRep voting functionality then article 3 section 6 paragraph 3 requirements for sufficient technical review and scrutiny is also of relevance. This the “at least” segment could be viewed as a requirement that if not sufficient technical review or scrutiny has been possible then more time could be extended. The question then becomes who are the relevant actors to do this sufficient review when it comes to the governance readiness?

In the Intersect Constitution Council opinion both the Council members has an independent responsibility as a layman in terms of technical scrutiny if something is obviously endangering the security, functionality or performance of the Cardano Blockchain. However a main source of readiness should come from expert organs who have access and time to track data in terms of readiness. For this hard fork the Hard Fork Working Group of Intersect is of relevance. It has members from the Civics committee and it has members who are technical experts and have been part of previous hard forks. The group has a risk document and has judged risks to be acceptable in terms of the number of DRep participants. Based on this the Intersect Constitution Council believe both the time period has passed for sufficient time and that there has been no strong objections that more time is required.

**In conclusion sufficient time has elapsed for the INTERIM-01 requirements and the Intersect Constitution Council believes that the current organ to give an expert opinion on this is the Hard Fork Working Group of Intersect.**

With sufficient time elapsed the main question before the Intersect Constitution Council is if the 85% threshold in Harfork-01 is met. The 85% threshold is a should and not a must rule, and was put in place for reasons such as making sure sufficient pools follow the new protocol to avoid creating a chain fork where a significant stake supports two chains. In this particular case the Intersect Constitution Council also believes the security implications of the vulnerability discovered and fixed in node version 10.1.4 should be of relevance to the threshold. Having been briefed and consulted with the Security Council the Intersect Constitution Council believes the 85% threshold is sufficient and if met the HARDFORK-01 guardrail should not block the Plomin hard fork.

Based on the current readiness reported by the Intersect Hard Fork Working Group (source: https://cardanoupgrades.docs.intersectmbo.org/plomin-upgrade/chang-upgrade-2-readiness) 86% of blocks where produced with block protocol version 10.2 (this indicates a 10.1.4 version node version used to produce blocks as it reports as 10.2) per the 20th of January 2025.

This protocol version fulfills the requirements in HARDFORK-01-03 as the major version goes from 9 to 10 while the minor version of the protocol will be 0, and the threshold in HARDFORK-04 is fulfilled by these data points and additional briefings by the Security Council. HARDFORK-05-08 are met given that no new protocol parameters where introduced or depreciated and no new plutus version is introduce as the plutus primitives was included as part of Plutus v3 as stated in the governance action itself. Also Plutus costs was covered by the previous governance protocol parameter update action b2a591ac219ce6dcca5847e0248015209c7cb0436aa6bd6863d0c1f152a60bc5#0 that is enacted.

The next question is if any of the formal requirements for the governance action itself in article 3 section 6 are not met. The proposal is in a standardized and legible format and it has sufficient rationale. The question is if the governance action has sufficient technical review and scrutiny as mandated by the Cardano Blockchain Guardrails to ensure that the governance action does not endanger the security, functionality or performance of the Cardano Blockchain.

The governance action was recommended by the Intersect’s Hard Fork Working Group on 10th december 2024 and ratified by Intersect’s Technical Steering Committee on 11th december 2024 and a readiness report has continuously been published on the status of readiness for the hard fork as mentioned previously in this rationale. Also benchmarking has been done on version 10.1.4 such as https://updates.cardano.intersectmbo.org/reports/2025-01-performance-10.1.4 and they suggest no significant difference in performance between node version 10.1.4 and node version 10.1.2/10.1.3 accordion to the Hard Fork Working Group. The Intersect Constitution Council believes this is a sufficient technical review and scrutiny for the hard fork Governance action.

A last general test the Intersect Constitutional Council should cover in this rationale is if the hard fork readiness indicates any failure in the functionality of the Cardano Blockchain if we hard fork with current readiness levels. An example of this could be if we did not have a ready and functional full node wallet for the Cardano Blockchain to fully verify the integrity of the ledger to the end user.

As per 20th January 2025 it is reported on the readiness page of the Hard Fork Working Group that 55% of exchanges (32 in number) are ready for the hard fork with 61.26% of liquidity ready. Major tooling and libraries, indexes and higher level tooling all rapport readiness for the hard fork while multiple wallet providers does the same including Hardware wallet providers and Full Node and CLI wallets. A large number of DApps has also reported readiness.  In short overall ecosystem readiness seems to indicate no critical loss of functionality by going into this hard fork.

Based on this the Intersect Constitution Council believes that the hard fork guardrails for the Plomin hard fork are met and that the governance action is constitutional.

**Conclusion: The guardrails of the hard fork are met and the hard fork is constitutional.**

# Precedent Discussion

Cardano has a long history of hard forks without interruption to the blockchain through the hard fork Combinator technology that was first proven from Byron to Shelley hard fork in July 2020 and as an example the Goguen hard fork in September 2021. In all of these hard forks metrics where gathered in terms of ecosystem readiness and if it was safe to hard fork. This is a long tradition Cardano has in terms of ensuring that it is safe for the blockchain to transition and upgrade its technology and is reflected in its constitutional guardrail related to hard forks.

# Counterargument Discussion



# Conclusion

The Plomin Hard Fork to Protocol version 10 0b19476e40bbbb5e1e8ce153523762e2b6859e7ecacbaf06eae0ee6a447e79b9#0 is constitutional.

# Internal Vote

- Constitutional: 7
- Unconstitutional: 0
- Abstain: 0
- Did Not Vote: 2

# References



# Authors


