#[contract]
mod Hellocommit {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[external]
    fn wETH(from: ContractAddress, value: felt252) {}


    #[internal]
    fn Say_ETH(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
