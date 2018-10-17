pragma solidity ^0.4.18;

contract conversionAction{

    event settingAction(int idx, int download, int signUp, int hits, int buy);

    int private contract_idx; // interact with RDB's contract indendifier

    struct Action {
      int download;
      int signUp;
      int hits;
      int buy;
    }

    Action action;

    constructor() public{}

    function setAction(int idx, int download, int signUp, int hits, int buy) public{
        emit settingAction(idx, download, signUp, hits, buy);
        contract_idx = idx;
        action = Action({
          download : download,
          signUp : signUp,
          hits : hits,
          buy : buy
        });
    }

    function getAction() public view returns (int download, int signUp, int hits, int buy) {
        return (action.download, action.signUp, action.hits, action.buy);
    }

}
