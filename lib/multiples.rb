def is_multiple_of_3_or_5?(current_number)
    if current_number == 0
        return false
    elsif current_number %3 == 0 || current_number %5 == 0 
        return true
    else 
        return false 
    end
end

def sum_of_3_or_5_multiples(final_number)

  if (final_number.is_a? Integer) && final_number >= 0
        final_sum = 0 #cette variable est la somme finale qui sera retournée. Ici on l'initialise à zéro
        final_number = final_number - 1
        current_number = 0
        (0..final_number).each do 

        # Ici, lance une boucle qui va de zéro au chiffre "final_number" EXCLU (car on est sur du strictement inférieur)
        # cette boucle indente à chaque tour une variable (par exemple "current_number") qui vaudra 0 puis 1 puis 2 ... etc.

                if is_multiple_of_3_or_5?(current_number)
                    final_sum += current_number
                    current_number += 1
                # si la réponse est "true", alors je rajoute la valeur de "current_number" à la variable "final_sum".
                else
                    current_number += 1
                end
            end
        return final_sum #on retourne la variable qui contient la somme du tout

    else 
        return "Yo ! Je ne prends que les entiers naturels. TG"
    end
end

