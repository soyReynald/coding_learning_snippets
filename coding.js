// React snippets:

//# How to update an state when trying to get it as an Event:
// 1st way
useEffect(() => {
    console.log(state);
}, [state]);

const handleEvent = e => {
    setState(e.target.value);
}
// 2nd way
const handleEvent = e => {
    setState(e.target.value);
}

console.log(state);