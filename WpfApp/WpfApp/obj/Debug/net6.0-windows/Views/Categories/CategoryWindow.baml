   M S B A M L   `   `   `  ����A  =WpfApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:WpfApp.Views.CategoriesWpfApp.Views.Categories  5   	   9!clr-namespace:WpfApp.Views.CommonWpfApp.Views.Common  5   	   ,    &WpfApp.Views.Categories.CategoryWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:WpfApp.Views.Categories     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   *uc!clr-namespace:WpfApp.Views.Common  5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   -   5        $��categoryWindow��5   	     � Title$   ��5   	   $	��700��6   $
��1200��6      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � WindowStyle$ ThreeDBorderWindow=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *StartTimerCommand+	   CommandParameter	 6K   �� 
 �� ElementName$
 categoryWindow��5        5   
   $ Unloaded��6   . 5         6$   �� *StopTimerCommand+	 6I   �� $
 categoryWindow��5      .��5!      �  � RowDefinitions 5"   
   �� 5#      $
��auto �6   �� 5$      .+�5&   
   � $��0��6   .+�5'      &    WpfApp.Views.Common.ControlBarUC  5(      � 5)   
   $��Center=�6   $��1��6,   $
��0 10q�69   .+�5*      �  � 	Resources 5+       �� 
TargetType��%+   '�       �� 5,      " �6   5-      5.       5/      �� 50      $
��101* �6$   �� 51      $
��auto �6$   $��73.061��62   �� 52      $
��476* �6$   .+�54      � $��50��6   $��Center=�6#   .+�55      �� $��Category List��6    $��36(�65   $
��Bold)�6C   $��2��6U   6k   �� 56      $��Bottom=�6    $��2��6;   $��0,0,0,2q�6O   57      � 58      $��1��6   $��0,18,0,3q�6$   .+�59      �� $��70��5<      $
��Left=�5=      $	��Top=�5>      $	��NEW��5?       " MaterialDesignFlatDarkBgButton#��[ 5@      
���   � � ToolTip$	 New��5B      ��5:      �� *NewCategoryWindowCommand+��5;      �� $
 categoryWindow��5B      5C      � 5D      $��1��6   $��	0,61,0,15q�6$   $��2��67   .+�5E      �� -   5        $��CategoryList��5E      ��63   �� *
Categories+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� �� SelectedItem 6�   ��  �� Path$ SelectedItem�$ TwoWay=� �� View 5F      �� 5G      .P�5H   "   �� $��ID��61    �� DisplayMemberBinding 6=   �� *Id+�� 5I   "   $
��Name��61    6?   �� *Name+�� 5J   "   $��Description��61    6F   �� *Description+�� 5K   "   $
��Note��61    6?   �� *Note+�� 5L   "   $
��Code��61    6?   �� *Code+�� 5M   "   $
��Icon��61    6?   �� *Icon+�� 5N   "   $��Action��61    �� CellTemplate 5O   &   �� 5P   *   .R�5Q   .   ��  �� Orientation$ 
Horizontal=�69   .+�5R   2   �� $��UPDATE��5S   5      MaterialDesignFlatDarkButton#��[ 5T   5   $ Update��5W   5   ��5U   5   �� $
 CategoryList��$, &DataContext.UpdateCategoryPopupCommand���5V   5   �� 5W   5   �� 5X   2   	 �� X1$ 0��67   	 �� X2$ 0��6>   	 �� Y1$ 0��6E   	 �� Y2$ 20��6L   
���   �$	��0.5��6c   $��5,0,10,0q�6y   �� 5Y   2   $��DELETE��5\   5   #��[ 5^   5   $ Delete��5_   5   ��5Z   5   �� $
 CategoryList��$$ DataContext.DeletePopupCommand���5[   5   �� {�5]   5   �� *	IsDeleted+5_   5   5`   /   5a   +   5c   #   5d      5f      5g      5h      5i      5j      5k      