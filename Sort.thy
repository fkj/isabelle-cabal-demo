theory Sort
  imports
    Main
    "HOL-Library.Multiset"
    "HOL-Library.Code_Target_Nat"
begin

fun sort_list :: \<open>'a :: linorder list \<Rightarrow> 'a list\<close> where
  \<open>sort_list [] = []\<close>
| \<open>sort_list (x # xs) = sort_list [y \<leftarrow> xs. \<not> x \<le> y] @ [x] @ sort_list [y \<leftarrow> xs. x \<le> y]\<close>

lemma sort_permutes [simp]: \<open>mset (sort_list xs) = mset xs\<close>
  by (induction xs rule: sort_list.induct) auto

lemma sort_set_permutes [simp]: \<open>set (sort_list xs) = set xs\<close>
  by (induction xs rule: sort_list.induct) auto

lemma sort_sorts: \<open>sorted (sort_list xs)\<close>
  by (induction xs rule: sort_list.induct) (auto simp add: sorted_append)

export_code sort_list in Haskell (string_classes)

end