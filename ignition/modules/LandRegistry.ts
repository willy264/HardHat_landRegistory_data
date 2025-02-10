// This setup uses Hardhat Ignition to manage smart contract deployments.
// Learn more about it at https://hardhat.org/ignition

import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const LandRegistryModule = buildModule("LandRegistryModule", (m) => {

  const simples = m.contract("LandRegistry") // variable targeting my smartcontract

  return { simples };
});

export default LandRegistryModule;
``