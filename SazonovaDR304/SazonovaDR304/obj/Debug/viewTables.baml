   M S B A M L   `   `   `  ����H  DSazonovaDR304, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:SazonovaDR304SazonovaDR304  5          SazonovaDR304.viewTables   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:SazonovaDR304     5        N� Title$  
viewTables��5	      .��5      � .+�5   
   �� -   5        $��TBSearch��5      $
��Left=�6"   $	��Top=�6=   $��	10,10,0,0q�6U   $	��150��6h   �� 5   
   -   5        $��ButtonSearch��5      $��
170,10,0,0q�6@   $
��Left=�6T   $	��Top=�6o   $��
Поиск��6�   �� 5   
   -   5        $��	ButtonAdd��5      $��Добавить��6:   $
��Left=�6M   $	��Top=�6h   $��
220,10,0,0q�6�   &   System.Windows.Controls.DataGrid  5   
   -   5        $��DGView��5   F      CanUserAddRows .     AutoGenerateColumns .  $
��Left=�6T   $	��Top=�6o   $��10,100,10,10q�6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        Surname��,  &System.Windows.Controls.DataGridColumn   Header$ Фамилия��5   6      
IsReadOnly .    
Visibility$ Hidden=�6u   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6Y   �� *	Surname+6u     5      -   5        Name��$ Имя��5   4    . $ Hidden=�6l    6S   �� *Name+6l     5      -   5        
Patronymic��$ Отчество��5   9    . $ Hidden=�6|    6]   �� *
Patronymic+6|     5      -   5        
Gender��$ Пол��5   5    . $ Hidden=�6o    6T   �� *Gender+6o     5      -	   5        Age��$ Возраст��5   2    . $ Hidden=�6m    6U   �� *Age+6m     5      -
   5        Subject��$ Предмет��5   6    . $ Hidden=�6Y    6m   �� *	Subject+  5      -   5        Mark��$ Оценка��5   3    . $ Hidden=�6U    6i   �� *Mark+  5      -   5        Date��$ Дата��5   3    . $ Hidden=�6S    6g   �� *Date+  5      -   5        Description��$# Описание оценки��5   :    . $ Hidden=�6e    6y   �� *Description+  5      -   5        SubjectName��$ Название��5   :    . $ Hidden=�6^    6r   �� *SubjectName+  5      -   5        	Hours��$ Кол-во часов��5   5    . $ Hidden=�6]    6q   �� *Hours+  5      -   5        type��$! Тип отчетности��5   3    . $ Hidden=�6]    6q   �� *type+4  .System.Windows.Controls.DataGridTemplateColumn  5      -   5        	ButtonDel��$ Hidden=�5   <      CellTemplate 5      �� 5       .R�5!      �� $��	ButtonDel��67   -   5        $��Удалить��5!   %   
	 J� Uid	 6`   �� *	IdStudent+

 � Tag
 6z   �� *	MarkNum+5"      5$        5%      -   5        ButtonChange��$ Hidden=�5%   ?    5&      �� 5'      .R�5(      �� $��ButtonChange��6%   -   5        $ ��Редактировать��5(   o   $
��Left=�6�   $	��Top=�6�   $��
290,10,0,0q�6�   	 6T   �� *	IdStudent+6�   5)      5+      5.      5/      50      