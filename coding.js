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

//# Explanation: https://gist.github.com/bpas247/e177a772b293025e5324219d231cf32c

// Github related snippets:

//# How to merge unrelated histories
//# Explanation: https://www.educative.io/edpresso/the-fatal-refusing-to-merge-unrelated-histories-git-error