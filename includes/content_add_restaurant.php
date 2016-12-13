<form action="database/action_add_restaurant.php" method="post" enctype="multipart/form-data">
    <input type="hidden" name="idOwner" value="1">

	<br>
    <label>Name: </label> <input type="text" name="name" required="required">
    <br><br>
    <label>Description: </label><textarea name="description" required="required" rows="3" cols="30"></textarea>
	<br><br>
    <label>Location: </label> <input type="text" name="location">

	<br><br>
    <label>Image: </label> <input type="file" name="image">

    <br><br>
    <label>Price: </label>
    
    <select name="price">
        <option value="free">Free</option>
        <option value="cheap">Cheap</option>
        <option value="average">Average</option>
        <option value="expensive">Expensive</option>
    </select>

    <br><br>
    <input type="submit" value="Add">
</form>