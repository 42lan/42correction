# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    42_header_checker.sh                               :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amalsago <amalsago@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/26 20:17:26 by amalsago          #+#    #+#              #
#    Updated: 2019/10/26 20:18:47 by amalsago         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

grep -r --include \*.c "By:" $@ | awk '{print $3}' | sort | uniq
grep -r --include \*.c "Created:" $@ | awk '{print $6}' | sort | uniq
grep -r --include \*.c "Updated:" $@ | awk '{print $6}' | sort | uniq
