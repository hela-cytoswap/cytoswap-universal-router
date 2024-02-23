// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.17;

struct CytoswapParameters {
    address v2Factory;
    address v3Factory;
    bytes32 pairInitCodeHash;
    bytes32 poolInitCodeHash;
}

contract CytoswapImmutables {
    /// @dev The address of CytoswapV2Factory
    address internal immutable CYTOSWAP_V2_FACTORY;

    /// @dev The CytoswapV2Pair initcodehash
    bytes32 internal immutable CYTOSWAP_V2_PAIR_INIT_CODE_HASH;

    /// @dev The address of CytoswapV3Factory
    address internal immutable CYTOSWAP_V3_FACTORY;

    /// @dev The CytoswapV3Pool initcodehash
    bytes32 internal immutable CYTOSWAP_V3_POOL_INIT_CODE_HASH;

    constructor(CytoswapParameters memory params) {
        CYTOSWAP_V2_FACTORY = params.v2Factory;
        CYTOSWAP_V2_PAIR_INIT_CODE_HASH = params.pairInitCodeHash;
        CYTOSWAP_V3_FACTORY = params.v3Factory;
        CYTOSWAP_V3_POOL_INIT_CODE_HASH = params.poolInitCodeHash;
    }
}
