// Variable to hold your NFTs
let NFTS = [];

// Function to create an NFT and add it to the list
function mintNFT(name, artist, year, description) {
    const metadata = {
        name: name,
        artist: artist,
        year: year,
        description: description
    };
    NFTS.push(metadata);
}

// Function to print all NFTs
function listNFTs() {
    for (let i = 0; i < NFTS.length; i++) {
        console.log("NFT " + (i + 1) + ":");
        console.log("  Name: " + NFTS[i].name);
        console.log("  Artist: " + NFTS[i].artist);
        console.log("  Year: " + NFTS[i].year);
        console.log("  Description: " + NFTS[i].description);
    }
}

// Function to print the total number of NFTs
function getTotalSupply() {
    console.log("Total NFTs: " + NFTS.length);
}

// Mint some NFTs
mintNFT("CryptoPunk", "John Doe", 2023, "A unique CryptoPunk NFT");
mintNFT("ArtBlock", "Jane Smith", 2022, "An exclusive ArtBlock NFT");

// List all NFTs and print the total number
listNFTs();
getTotalSupply();