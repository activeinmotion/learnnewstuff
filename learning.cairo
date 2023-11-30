#[contract]
mod Hellostranger {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[external]
    fn Hello(from: ContractAddress, value: felt252) {}


    #[internal]
    fn Say_Hello(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
