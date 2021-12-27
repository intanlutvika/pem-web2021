var dataBarang = [ "Pensil", "Bolpen", "Buku"];

function showBarang()
{
	var listBarang = document.getElementById("list-barang");
	// clear list barang
	listBarang.innerHTML = "";

	// cetak semua barang
	for (let i=0; i<dataBarang.length; i++)
	{
		var btnEdit = "<a href='#' onclick='editBarang("+i+")'>Edit</a> ";
		var btnDelete = "<a href='#' onclick='deleteBarang("+i+")'>Delete</a>";

		listBarang.innerHTML += "<li>" + dataBarang[i] + " ["+btnEdit + " | " + btnDelete +"]</li>";
	}
}

function addBarang ()
{
	var input = document.querySelector ("input [name=barang]");
	dataBarang.push(input.value);
	showBarang();
}

function editBarang ()
{
	var newBarang = prompt ("Nama baru", dataBarang[id]);
	dataBarang[id] = newBarang;
	showBarang();

}

function deleteBarang ()
{
	dataBarang.splice(id, 1);
	showBarang();
}

showBarang();