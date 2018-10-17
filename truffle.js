module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*" // Match any network id
    },
    rinkeby: {
      host: "localhost", // Connect to geth on the specified
      port: 8545,
      from: "0xd3e749ee39Ab1B50CD96850fb64EdaC683413d4B", // default address to use for any transaction Truffle makes during migrations
      network_id: 4,
      gas: 470000 // Gas limit used for deploys
    }
  }
};
