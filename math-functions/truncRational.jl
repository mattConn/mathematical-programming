function truncRational(x, n)

	#=
	This function will truncate a rational number x after n number of digits.

	It first shifts the number left via multiplication by base to power of the number of digits
	we want to truncate up to.

		x_b * b^n

	This will expose the rest of the number's digits for removal, via floor function and subraction,
	as they are now in the integral part of the number.

		x - floor(x)
		This leaves behind a rational number < 1, or the part after the decimal point.

	Then we shift the number back to the right by the same number of digits as in our first operation,
	putting these digits back in their original location (giving them their original value).

		x_b / b^n
		The inverse of our fist operation.

	Finally, we now have a number that will line up with the digits we want to chop off the original number.
	Subtracting this number from the original will complete the truncation.
	=#

	a = x * 10^n # shift rational number left n digits
	a -= floor(a) # remove new integral part of rational number
	a /= 10^n # shift number back n digits

	return x -= a # subtract from x

end
