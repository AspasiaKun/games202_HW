function getRotationPrecomputeL(precompute_L, rotationMatrix){
	let rotMat = mat4Matrix2mathMatrix(rotationMatrix)
	let rotateSHMat1 = computeSquareMatrix_3by3(rotMat)
	let rotateSHMat2 = computeSquareMatrix_5by5(rotMat)
	let ret = []
	for(i = 0; i < 3; i++)
	{
		let colors = math.clone(precompute_L[i])

		let sh1n1 = colors[1]
		let sh10 = colors[2]
		let sh1p1 = colors[3]

		let sh2n2 = colors[4]
		let sh2n1 = colors[5]
		let sh20 = colors[6]
		let sh2p1 = colors[7]
		let sh2p2 = colors[8]

		let rotatedSH1 = math.multiply(rotateSHMat1, [sh1n1, sh10, sh1p1])
		let rotatedSH2 = math.multiply(rotateSHMat2, [sh2n2, sh2n1, sh20, sh2p1, sh2p2])

		colors[1] = rotatedSH1._data[0]
		colors[2] = rotatedSH1._data[1]
		colors[3] = rotatedSH1._data[2]

		colors[4] = rotatedSH2._data[0]
		colors[5] = rotatedSH2._data[1]
		colors[6] = rotatedSH2._data[2]
		colors[7] = rotatedSH2._data[3]
		colors[8] = rotatedSH2._data[4]

		ret.push([colors[0], colors[1], colors[2], 
				  colors[3], colors[4], colors[5],
				  colors[6], colors[7], colors[8]])
	}
	return ret;

}

function computeSquareMatrix_3by3(rotationMatrix){ // 计算方阵SA(-1) 3*3 
	// 1、pick ni - {ni}
	let n1 = [1, 0, 0, 0]; let n2 = [0, 0, 1, 0]; let n3 = [0, 1, 0, 0];

	// 2、{P(ni)} - A  A_inverse
	let n1_sh = SHEval(n1[0], n1[1], n1[2], 3)
	let n2_sh = SHEval(n2[0], n2[1], n2[2], 3)
	let n3_sh = SHEval(n3[0], n3[1], n3[2], 3)

	let A = math.matrix(
	[
		[n1_sh[1], n2_sh[1], n3_sh[1]], 
		[n1_sh[2], n2_sh[2], n3_sh[2]], 
		[n1_sh[3], n2_sh[3], n3_sh[3]], 
	]);

	let A_inverse = math.inv(A);

	// 3、用 R 旋转 ni - {R(ni)}
	let n1_r = math.multiply(rotationMatrix, n1);
	let n2_r = math.multiply(rotationMatrix, n2);
	let n3_r = math.multiply(rotationMatrix, n3);

	// 4、R(ni) SH投影 - S
	let n1_r_sh = SHEval(n1_r[0], n1_r[1], n1_r[2], 3)
	let n2_r_sh = SHEval(n2_r[0], n2_r[1], n2_r[2], 3)
	let n3_r_sh = SHEval(n3_r[0], n3_r[1], n3_r[2], 3)

	let S = math.matrix(
	[
		[n1_r_sh[1], n2_r_sh[1], n3_r_sh[1]], 
		[n1_r_sh[2], n2_r_sh[2], n3_r_sh[2]], 
		[n1_r_sh[3], n2_r_sh[3], n3_r_sh[3]], 

	]);

	// 5、S*A_inverse
	return math.multiply(S, A_inverse)   

}

function computeSquareMatrix_5by5(rotationMatrix){ // 计算方阵SA(-1) 5*5

	// 1、pick ni - {ni}
	let k = 1 / math.sqrt(2);
	let n1 = [1, 0, 0, 0]; let n2 = [0, 0, 1, 0]; let n3 = [k, k, 0, 0]; 
	let n4 = [k, 0, k, 0]; let n5 = [0, k, k, 0];

	// 2、{P(ni)} - A  A_inverse
	let n1_sh = SHEval(n1[0], n1[1], n1[2], 3)
	let n2_sh = SHEval(n2[0], n2[1], n2[2], 3)
	let n3_sh = SHEval(n3[0], n3[1], n3[2], 3)
	let n4_sh = SHEval(n4[0], n4[1], n4[2], 3)
	let n5_sh = SHEval(n5[0], n5[1], n5[2], 3)

	let A = math.matrix(
	[
		[n1_sh[4], n2_sh[4], n3_sh[4], n4_sh[4], n5_sh[4]], 
		[n1_sh[5], n2_sh[5], n3_sh[5], n4_sh[5], n5_sh[5]], 
		[n1_sh[6], n2_sh[6], n3_sh[6], n4_sh[6], n5_sh[6]], 
		[n1_sh[7], n2_sh[7], n3_sh[7], n4_sh[7], n5_sh[7]], 
		[n1_sh[8], n2_sh[8], n3_sh[8], n4_sh[8], n5_sh[8]], 
	]);
	
	let A_inverse = math.inv(A);

	// 3、用 R 旋转 ni - {R(ni)}
	let n1_r = math.multiply(rotationMatrix, n1);
	let n2_r = math.multiply(rotationMatrix, n2);
	let n3_r = math.multiply(rotationMatrix, n3);
	let n4_r = math.multiply(rotationMatrix, n4);
	let n5_r = math.multiply(rotationMatrix, n5);

	// 4、R(ni) SH投影 - S
	let n1_r_sh = SHEval(n1_r[0], n1_r[1], n1_r[2], 3)
	let n2_r_sh = SHEval(n2_r[0], n2_r[1], n2_r[2], 3)
	let n3_r_sh = SHEval(n3_r[0], n3_r[1], n3_r[2], 3)
	let n4_r_sh = SHEval(n4_r[0], n4_r[1], n4_r[2], 3)
	let n5_r_sh = SHEval(n5_r[0], n5_r[1], n5_r[2], 3)

	let S = math.matrix(
	[	
		[n1_r_sh[4], n2_r_sh[4], n3_r_sh[4], n4_r_sh[4], n5_r_sh[4]], 
		[n1_r_sh[5], n2_r_sh[5], n3_r_sh[5], n4_r_sh[5], n5_r_sh[5]], 
		[n1_r_sh[6], n2_r_sh[6], n3_r_sh[6], n4_r_sh[6], n5_r_sh[6]], 
		[n1_r_sh[7], n2_r_sh[7], n3_r_sh[7], n4_r_sh[7], n5_r_sh[7]], 
		[n1_r_sh[8], n2_r_sh[8], n3_r_sh[8], n4_r_sh[8], n5_r_sh[8]], 
	]);

	// 5、S*A_inverse
	return math.multiply(S, A_inverse)  

}

function mat4Matrix2mathMatrix(rotationMatrix){

	let mathMatrix = [];
	for(let i = 0; i < 4; i++){
		let r = [];
		for(let j = 0; j < 4; j++){
			r.push(rotationMatrix[i*4+j]);
		}
		mathMatrix.push(r);
	}
	// return math.matrix(mathMatrix)
	return math.transpose(mathMatrix)

}

function getMat3ValueFromRGB(precomputeL){

    let colorMat3 = [];
    for(var i = 0; i<3; i++){
        colorMat3[i] = mat3.fromValues( precomputeL[0][i], precomputeL[1][i], precomputeL[2][i],
										precomputeL[3][i], precomputeL[4][i], precomputeL[5][i],
										precomputeL[6][i], precomputeL[7][i], precomputeL[8][i] ); 
	}
    return colorMat3;
}