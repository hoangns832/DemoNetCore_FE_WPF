   M S B A M L   `   `   `  ����A  =WpfApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:WpfAppWpfApp  5   	   9!clr-namespace:WpfApp.Views.CommonWpfApp.Views.Common  5   	       WpfApp.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:WpfApp     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   *uc!clr-namespace:WpfApp.Views.Common  5   	   -   5        $��
mainWindow��5   	     � Title$   ��5   	   $	��700��6   $
��1200��6      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � WindowStyle$ ThreeDBorderWindow=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *StartTimerCommand+	   CommandParameter	 6K   �� 
 �� ElementName$
 
mainWindow��5        5   
   $ Unloaded��6   . 5         6$   �� *StopTimerCommand+	 6I   �� $
 
mainWindow��5      .��5       �  � ColumnDefinitions 5!   
   �� 5"      $
��auto �6   �� 5#       � RowDefinitions 5%   
   �� 5&      $
��auto �6   �� 5'      �� 5(      $	��10* �6   .+�5*   
   &    WpfApp.Views.Common.ControlBarUC  $��0��6   $��2��6'   � 5+   
   $��1��6   $��0��6   $��2��6,   .+�5,      �� .+�5-      9� $��Center=�5.      $��	Dashboard��5/      .��50      �� $��Category��51      
���   �   MaterialDesignFlatDarkButton#��[ 55       � ToolTip$ Category��56      ��53      �� *OpenCategoryCommand+��54      �� $
 
mainWindow��56      57      58      59      � 5:   
   $��1��6   $��1��6   .+�5;      ]� $��False��6   .+�5<      �� $��Right=�5=      $��Sign In��5>      #��[ 5A      
������ 
���   ���5?      �� *SignInCommand+��5@      �� $
 
mainWindow��5C      5D      5E      5F      5G      