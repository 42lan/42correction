# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    git_check.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amalsago <amalsago@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/13 11:33:51 by amalsago          #+#    #+#              #
#    Updated: 2019/11/13 11:39:03 by amalsago         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

git shortlog -s
git ls-files | xargs -n1 git blame --line-porcelain | sed -n 's/^author //p' | sort -f | uniq -ic | sort -nr
