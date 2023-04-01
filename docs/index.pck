GDPC                                                                            "   H   res://.import/adventurer_idle.png-db4df380f5fd2e0df8159c705c8c36ab.stex P�            Q����Y����N�/�H   res://.import/adventurer_jump.png-531b88b2f5ee4d88645f41dae6dbdc1f.stex @�      �      �+��Z�����<���-H   res://.import/adventurer_walk1.png-027dd0f4776161af9bc42f2024f7d5f9.stex�      �      �P]��D]�����"�H   res://.import/adventurer_walk2.png-1085cc285228fe830eaa719a3320bfac.stex��      �      ����w�=Я���ec�9<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex��      �      &�y���ڞu;>��.pD   res://.import/tile_0027.png-298edf5c633b08598d943392a629226a.stex    �      �       ���I���w��ȇ3 rSD   res://.import/tile_0151.png-6f2c32beb384fc10aadca9763db26f91.stex   ��      �       �|�-p�[n�Y�g'WD   res://.import/tile_0152.png-d414945b97265b1b7f4e8c97678f8135.stex   ��      �       �)˟G'�@k$<֯T�D   res://.import/tiles_packed.png-e30fee562516f758671a60fa06a30501.stex0�            ��Go�̆����P   res://Coin.gd.remap @            Vg|���.�W��w�&&�   res://Coin.gdc  �	      �       =�C'Qe,F��E���2&   res://Coin.tscn �
      �      0�Z��/J��}�$H   res://Key.gd.remap  `            IG����E<�ʞ<��~   res://Key.gdc   `      �       �Bv)��1�Um
NP   res://Key.tscn         �      Zx����M���U9-�   res://Player.gd.remap   �     !       ��0�F �qq��dX��   res://Player.gdc       �      ۱G����i�q���   res://Player.tscn   �      g      ���`��2%��J9ѧu   res://Terrain.tscn  `      �5      irw���TM�����8�   res://World.gd.remap�             ���z�����R�U�   res://World.gdc �Q      x      7rv2����;C�G   res://World.tscnpT      �2      d�u��u�_��J�@j�$   res://art/adventurer_idle.png.importp�      �      �@�Ħ��yin�P�r$   res://art/adventurer_jump.png.import�      �      s�2�g���� �7(   res://art/adventurer_walk1.png.import   ��      �      <a��sL��ë����((   res://art/adventurer_walk2.png.import   P�      �      f�կ_)�Wx��    res://art/tile_0027.png.import  ��      �      �@�p�Ѫ��ҧ[ ׃-    res://art/tile_0151.png.import   �      �      ���bOt������    res://art/tile_0152.png.import  p�      �      ��+WL�����W�`,$   res://art/tiles_packed.png.import   @�      �      ����p|~��Cy��z   res://default_env.tres   �      �       um�`�N��<*ỳ�8   res://icon.png  �     �      G1?��z�c��vN��   res://icon.png.import   �      �      ��fe��6�B��^ U�   res://project.binary�     }      ����GF�����        GDSC          	         ���ׄ�   ��������������������Ҷ��   ���϶���   ���������Ӷ�                                                    	   3YYYY0�  P�  QV�  �  PQ�  YY`         [gd_scene load_steps=6 format=2]

[ext_resource path="res://Coin.gd" type="Script" id=1]
[ext_resource path="res://art/tile_0151.png" type="Texture" id=2]
[ext_resource path="res://art/tile_0152.png" type="Texture" id=3]

[sub_resource type="SpriteFrames" id=1]
animations = [ {
"frames": [ ExtResource( 2 ) ],
"loop": true,
"name": "coin",
"speed": 5.0
}, {
"frames": [ ExtResource( 3 ) ],
"loop": true,
"name": "coinFlip",
"speed": 5.0
} ]

[sub_resource type="CircleShape2D" id=2]
radius = 24.0

[node name="Coin" type="Area2D"]
position = Vector2( 8, 7 )
script = ExtResource( 1 )
__meta__ = {
"_edit_group_": true
}

[node name="AnimatedSprite" type="AnimatedSprite" parent="."]
scale = Vector2( 4, 4 )
frames = SubResource( 1 )
animation = "coin"

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 2 )

[connection signal="body_entered" from="." to="." method="_on_Coin_body_entered"]
GDSC                   ���ׄ�   �������������������Ҷ���   ���϶���   ���������Ӷ�                                           3YYYY0�  P�  QV�  �  PQY`              [gd_scene load_steps=5 format=2]

[ext_resource path="res://Key.gd" type="Script" id=1]
[ext_resource path="res://art/tile_0027.png" type="Texture" id=2]

[sub_resource type="SpriteFrames" id=1]
animations = [ {
"frames": [ ExtResource( 2 ) ],
"loop": true,
"name": "key",
"speed": 5.0
} ]

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 36, 24 )

[node name="Key" type="Area2D"]
script = ExtResource( 1 )

[node name="AnimatedSprite" type="AnimatedSprite" parent="."]
scale = Vector2( 3, 3 )
frames = SubResource( 1 )
animation = "key"

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 2 )
__meta__ = {
"_edit_group_": true
}

[connection signal="body_entered" from="." to="." method="_on_Key_body_entered"]
     GDSC         .   �      ������������τ�   �������   ��������򶶶   ��������   ������������   ���涶��   ���۶���   �������������Ӷ�   �������϶���   ��������   �����϶�   ���϶���   �������Ŷ���   ����׶��   ����¶��   ����������������Ҷ��   ζ��   �����޶�   ���������������������Ҷ�   ����������Ķ   ϶��   ���������������Ŷ���   �������������Ӷ�   �涶   �     ,     �     �     �        idle      ui_right      walk             ui_left                 	   ui_select         jump                                                    	   $   
   %      ,      -      .      /      5      <      =      >      ?      F      O      `      g      m      n      w      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   3YY:�  Y:�  �  Y:�  �  Y:�  �  Y:�  �  YY5;�  W�  YY;�  �  T�	  YYYY0�
  PQV�  �  T�  P�  QYYYY0�  P�  QV�  &�  T�  P�  QV�  �  T�  �#  P�  T�  R�  R�  �  Q�  �  T�  P�  Q�  �  T�  �  �  �  '�  T�  P�	  QV�  �  T�  �#  P�  T�  R�  R�  �  Q�  �  T�  P�  Q�  �  T�  �
  �  �  (V�  �  T�  �#  P�  T�  R�  R�  �  Q�  �  T�  P�  Q�  �  &�  T�  P�  Q�  PQV�  �  T�  �  �  �  &�  PQV�  �  T�  P�  QYY0�  P�  QV�  �  �  T�  �  �  �  �  �  P�  R�  T�  Q�  Y`      [gd_scene load_steps=8 format=2]

[ext_resource path="res://art/adventurer_walk1.png" type="Texture" id=1]
[ext_resource path="res://art/adventurer_walk2.png" type="Texture" id=2]
[ext_resource path="res://art/adventurer_idle.png" type="Texture" id=3]
[ext_resource path="res://art/adventurer_jump.png" type="Texture" id=4]
[ext_resource path="res://Player.gd" type="Script" id=5]

[sub_resource type="SpriteFrames" id=1]
animations = [ {
"frames": [ ExtResource( 3 ) ],
"loop": true,
"name": "idle",
"speed": 5.0
}, {
"frames": [ ExtResource( 4 ) ],
"loop": true,
"name": "jump",
"speed": 5.0
}, {
"frames": [ ExtResource( 1 ), ExtResource( 2 ) ],
"loop": true,
"name": "walk",
"speed": 5.0
} ]

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 22.5, 40 )

[node name="Player" type="KinematicBody2D"]
collision_mask = 3
script = ExtResource( 5 )
__meta__ = {
"_edit_group_": true
}

[node name="AnimatedSprite" type="AnimatedSprite" parent="."]
frames = SubResource( 1 )
animation = "idle"

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 1.5, 15 )
shape = SubResource( 2 )
         [gd_scene load_steps=51 format=2]

[ext_resource path="res://art/tiles_packed.png" type="Texture" id=1]

[sub_resource type="ConvexPolygonShape2D" id=1]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=2]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=3]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=4]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=5]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=6]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=7]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=8]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=9]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=10]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=11]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=12]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=13]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=14]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=15]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=16]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=17]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=18]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=19]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=20]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=21]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=22]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=23]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=24]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=25]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=26]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=27]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=28]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=29]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=30]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=31]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=32]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=33]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=34]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=35]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=36]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=38]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=39]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=40]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=41]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=42]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=43]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=44]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=45]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=46]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=47]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=48]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="ConvexPolygonShape2D" id=49]
points = PoolVector2Array( 0, 0, 18, 0, 18, 18, 0, 18 )

[sub_resource type="TileSet" id=37]
0/name = "tiles_packed.png 0"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 360, 162 )
0/tile_mode = 2
0/autotile/icon_coordinate = Vector2( 0, 0 )
0/autotile/tile_size = Vector2( 18, 18 )
0/autotile/spacing = 0
0/autotile/occluder_map = [  ]
0/autotile/navpoly_map = [  ]
0/autotile/priority_map = [  ]
0/autotile/z_index_map = [  ]
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape = SubResource( 1 )
0/shape_one_way = false
0/shape_one_way_margin = 1.0
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 2 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 3 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 4 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 5 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 6 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 7 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 0, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 8 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 0, 2 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 9 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 2 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 10 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 2 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 11 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 2 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 12 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 3 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 13 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 3 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 14 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 3 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 15 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 0, 3 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 16 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 0, 4 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 17 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 4 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 18 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 4 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 19 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 4 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 20 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 4, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 21 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 4, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 22 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 5, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 23 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 5, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 24 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 0, 6 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 25 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 0, 7 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 26 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 6 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 27 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 7 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 28 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 7 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 29 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 6 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 30 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 7 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 31 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 6 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 32 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 12, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 33 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 13, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 34 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 14, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 35 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 15, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 36 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 19, 4 ),
"one_way": true,
"one_way_margin": 1.0,
"shape": SubResource( 38 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 19, 5 ),
"one_way": true,
"one_way_margin": 1.0,
"shape": SubResource( 39 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 17, 4 ),
"one_way": true,
"one_way_margin": 1.0,
"shape": SubResource( 40 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 17, 2 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 41 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 18, 2 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 42 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 19, 2 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 43 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 17, 0 ),
"one_way": true,
"one_way_margin": 1.0,
"shape": SubResource( 44 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 18, 0 ),
"one_way": true,
"one_way_margin": 1.0,
"shape": SubResource( 45 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 19, 0 ),
"one_way": true,
"one_way_margin": 1.0,
"shape": SubResource( 46 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 13, 7 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 47 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 14, 7 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 48 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 15, 7 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 49 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
0/z_index = 0

[node name="Terrain" type="TileMap"]
scale = Vector2( 2.5, 2.5 )
tile_set = SubResource( 37 )
cell_size = Vector2( 18, 18 )
format = 1
   GDSC            P      ���ӄ�   ����Ӷ��   �������������������������Ҷ�   ���϶���   �����Ķ�   �������ض���   ζ��   ϶��   ��������������������Ҷ��   ���   ���������ڶ�   ���¶���   �������������������Ҷ���   �������ڶ���          d      �               Coins:        Congratulations!!
~You Win!~                         	      
                  #   	   $   
   +      /      =      >      E      N      3YY;�  YYY0�  P�  QV�  W�  T�  T�  �  �  W�  T�  T�  �  YY0�  P�  QV�  �  �  �  W�	  �
  T�  �  �>  P�  QYY0�  P�  QV�  W�	  �  T�  �  Y`        [gd_scene load_steps=7 format=2]

[ext_resource path="res://Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://Terrain.tscn" type="PackedScene" id=2]
[ext_resource path="res://World.gd" type="Script" id=3]
[ext_resource path="res://Coin.tscn" type="PackedScene" id=4]
[ext_resource path="res://Key.tscn" type="PackedScene" id=5]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 1575, 10 )

[node name="World" type="Node2D"]
script = ExtResource( 3 )

[node name="Terrain" parent="." instance=ExtResource( 2 )]
tile_data = PoolIntArray( -524243, 0, 262152, -458711, 0, 458765, -458710, 0, 458766, -458709, 0, 458766, -458708, 0, 458766, -458707, 0, 458767, -327648, 0, 458765, -327647, 0, 458766, -327646, 0, 458766, -327645, 0, 458766, -327644, 0, 458766, -327643, 0, 458767, -196581, 0, 458765, -196580, 0, 458766, -196579, 0, 458767, -131052, 0, 17, -131051, 0, 18, -131050, 0, 18, -131049, 0, 18, -131048, 0, 19, -65516, 0, 65553, -65515, 0, 65554, -65514, 0, 65554, -65513, 0, 65554, -65512, 0, 65555, 20, 0, 131089, 21, 0, 131090, 22, 0, 262161, 23, 0, 131090, 24, 0, 131091, 65550, 0, 1, 65551, 0, 2, 65552, 0, 3, 65558, 0, 327696, 131094, 0, 327696, 196626, 0, 0, 196630, 0, 393234, 196631, 0, 262163, 196632, 0, 393235, 262166, 0, 327696, 327700, 0, 327698, 327701, 0, 327699, 327702, 0, 393232, 393238, 0, 327696, 458774, 0, 393234, 458775, 0, 327699, 458776, 0, 393235, 524310, 0, 327696, 524359, 0, 196609, 524360, 0, 196610, 524361, 0, 196610, 524362, 0, 196610, 524363, 0, 196610, 524364, 0, 196610, 524365, 0, 196610, 524366, 0, 196610, 524367, 0, 196610, 524368, 0, 196610, 524369, 0, 196610, 524370, 0, 196610, 524371, 0, 196610, 524372, 0, 196610, 524373, 0, 196610, 524374, 0, 196610, 524375, 0, 196610, 524376, 0, 196610, 524377, 0, 196610, 524378, 0, 196610, 524379, 0, 196610, 524380, 0, 196610, 524381, 0, 196610, 524382, 0, 196610, 524383, 0, 196610, 524384, 0, 196610, 524385, 0, 196610, 524386, 0, 196610, 524387, 0, 196610, 524388, 0, 196610, 524389, 0, 196610, 524390, 0, 196610, 524391, 0, 196610, 524392, 0, 196611, 589844, 0, 327698, 589845, 0, 327699, 589846, 0, 393232, 589894, 0, 196609, 589895, 0, 65541, 589896, 0, 393218, 589897, 0, 393218, 589898, 0, 393218, 589899, 0, 393218, 589900, 0, 393218, 589901, 0, 393218, 589902, 0, 393218, 589903, 0, 393218, 589904, 0, 393218, 589905, 0, 393218, 589906, 0, 393218, 589907, 0, 393218, 589908, 0, 393218, 589909, 0, 393218, 589910, 0, 393218, 589911, 0, 393218, 589912, 0, 393218, 589913, 0, 393218, 589914, 0, 393218, 589915, 0, 393218, 589916, 0, 393218, 589917, 0, 393218, 589918, 0, 393218, 589919, 0, 393218, 589920, 0, 393218, 589921, 0, 393218, 589922, 0, 393218, 589923, 0, 393218, 589924, 0, 393218, 589925, 0, 393218, 589926, 0, 393218, 589927, 0, 393218, 589928, 0, 393219, 655382, 0, 393233, 655425, 0, 196609, 655426, 0, 196610, 655427, 0, 196610, 655428, 0, 196610, 655429, 0, 196610, 655430, 0, 65541, 655431, 0, 393218, 655432, 0, 393218, 655433, 0, 393218, 655434, 0, 393218, 655435, 0, 393218, 655436, 0, 393218, 655437, 0, 393218, 655438, 0, 393218, 655439, 0, 393218, 655440, 0, 393218, 655441, 0, 393218, 655442, 0, 393218, 655443, 0, 393218, 655444, 0, 393218, 655445, 0, 393218, 655446, 0, 393218, 655447, 0, 393218, 655448, 0, 393218, 655449, 0, 393218, 655450, 0, 393218, 655451, 0, 393218, 655452, 0, 393218, 655453, 0, 393218, 655454, 0, 393218, 655455, 0, 393218, 655456, 0, 393218, 655457, 0, 393218, 655458, 0, 393218, 655459, 0, 393218, 655460, 0, 393218, 655461, 0, 393218, 655462, 0, 393218, 655463, 0, 393218, 655464, 0, 393219, 720897, 0, 65537, 720898, 0, 65538, 720899, 0, 65538, 720900, 0, 65538, 720901, 0, 65538, 720902, 0, 65538, 720903, 0, 65538, 720904, 0, 65538, 720905, 0, 65538, 720906, 0, 65538, 720907, 0, 65538, 720908, 0, 65549, 720909, 0, 65549, 720910, 0, 65549, 720911, 0, 65538, 720912, 0, 65538, 720913, 0, 65538, 720914, 0, 65538, 720915, 0, 65538, 720916, 0, 65538, 720917, 0, 65538, 720918, 0, 65538, 720919, 0, 65538, 720920, 0, 65538, 720921, 0, 65539, 720945, 0, 196609, 720946, 0, 196610, 720947, 0, 196610, 720948, 0, 196610, 720949, 0, 196610, 720950, 0, 196610, 720951, 0, 196610, 720952, 0, 196610, 720953, 0, 196610, 720954, 0, 196610, 720955, 0, 196610, 720956, 0, 196610, 720957, 0, 196610, 720958, 0, 196610, 720959, 0, 196610, 720960, 0, 196610, 720961, 0, 65541, 720962, 0, 393218, 720963, 0, 393218, 720964, 0, 393218, 720965, 0, 393218, 720966, 0, 393218, 720967, 0, 393218, 720968, 0, 393218, 720969, 0, 393218, 720970, 0, 393218, 720971, 0, 393218, 720972, 0, 393218, 720973, 0, 393218, 720974, 0, 393218, 720975, 0, 393218, 720976, 0, 393218, 720977, 0, 393218, 720978, 0, 393218, 720979, 0, 393218, 720980, 0, 393218, 720981, 0, 393218, 720982, 0, 393218, 720983, 0, 393218, 720984, 0, 393218, 720985, 0, 393218, 720986, 0, 393218, 720987, 0, 393218, 720988, 0, 393218, 720989, 0, 393218, 720990, 0, 393218, 720991, 0, 393218, 720992, 0, 393218, 720993, 0, 393218, 720994, 0, 393218, 720995, 0, 393218, 720996, 0, 393218, 720997, 0, 393218, 720998, 0, 393218, 720999, 0, 393218, 721000, 0, 393219, 786433, 0, 393217, 786434, 0, 393218, 786435, 0, 393218, 786436, 0, 393218, 786437, 0, 393218, 786438, 0, 393218, 786439, 0, 393218, 786440, 0, 393218, 786441, 0, 393218, 786442, 0, 393218, 786443, 0, 393218, 786444, 0, 196621, 786445, 0, 196621, 786446, 0, 196621, 786447, 0, 393218, 786448, 0, 393218, 786449, 0, 393218, 786450, 0, 393218, 786451, 0, 393218, 786452, 0, 393218, 786453, 0, 393218, 786454, 0, 393218, 786455, 0, 393218, 786456, 0, 393218, 786457, 0, 393219, 786481, 0, 393217, 786482, 0, 393218, 786483, 0, 393218, 786484, 0, 393218, 786485, 0, 393218, 786486, 0, 393218, 786487, 0, 393218, 786488, 0, 393218, 786489, 0, 393218, 786490, 0, 393218, 786491, 0, 393218, 786492, 0, 393218, 786493, 0, 393218, 786494, 0, 393218, 786495, 0, 393218, 786496, 0, 393218, 786497, 0, 393218, 786498, 0, 393218, 786499, 0, 393218, 786500, 0, 393218, 786501, 0, 393218, 786502, 0, 393218, 786503, 0, 393218, 786504, 0, 393218, 786505, 0, 393218, 786506, 0, 393218, 786507, 0, 393218, 786508, 0, 393218, 786509, 0, 393218, 786510, 0, 393218, 786511, 0, 393218, 786512, 0, 393218, 786513, 0, 393218, 786514, 0, 393218, 786515, 0, 393218, 786516, 0, 393218, 786517, 0, 393218, 786518, 0, 393218, 786519, 0, 393218, 786520, 0, 393218, 786521, 0, 393218, 786522, 0, 393218, 786523, 0, 393218, 786524, 0, 393218, 786525, 0, 393218, 786526, 0, 393218, 786527, 0, 393218, 786528, 0, 393218, 786529, 0, 393218, 786530, 0, 393218, 786531, 0, 393218, 786532, 0, 393218, 786533, 0, 393218, 786534, 0, 393218, 786535, 0, 393218, 786536, 0, 393219, 851969, 0, 393217, 851970, 0, 393218, 851971, 0, 393218, 851972, 0, 393218, 851973, 0, 393218, 851974, 0, 393218, 851975, 0, 393218, 851976, 0, 393218, 851977, 0, 393218, 851978, 0, 393218, 851979, 0, 393218, 851980, 0, 196621, 851981, 0, 196621, 851982, 0, 196621, 851983, 0, 393218, 851984, 0, 393218, 851985, 0, 393218, 851986, 0, 393218, 851987, 0, 393218, 851988, 0, 393218, 851989, 0, 393218, 851990, 0, 393218, 851991, 0, 393218, 851992, 0, 393218, 851993, 0, 393219, 852017, 0, 393217, 852018, 0, 393218, 852019, 0, 393218, 852020, 0, 393218, 852021, 0, 393218, 852022, 0, 393218, 852023, 0, 393218, 852024, 0, 393218, 852025, 0, 393218, 852026, 0, 393218, 852027, 0, 393218, 852028, 0, 393218, 852029, 0, 393218, 852030, 0, 393218, 852031, 0, 393218, 852032, 0, 393218, 852033, 0, 393218, 852034, 0, 393218, 852035, 0, 393218, 852036, 0, 393218, 852037, 0, 393218, 852038, 0, 393218, 852039, 0, 393218, 852040, 0, 393218, 852041, 0, 393218, 852042, 0, 393218, 852043, 0, 393218, 852044, 0, 393218, 852045, 0, 393218, 852046, 0, 393218, 852047, 0, 393218, 852048, 0, 393218, 852049, 0, 393218, 852050, 0, 393218, 852051, 0, 393218, 852052, 0, 393218, 852053, 0, 393218, 852054, 0, 393218, 852055, 0, 393218, 852056, 0, 393218, 852057, 0, 393218, 852058, 0, 393218, 852059, 0, 393218, 852060, 0, 393218, 852061, 0, 393218, 852062, 0, 393218, 852063, 0, 393218, 852064, 0, 393218, 852065, 0, 393218, 852066, 0, 393218, 852067, 0, 393218, 852068, 0, 393218, 852069, 0, 393218, 852070, 0, 393218, 852071, 0, 393218, 852072, 0, 393219, 917505, 0, 393217, 917506, 0, 393218, 917507, 0, 393218, 917508, 0, 393218, 917509, 0, 393218, 917510, 0, 393218, 917511, 0, 393218, 917512, 0, 393218, 917513, 0, 393218, 917514, 0, 393218, 917515, 0, 393218, 917516, 0, 196621, 917517, 0, 196621, 917518, 0, 196621, 917519, 0, 393218, 917520, 0, 393218, 917521, 0, 393218, 917522, 0, 393218, 917523, 0, 393218, 917524, 0, 393218, 917525, 0, 393218, 917526, 0, 393218, 917527, 0, 393218, 917528, 0, 393218, 917529, 0, 393219, 917553, 0, 393217, 917554, 0, 393218, 917555, 0, 393218, 917556, 0, 393218, 917557, 0, 393218, 917558, 0, 393218, 917559, 0, 393218, 917560, 0, 393218, 917561, 0, 393218, 917562, 0, 393218, 917563, 0, 393218, 917564, 0, 393218, 917565, 0, 393218, 917566, 0, 393218, 917567, 0, 393218, 917568, 0, 393218, 917569, 0, 393218, 917570, 0, 393218, 917571, 0, 393218, 917572, 0, 393218, 917573, 0, 393218, 917574, 0, 393218, 917575, 0, 393218, 917576, 0, 393218, 917577, 0, 393218, 917578, 0, 393218, 917579, 0, 393218, 917580, 0, 393218, 917581, 0, 393218, 917582, 0, 393218, 917583, 0, 393218, 917584, 0, 393218, 917585, 0, 393218, 917586, 0, 393218, 917587, 0, 393218, 917588, 0, 393218, 917589, 0, 393218, 917590, 0, 393218, 917591, 0, 393218, 917592, 0, 393218, 917593, 0, 393218, 917594, 0, 393218, 917595, 0, 393218, 917596, 0, 393218, 917597, 0, 393218, 917598, 0, 393218, 917599, 0, 393218, 917600, 0, 393218, 917601, 0, 393218, 917602, 0, 393218, 917603, 0, 393218, 917604, 0, 393218, 917605, 0, 393218, 917606, 0, 393218, 917607, 0, 393218, 917608, 0, 393219, 983041, 0, 393217, 983042, 0, 393218, 983043, 0, 393218, 983044, 0, 393218, 983045, 0, 393218, 983046, 0, 393218, 983047, 0, 393218, 983048, 0, 393218, 983049, 0, 393218, 983050, 0, 393218, 983051, 0, 393218, 983052, 0, 196621, 983053, 0, 196621, 983054, 0, 196621, 983055, 0, 393218, 983056, 0, 393218, 983057, 0, 393218, 983058, 0, 393218, 983059, 0, 393218, 983060, 0, 393218, 983061, 0, 393218, 983062, 0, 393218, 983063, 0, 393218, 983064, 0, 393218, 983065, 0, 393219, 983089, 0, 393217, 983090, 0, 393218, 983091, 0, 393218, 983092, 0, 393218, 983093, 0, 393218, 983094, 0, 393218, 983095, 0, 393218, 983096, 0, 393218, 983097, 0, 393218, 983098, 0, 393218, 983099, 0, 393218, 983100, 0, 393218, 983101, 0, 393218, 983102, 0, 393218, 983103, 0, 393218, 983104, 0, 393218, 983105, 0, 393218, 983106, 0, 393218, 983107, 0, 393218, 983108, 0, 393218, 983109, 0, 393218, 983110, 0, 393218, 983111, 0, 393218, 983112, 0, 393218, 983113, 0, 393218, 983114, 0, 393218, 983115, 0, 393218, 983116, 0, 393218, 983117, 0, 393218, 983118, 0, 393218, 983119, 0, 393218, 983120, 0, 393218, 983121, 0, 393218, 983122, 0, 393218, 983123, 0, 393218, 983124, 0, 393218, 983125, 0, 393218, 983126, 0, 393218, 983127, 0, 393218, 983128, 0, 393218, 983129, 0, 393218, 983130, 0, 393218, 983131, 0, 393218, 983132, 0, 393218, 983133, 0, 393218, 983134, 0, 393218, 983135, 0, 393218, 983136, 0, 393218, 983137, 0, 393218, 983138, 0, 393218, 983139, 0, 393218, 983140, 0, 393218, 983141, 0, 393218, 983142, 0, 393218, 983143, 0, 393218, 983144, 0, 393219 )

[node name="Player" parent="." instance=ExtResource( 1 )]
position = Vector2( 100, 435 )

[node name="Camera2D" type="Camera2D" parent="Player"]
current = true
limit_left = 0
limit_bottom = 600
limit_smoothed = true
drag_margin_h_enabled = true
drag_margin_v_enabled = true
smoothing_enabled = true
drag_margin_left = 0.4
drag_margin_top = 0.4
drag_margin_right = 0.4
drag_margin_bottom = 0.4

[node name="KillPlane" type="Area2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="KillPlane"]
position = Vector2( 1500, 800 )
shape = SubResource( 1 )

[node name="Coin" parent="." instance=ExtResource( 4 )]
position = Vector2( 2782, 275 )

[node name="Coin2" parent="." instance=ExtResource( 4 )]
position = Vector2( 1057, 254 )

[node name="Coin3" parent="." instance=ExtResource( 4 )]
position = Vector2( 2269, -435 )

[node name="HUD" type="CanvasLayer" parent="."]

[node name="ScoreLabel" type="Label" parent="HUD"]
margin_right = 81.0
margin_bottom = 32.0
rect_scale = Vector2( 2, 2 )
text = "Coins: 0"
uppercase = true

[node name="WinLabel" type="Label" parent="HUD"]
margin_left = 400.0
margin_top = 150.0
margin_right = 600.0
margin_bottom = 200.0
rect_scale = Vector2( 2, 2 )
align = 1
valign = 1
uppercase = true

[node name="Key" parent="." instance=ExtResource( 5 )]
position = Vector2( 4659, 292 )

[connection signal="body_entered" from="KillPlane" to="." method="_on_KillPlane_body_entered"]
[connection signal="body_entered" from="Coin" to="." method="_on_Coin_body_entered"]
[connection signal="body_entered" from="Coin2" to="." method="_on_Coin_body_entered"]
[connection signal="body_entered" from="Coin3" to="." method="_on_Coin_body_entered"]
[connection signal="body_entered" from="Key" to="." method="_on_Key_body_entered"]
       GDSTP   n             �  WEBPRIFF�  WEBPVP8L�  /O@͈IS����0
6�$�Q�6��r!,L��@(j������ �� H@E<�(e�'��9����<�Nғ�K�X/۶�=޶��9y�흱�͗�$�8���]��r��9U���{�Y�6��lۺ�5���NS2s:s?	�~�'���K\�Z/1s���f[���K�dնm�R��j�<����S�����\_�L;�Vk		���ms� ��A<SD�"�� *��A\.�)sTFP�$Iq�{̰�|�����P�~H�HHE�� ��#��עJ� �I�u  @�å���Q!ΔL�n�4  �a�   'S$I��I�CY3�ݬ�L��uǧ ���
Az-�F���2�	b$U�Ѱ�r��O�V�N��>8+Y=���� �$��PD�gK  L%=��*i�B�#F�hR51�(HP�;>pKZ  N�	�}��PdԊ�U  ��{�����  ��8@�0����ˠ�*Wx����/_8�lRF!��
��"$��4�]{��y�A8�0	�?w	��$Y!J� J���[��O�C�\	� �
�θ�P̝�&)dZ!�. @HpMפ]��(�,���3ct@.�YSx+�� HV$d�U� ����J*��0 D��E r�	�]St;�J����@��t�>�k�$4� �ssUॠ$L,?���>_��F��Ā� �>b�"� u6�S�$���ߌ jP�����PL�h`i��[�*t#Q�(�,��1�M_�6��m�Jj��`a����٫��R�P�S[1��4<�����~����G�=:�g#
  %~�2}�?��˪�M����N�Z={5�gG>#C�Sg< ʦ(���-{ۙ;O�2�n۫oi���Uw�i�����3�#W+mF���W &l&(�ʰ����Ȼ���/jtho������_�-����4t�:k���:����E?/���?Z�E��U�-��(��E�2�W����v���k7�Ӷ�.�[�n��ez�:�8�hA��X���ɕg���u#C{߽���,  ���e��?\�r#�ne������Q1(v�F�ՙ�w^bry��ǆg�ѶMO������W�q�S�[;e���  +��V?|񺯼��L��e�oxs����3�W֏������Ż��ύ?
�Q��Q�I�X?x�����|��>|J@�"a���/���� �&���n�X��tm �>[#���`W� X4�fgm�_�h�1�k+�@@�a���F��$��ޫ�/�DX'd|G0?���X� 	��@9~t��\�o  ����^��m��OY3�g�(�u:+� �^3]<�W,iF�'��Z�F�O�k7�U���u��B����Y��!&qԌC�������eq�ֈ��M�4��b�`�(�oܒ���_d�,u���n����h�`�t4ж���I!�n�l���; ���囘=吋�q�����(8�����h*��4M�F�H�bf�nQ
  ���Go��Ξ"M�Y����d\�Q�� )��u�ЀlB �6ݙ `U�t(e�D  T�D ���0��8%�b^=�$ٙ�J+F�Y� ��k��>8� �5�4��%��ް���������`˳~W��7��lML���� �����R�{�X��5��K{�b�#�������R6�����>�p������-�셝��h �ͮ��=���ux�� `l����C0�Ԋ�  �����{����S�tkwl4��&��: � ;�6��[S;�މ	8̹���U�9J1n�P� P�o�P��O|����Z6��4܈��ر����!�����)S[oKcI�v�b<rR�����K��/=����v�j�=1���[�l���Lϼy0w]�1��D�� @��p����R�p����56���#//9���cy�6\�\Biv?���m����f����=B���9��Z'x��_����k~���3gRpZ_k�`�O{s�_�:=fR6v�ȦeD�U+�_�e�r8���-\���i�j2����Ap2�1���ߣ��9��33 �&�gv�j��S`y�<�FFN�g���~Z\5 @Tg�����Ga |�I ��\ ШmXx'3(���w�'w��cf`�����a�i �t 0z�B�����~ ���?6���@nM� 0_� 룧��qp ���چ�Oc�#���ֿ7 ���XO�h���4׀T�c�i�윏�l��Ԛ*�'�Kd�����q��VD�T��݂#�LM[u��K����2������;��tz� ����Ź�{  ��*�^I�_�}��2�~�  m����~� 0����+S�O�[�����x�b^`�r~O�MKg�]��<�v�L�a�ig�w&þU<t�NZõ-<N��l��ʬ�d�4m�Q!�`|���r�rq��L� ��M�J�,�/�l�Ά�N≋�-  S�><0�w����;��G��!������SGu my�w�����]����&�Ȉ/�L����  ��E��8���02 �
�������~O���;�1gN���ӽ	+�z{Z.�3@�	0ِ��yr˯�����4XpN�X�1(�fd5��/�v�&h>�� ~m�%n���+��������Ou�7� �< �i����$^#��Ƴ� T�Zʁ�el�*'��O%�� ���d_H�{��/�� ��ܽX�/$T8����G����]��������؀ׁ��o�
jN���X2�[U �^sd�U���o~wmaY������ | �g �CR��z9� ��AFT��6F&���>|`�#��������%�4�^F����Z�kr<	5���c�=߀���7ol��!c�4z���9�wEΓ��-���җ>�銇�w�����G߱�o*�1�!^�a�n옕Z�G�0�mϿS1b�hQ ��fx����vg�VZm 0n�P��k�[���� �h��~
 � � ��n{��b��Rz5���<��������l�+;���n�M>�&N�5�b`�e���ќ��-����R�5@��Z-acj]��yt��s��RVt=�/q�S.����-V���ǉx�T�1)��'ٿ.��v7<��G���O�՛b  �Z@�z�����|fSz5�4�rp2�bu��NV\�5��-��>����j�(h�+��_��7��D��+�� ��ڡR��]x�_��uΓ�o5/tE� |^��?,�h��թG{�������>p��5���F��y�T��UaU��(��3!k��w�0�zK@U^U�*��}!��U�Oo��-�P^]��7�p�w.y�[�
��K�O����tiH E��׾̑��`�*�C��gEbFRbqy �WO�G5z�༴D���|� 0�d��������@U�~�K���u��#�;W���D ��`�k�|��ŉ��, �U�h靫� �D����s b������i�&$ �1��X�U��*|L`"�j�� `�UZ����]|��|�����]#��S���jUϪ 5V��f �>�%
ྏMN���`�_����=�W~v	D#�
�j#A	�R�F��Q
 _�� >��  ��#ֆ������  ��h�,�˹.d	M#2��R��AbVd(m��$)i�2<J �hL� �+"Q��Y�ˌ#�9 @DA,��Rs�jT�Fh��K�"          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/adventurer_idle.png-db4df380f5fd2e0df8159c705c8c36ab.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://art/adventurer_idle.png"
dest_files=[ "res://.import/adventurer_idle.png-db4df380f5fd2e0df8159c705c8c36ab.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
       GDSTP   n             �  WEBPRIFF�  WEBPVP8L�  /O@͈I�׿�!"��Vb3���H�s��a AM�FP�T�pߘ���@'��|a�vH����Yv�5=�۶��۶m�~��m۶�*LWefdĵ�7"sf�Y��m�1I������Vٮ۶�\�?�j��s�B�ƶm�Q��JF���׷$I�m۶�Yj�[냙����1��^���:4,�dP��Mhc=U����*`� s�UP��DA'
J�(X��T��$IB���c��|�� �_+� @`� �N������	�����   	(�7I-��?�B�)�3� (l$�  ��L� C $��%�Z�a@��f�r  `}�	�����щ�!C�zV�t���C  �B�9Z(��u=��ץ ��-�@Ϟ�A5Ѫ  iY���]:d�=�����+��B�B�&5�A�y N���/��.c]͘�4R�,EO�d#$a �}_���m'�BH ��[J�c���p���K
$�*hH�}AR���x�wk�����y:�@� T$�wr4� A�P���  �����Lg���S� @	R��5@&��1xv �(r^��:� (3"�������/��z��1J��� :�	ny����z���p2�B]P�� � ����i��}�d�q���m �6H"Fx���U*��l�Sa�Z��&d �sP�u�I8~���}��(1������Q��!  �� �̨�Ah������������� X"��U�7��CT0$i�O;s�Wt����%��[��Ch|�BV m	�Fb.���ed �$��6ڤ��C�!
{�py��{����V��l5yf��c���-�����^)w�8 �����wP��������d��#�8_?}�+�=��W���l�1�F�d�${����������g�]�rѓ7�C.͗Ś���x�t[_�V6�@j�%�c���	�:n��^sG[���=wT\����m=X �*�mނ(�V���#�k�D�9��}��I����K*���Y��������vE��b&d{���:a��5  h�h6E�J�U��  avV���ܳ�鶭&�����4�2�k6�m �3�oiv����wj����Ze�2a
���徭ᖍ�9vf����Q1o^3* l5X��ȅ�n`���f�D���MkDkYFR�Z��JL��g�y�-֍���X�[V��3Vny��=UK��W��mG.@ҡ��� �$(��N1�o�O~ǋ{7 �^�|v�^}��_��z��6o���3���	(C3  e�d����_�s��]���?C�>L�����XݮV}����@vƓ,[ ®��3ٻ������o������.o|~|qi� X�ʧR�,O���@�fA�;��^�45���L�=� �*��H_�=� �|�>�Q`l���>^��"@�hLLA=U4c�	:s�� pd���Q�ca���i��|�uG\Rڥe�ux}�y�Ͳ4�i�4��g�}�^`-��7��  Gw����~�ͱj���k���`�%�k�+�L�l�6c��j��LVS
p	c*@Em��;2|�N��C���'�"mcT�� .:M;С11�/On
��'a�� �V��8����/��+��|��'���5��L` bI�.h
:M{�n����a���n�ݒ՗��?ѿ�w���!�� ����",O��� ا*�TE
�D�Y�֡s����BZdu����M��Qf% ���6��m3��h�Y�8�T|j��'-��b�I
�6���&KL ����;׫�.)�~�xĮU	�q���t���w�Q��|�	 �Y��(iW���4,B?^���̏�
�za��w�V�Ƴt�����5 6�?����&K �z'iW��I�_�)=i@��N�`���fa,IqTU����p�а�2���Ed����S�� �IpN�A1 ����S�����k*Ż�f>
�а5s�um��O>��7���ٗ�ٿ����^�(�5���6@O�ߌ�Lua��D�g{{�s��>�Pz�\s/����~�q���ɗ�RE�H�F>����]�iLF#.�+ ��h���=��:Qͪ�x�D�^�������˅_>1��-��wS�d��
�����7Om<w����*�y -�ݣ��E	b�0�C��Ӌu��ۖ�h�P�ب�m���j�w��{?��>�- l�҂ϗGw��&#�"L� ��7O�w��_��9�G^��������A�UcJL��-w>4P;wO������ɡ23lӛM�Z�~}�W�/~�^Hg~��gYg�
&H���xQ�����G^��G�=����P�KH�hoN�fG���$x��5��@�����f+ǉ@���e�8 ߎ���j�6��?�31�Ub�h�ܽ�·� F��T;��}������-<�S��o�y�q�����$��%��_Q8�QFf�6?ped�Rc��%ZL�,���c@���T�N�v`� 3਩& ��t�ia�j���(k"�I���h��+�-] HE�}�N�y0�Ї�+�|6�= f �
@���tϯn�a4� ��ab�UjBd��� `.b:J+�v��拗  N�a��
���e�o��� �1�o{] w�D0������(�ap���>��  0�M �&���@ ����-��b�6�/Rf  w��;{zml���f��aM�D�������%�G�2TZOD+�̋���Q�e��C�T�F6���o��KT  �ΉE�'Za�%���2��p�e�[�9��������7l�X�{��,�_�BՊ�>�_����줸��q� 00�F�}ܹu�I��i5�7��s#=�0�����c@�����@�#%�+o��7Xu;̇�͵x��<� k;���x#�btPV�ջ��N��C�x־���Ad󩷾����O� h�i�i��s�������5�V ��N��n̏���ɗ"��y�~�  h˧��*P�
�F���4;�,hvd<���{��S F�}���v?:l0����qs��\^����Pl�E�#�c��Gn���Y�Ym���  ��r�.�P�,��_����}O�*/�?2����P�: �� ���M�Ot/�Ͽ��i#{\�;��&0��1�1=��&,w���K�� �t ��=���+���g*��\�&p#��x�!V�t���������[�u��}�)!�f�"�l�>MR��37����/�#�W<�z'�9���~�A+0��.���!R���t ���D���
"�'�b��xa��yp$5{<�TjB�)z8�R�G���
bp�'�F���KO7n�9���/�G�� !� (|Dt� ,�����O/ ���o�SO+��Όj�1��ckD^
 q����v��n��O��,�ί.�K  3�=:y>k��Ih�T��*k�y  T�tZ�h61sW����s�6�+N��7�=wp,��=%BD$h|"4�"m�5��	 $�m�`�����p��N=��L�	�j/��lX�*"D�DDA	Jϔ>d��"U<p�_n%��݆�/G F�@�K�P���`z���6�z�I�n��[۫CAo�� �$���J��~�_�<���xv{UN�Y�  `�T����s:�lq����5O٨7�����]!���<-��k��Վ���9]=�3,�ߍ���~�iB���0ui3�4 @�KUH����.�Y�s�7��$�*� Yn*|!��+ �mO�	xS�y	Vު��38�g�Y}sZ 6?���i�j �5Q�C���91*��pi�� � �� {xE�*�\�9�vky��� ���9-�� �R����ԥ�u�t�@�Ϟ�u��M��`����+�J�L��|�.�_�^���3��D1��糏�7UQ @�����o� �R�3 #�{@%:��j���l��y�eps ����o7-��b۳ZY7PMԀ^�JgW����A5I�-��T 4q�%+��#U�`�����f���]�ۡ%��mL%���
 Ѣ�U�kUٳ��D$d��p�� 
D�<dD bX�߮��'" ���x�P;WL& �"#�ΏKq#�2%��4Op��g��}VUd  �b��^�<G}<��%nόGLU�'[%ͮi�
Z�&%H̬%�H��1pZ-K@���=���l�z
*(�ﻧ��JY�<��5-K�t� ���.Z�)�s:%"QH,���|  �s�Z���K���=Z���e��[s٫��*{��  ��)�QG�c@%%"���@�� ���� `3����(e�D勞��ZF��^��l� �4
|I�(P������*Dm )"/P ���e `m�r�n��g7�J��A�h5� `�����;�o��'�� ��y�w�a( 95Io�$��E���C����D������ � $$�9��D"<�5��?�PG𝫿 P� �6��������Mɚ"t ߾�[�j���C4Ni�T��7��WP@�VxF�EH�J�� �ε_ �d) @�/����s        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/adventurer_jump.png-531b88b2f5ee4d88645f41dae6dbdc1f.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://art/adventurer_jump.png"
dest_files=[ "res://.import/adventurer_jump.png-531b88b2f5ee4d88645f41dae6dbdc1f.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
       GDSTP   n             �  WEBPRIFF�  WEBPVP8L�  /O@ͨiۀ��qAD�?9�ڍ��m�_�_��FR���mH��0ӶMڍ?���� ���oV��{,o��6����I��¦�ffff���_�t�+��q���w����������=�e���q�m�V�ֶ�Xjm��-�����s>��_<�a��|�/Lff��0d� 轵Zl�ڶ�m����QL&Ie>�V�i x�܆Q�o�?|�C!���m��U�f�Df�!���C0��� 8�9NF0�$I���̀\{>B���o�u3r	,L���%��g�{�� |^��@ �hRAy��������KB�D!z44�*<J$� T��  l��B����QC"$Iяda!L� %��~� �X�Ő5$a*F�Ha�P����V�, �  �B~�&�FH�+)  I�^ZA#�s�� �   
�~a]R���I�`��f�yI����CS�P��~���T#<�I p͒�_S�s��dD+�K�,)FWE6�dT`��tc+u��
�n0I
 ��>�|���
�7�-�3��f�V���"a>(��  ���Ls��[_׸�R�3,��BA�j ��Ն��sMp7�/a�'�\��CP����?� X 3�J(����)��P(�\�@� B�P��{P�R
��T�$ ��&)F��.JG�H �=��pe�i@ �x�ˆK��6��<�O$Q� P R,u�ȑ*I�5	���*��� ��p�L�ѠE�I�HH!Y��⋣��Ր8����v@l䦯b�E�7D��� �����3��c�Op��צ/y�[{�޲0��#p�h8&���(h�y����_;g���ٔ���:!>Iѩq����[��7⍋�yo��kw��,��3>�j�y� ��Q�2i'�gԏEC]���Ł���e��l]G���bcy�ē� d�$�Mb�:�L���π:��k@�HG�Q�}B�Ty[���Y ����ѩ��o	��	DTb+�����P�7��2t`E_N�!�����  ��n�e;e�$ �o @#*. ��MR�~>�=��^x�  �5~<�����{�,�5�َ�v�.X�� ��Tc wI9�{!�ߴ/y!�y���G�_��8y�|�]�R��9�)����?�  h���ik��[�����M��#79rPC�68�>06.+��mݍ� Pp����_O�Ķ�`�rn��$�I[x���9���<V�no~񨞅0`������<}�:���� �r�载��I����u�7  _�߳�Y���a������0R�o�։i];�  ��H��eee[� Ў�v{�wVnh `�a=�j��9揊�=��) �c��J�,�_;�^���>03Sq�-�u��˷  ���ˉ�����P�u�]K�������vEk~�C Dc8~;N���0\S�l������j����n�a�חX~�@�d�[����9zo��u�A6v�V��v(,�^;�࠵^��C��X/���RI�dp  /o�޿P�<�s\��ְZ��Z$��B��dK��n�C��h�\�W�<W�^ Hk����ep9�:%/��0�%i�V:����߱�˱�W  ��c���6�rvì;��j�N   Y/ɳo`��2a��򔴦��  �t>� �aI�Ϙgw��# ��X��  h��Jn)�/���د�r  ��  ؒÖpn�: |�Qޯ//����+���j�8��g��h�X���z+��d��}�;23��_�_���� pߛ/]u�} HڵX�N�ϝR��{U�]To�ё�����%,J�/�. Lp���~��@��B�5���u� ��:�^��J����#T-��X�~}y
8������U�[�y���K�T;��U�K�dyg�Y��w �*p��N�M߈/}�	r�n��96�  I��2W1-H��fs�^�Z�Wy�� �hYK}��(�[���I��P�L ������Zf�ۆ^�  �H0��:���nǗ>@�t��ٝ%�5I��H��4jLL�l(��8��o�g��gn����|� lf �$G����` �>D�D�J7�|��mĽ�x��W @� ���   Hp���_����!,o1z�i%F���>6��p��!�|��x���[�V  �s�Q4�4�"g��M�p� �2�1������h���p����콿5��Z$Q��}b�� `2�8&r	"7�	4 �=��Q���;���=� Ū�f�c����h�?\����ݷw}L��]q%����17����D!V��> �Q�F?c/�df�D�M���Q� t��H�;`��1|�Vv�ҏX:�y��11�88��_h� ����[ώV���hH��l�܊����� �X�$6��v�������h� ��
��X<�Y��g~�����|��{'�;�����,ɚ$˻��`�z �n�G�;��`�,C��>��# �T��<�3�gcb9<��s�di+Ŭ���W"�  ���`�Ћ�ޭ�����W�o��y|ŁO�,~��y�q�#J��P�V&>�}fh2Y9�PV30�?� ��f�-�%�"l�� $g:��݉���.��*��(Ws^�W^�'�k>q��1�) ���	�U�˒}��7N�-z��a��#�c�=�b
-iZ"x $m`H�E��bE.�d�  ���'��|%����ɟ���f��ڬ�S���Y� Ъ���U��r�x_v�(0�콣�/  �F�d  Ǝ�99_���Ɲ��=��������>�L�"��6_Ʈ�X��]9i��E�we��K z�����J1�N.��Z�⁓x�e ��Ґl ��1�G"�z4�XĖ"�I["�$x|��5��Z#=H�c5'�?^z�$ڟ���������� @��Ѥ���S�-�Xo����E=`����o�뎱�a���9 Pi� �p�MV�����˜�3 �)�  hÊ��*�N�,:�Bili�D������h^Ea�Fh�.	�E[�w+n9���l�sק�� ��[�}�5�c4�Z�
��F�W�����1,��G�
װh�JC��O O�l��������� ��
�!̴�� ��H�����ٕ�nD��R $��p(�+C?� �i�m��+� �S�s��	0%F��6,���e�>]���տ�}�uB�>7�~���P��$�>4�Y޴�W؊���ft5��b��Sش�
?��K0d�}�6O��ự�f�o<�̬ l9���k���QCQ�0N�� �d
F�ؼ���y��6����ړ8���4@�Ʃ�h�y���
�� �~�p)ID��d7l	���H�#!�'vau��w�Ԃg|���i� ��#J��E�y �l��]I7 f�>�}\�rb��D�����������m��� �/�c�5���GO����`�|����1�'������P �>\�t��t�Mכ�ϣ�[ñ7�  �(���H
i���M�ڮ���4��{������7�*[� 0�37i��>O���藕ٲ�W��t*���� �u ��������Pb'i�m����fVE�'��;�����M��a�~8�+^���Ƒ�z��>@ �F�������ݱ4cЍnXqc����c ��n���w��Ogt#��C����C����hGతywX���M�5 ��Y�,c��'���&Q �*E;����I#�(���|�IatR>�8 ����hY���u������v󂤂��[q ����- v�2���1�h&.�v���� ���)�:T+1���D<�V���%�ux�+ @��	W�d�?�'��5P��5�`�9- �D; �*�����מxi�x���2>mL ^���q/� r����$� ��ظ�UA� `�a�˰s�ѝˏ� ���̐��l�p�Vܺ�'o����?�M&@S�D���-��A��X���jHc�o�� ��Q�92�� ����Y�]�)@F��)���L��~Ď�&�� `З�r�ѽˎ�9p"o�C���Ly0�A&�# ���~��F��5f�   �c�x�P%D@��k����h��DK"-	1	����� �Q�R���tI�-�2d(��H�T�!0h��|h�Н�NK+�PU  ��������T��rVgO{�����3 ��7X{� ��o-�#d�+�(b9�_���̚um�W�&��:	 ��e9�~$�S*���4*@4"[2 �|�;���;��^��#k��&��+(P�*= � +*y��;��^�M��@�c��Ι�77��^(���n�}�V�4u)Ѯt��J$�Y��u�^�5���D)J�P|���r��^����kP��J3 Q��ߺ���]          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/adventurer_walk1.png-027dd0f4776161af9bc42f2024f7d5f9.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://art/adventurer_walk1.png"
dest_files=[ "res://.import/adventurer_walk1.png-027dd0f4776161af9bc42f2024f7d5f9.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
    GDSTP   n             �  WEBPRIFF�  WEBPVP8L}  /O@͐Iۆ��,����%6Ҷ���~!� !�?��(j��^�?��0�>�� 3��/�+>lQ�fH������cm۶m[wǶ��c۾�mc۬�Ӫ�ʈՑ����ݹ��m۱I��<��R�3�lێ�X�
ױR[ym�26`E�m���_��}<K��ڶm[�Qjm昃'��������3ke�6*%$�����A4QXEPA���!���C0���`6��I�ö��#�[	�G.�����i2���a=�i�;� �@#� ���	 PH��9>��\�(w�x�4   'Bh8O�[�	:$!8��t��$)w��#@� ���O�   פ�hd��{hh΄d:(�\  ���<��!�#�H�a�e�C��T�� H���&��T��O�ч�FP��4�ǣ#�4�I  �� pS��c��7A�'�{�	h$x�S��Av�&	3!O׃�WѬ���4�(�C#  ) ��]��0�$_�G�x���
w@w ��g����� o�a�꣇�|B�y�O�{��D������h���݃(HU�_ I��F��Ӑ�: :mR��!;U8����IOwO�0� @)�i0�I��|�sD}�!�J)�M�J����0 a�̞r�\� L�x���P�T57 T���6�� @B��}
d` �J�J���GL�f� ���H� � 4��P�t�AI��� !-�'������  rHx��nLq	��E9�=�.La˔	�t� N	@tIaKJ��-0�SE Ό ��G���4�cb�lt�Azt+�x���W~�_���9&[.�+��[w�26
PF	�������Mo��cs��sX�Z���A��֥�����Q>�j��fg�鈍5�q�Θc����vcu xD��u��� 
G�8&[a�֍��� �d`�w�+��Pm坫G �lLa


JϹ���ʨ��s�  ATo``�s�g�:����� pjN�Ņ���;����|㋄��   hŻwU��:����L{`E  �ڍyvc��4 V�n�� ��aK�
vOFYц��;vW ��/�^�Y��Gڊ���ɷ�� V��iEo�/�������G��%�ޚ�� n���l ��ο���I�$������;�\���(4�mo���х.t���r+�һ[���^??:Y�N6js�φ��������R��~KAA���N�g�«�&&�e7��ɧ{�ɣ��!0r�96�p�� �
.}�ȫ.�ŗ�m* �rc�\�|����F�wE�δ�ͥ���4��=���'ŒK��2�p�Uk8yV��őc���[�G�s8<�f�]�^L6P�凾p��/}��G��ч?�go���o����=I����c���W�~4���S��q�L�/�b�X�J(9|��O�R�0պ�<���,�����`�����(��2�4; ��!Ӡ�"�(Hf�A��of�2��K��ވ;��V��,o�·2�v��pҴZ�5o�p�&& n؍�
 ��0��x! rgg�]��C�[r�k����?#�>���Z>żEi� yC-����e� �� KLw�z�s:  �j'����s2��Z�̙�?|���~�����}�}?�~����!���m�p̢<v/��>�� @4������N��2~~����Yܾ[/9��jqCjq�V�LT��&e�4�?XM�Yd��@�TD��!�����e��*   Ղ}�O�-��D
 ��qk��n���z�,:w+�몜�<������  ,��.8[mP��>���.�K1���o����t�oN�~�_ז� Z}2�^���\��F�N++���V;� �0�*�?����� ���oQ��!����!�^�����ɩ��b�<�^�@�1K��  ���_��Q� ���*a.�������9~��Y�^���݋ ��\��pP6� �θ �-���`��D���"i���ΘݿZ28;fp��v/��nuj  �tI�8 � ��dI�e"*�RA��'�5�]��bt\@3���^�M�^�ճ{���v��Ќ渍�.�K��U���G�� �~�hP�Z�"g�����12.�è�r�����������CG���9s��z�}u�h#j 1M{5h��5{1���hG5` 
V��f�8��{�^�t���W�dsf��� �GB� n���Zf�;]~pp����t t#�Q@Kk���;�D�_�"u%�\��x�a�P:�����󏼞��2Q,U  ��z&����2a� �d�C9$hELo�-j�'�O:��v��	1������kD�h�D7�Y[L7�엵�� :b|P�J����5#Z8��-��jz= h�8�7�U���6ppkw�|PƖ,Z�
�kH\o ���@~����)����A4m�����y+�,�7�~�t+��\��#��k��7�w�r� ��m���;E�q��П�NW�NU�]_��$�c��PG�J�9`YPd�V��`*��'���J�]�<�`�L��+���~���L����^�����ߙ	�1O|"����9���쿻�w� cW1g�u�o��o�� /MLF��(b2; �L�e"ٿ�y��F����%�����"j�@�L�	����C#[��8�tY����^��3��R�y��{e>Nr�  �I�}���T N<VN?�.�&��Dݾ��� Q��59�R��h* ��3�x��ڍ����0 ���p��
�aǢ'>s2�Dtѫ  �Z2�k��m����w4f��_e�#tx�>�h���h�K8�D�  	*I-id����ͷ��}  bnU�;�\���o�+�p�[�>�)^�u�7E5�U��V  �A�%��&8�w�kp��q��� ��:@w$��nG��N���̬�t���
w �: �^�h��D�콫��ql���@h&j�5kw:���[Wg^���;Ʊ�?���?XB^��࿳w���i~, Lbj�jT*��[8&�t�xs��Ϲ43<Al�_�o��r �f7�E���4k� P_E}Ea<U��Ƒ�ڬp�D2@���J�z�tpP'�Lܞj+Z˨4��Z��ݲO�w��C��"��,�n@�q���[SsI( ���;���2�6$��ᗱ�b �.KGL+���G����!*�e�o�'��v �5,�[�i�&1~�� ��  ��h��i��6�[���eN�������U��}iT0�$�nRiչ�;ʑ��>����	4>�����B$z� phRQ�S�������VR H3��'�oϜ�+���	�7�{ �ʂ�!����H 	�2�H�&o���@< ��o�8��ƍ����aUa%� :���O=i�/��b���wJ ���O@��6 �!�T�����8_-��" ��O=c���O�2 ��~ 0m �H5x'R!�ģzv;(	 K��#�� "a�,�D�nT�&j��l�,��/��@x�G:LL���FB�z�ϙY* �~�g X$ pG�I�	!��0	�ry^�t    !#YT�G��/D�H� @u7����'��               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/adventurer_walk2.png-1085cc285228fe830eaa719a3320bfac.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://art/adventurer_walk2.png"
dest_files=[ "res://.import/adventurer_walk2.png-1085cc285228fe830eaa719a3320bfac.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
    GDST                z   WEBPRIFFn   WEBPVP8La   /@' $ �ߣ���@����Ɉ � �C���"�G��%�$5o�@AQ@��M�D�bmv1 ��Ie%	����V+H"K�T�]���           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/tile_0027.png-298edf5c633b08598d943392a629226a.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://art/tile_0027.png"
dest_files=[ "res://.import/tile_0027.png-298edf5c633b08598d943392a629226a.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
         GDST                |   WEBPRIFFp   WEBPVP8Lc   /@  $��)VH@���n�@���O�2A���Ż�F�m�a��VBA�ɇ�o�AB���B@��@ސAy���_���6F;Ƞ<y#X�!�.         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/tile_0151.png-6f2c32beb384fc10aadca9763db26f91.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://art/tile_0151.png"
dest_files=[ "res://.import/tile_0151.png-6f2c32beb384fc10aadca9763db26f91.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
         GDST                l   WEBPRIFF`   WEBPVP8LS   /@'  $��)VH@���n�@���O�2A����]S��F���P ���_UGAD�'����L2�'^�Q��xL0&�+         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/tile_0152.png-d414945b97265b1b7f4e8c97678f8135.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://art/tile_0152.png"
dest_files=[ "res://.import/tile_0152.png-d414945b97265b1b7f4e8c97678f8135.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
         GDSTh  �             �  WEBPRIFF�  WEBPVP8L�  /gA(W�4�m��!��hf��_QQ��4cnc�V��S��AFN��A��~qP۶�N�������A������v@���bT�z�������~�h�z��p�fE� ����@~n ��:π��+���٦��b@Y�?��=*�۶�y�F�&;Q_8��if�P$ݸ#����?`9p������$�T���e�O�_���e��9E�7�%�K����&9����)־�,
ɘ�8	�x9�r��RR$җ�諌��X5��1@�"���I0)L��j�'�R����^c�+/��71�X3�I�ƙ������.�w����㭁N�Pĉt�A�(�Vz+އ��dS8��r�|NQ����}1 �ƜB��j{�C��&3��y&�d��;���W�U� �H�ܠ���?MP����d~x���*��U@�rT ���P<&�R� �$��.���
�R�_nduV��8��oBD
0N���F��A:��IJ�k���v*D���,���Q#�%���CFG��`s����v)��f�:�s�����pc�i^d�D%�0�bИ(^��Q��|�H<%��^9�x'ɯMb��NLS��āJ�ٽ��r�r6`�[��A�SR�Rd<(*v�Ϣ7�t_5���)�R�� b@Y�z*�?eAE��Qߺ`'o?�(�]�{�Q+�oC�RE+H~��k����prD�aG�)O�z0>�%�;*YN��nM-d�?�'ƛ���4�)����.	�h��j	�ǎ��-�1�IK$�I�N�Ge��X'��}�4��}��ɉ�8����c[��E�۶U*��JMG��+g��b��<H�x����m��Ξ�Q�_�~���8��U��uu��bN��lǾ�G,1{��}p�Ze�<�T��$�Գ�{��@���DV��m�����=�ʽq�vxx}'�{���~�o"E
�_4�ط���-�p"�xCn��Z0[8�<��������p:��<� �����ʥLS�N��4OO�?�|��z}�� �B��h�8�PJ���$��l��:�	��0NJs��,�:1$�w����m;�(Uخ�Nr���*09ܗ�00�	TQ�]�«�8�����$�]�w�41N�C�X�D�U9gٿ�898d�2�R��]�W��Qr(L}�d����x��zp�&z�6�8* v]��C\��R*�7KJ{S����s��K�>T��d�)q����7_i�<� �?a�	#U	TB�n�4K��G�,��sO���=�r��*��5,&m.��������߇��;@��2��������Ѕz*Gn*�:K$g�aN��Sn�����9ʉ�AQl���?�U�3���Ӊg�h�Xus����'��O���N���`#=?oN��5����4"MIc<=��X�n��#ݿb'�;�K��x�)���!&j�b��5W���!�S�Ӽ*���S�è���`JQ� �$L3Z���ݪ����ʠ�򾩑�����Dh�P��Y��N3R�:!�����J�����T���m�"�9%9͙����\4#��Y
]��I��B�<�6HC��if�����j���rg_�ӡ�䫗������4g��g��y=g��ßAt������0��5�xJ�x���0P��g��!�YEek@��*��lݪú��5�{�c\!�c%BiL'L"�T��GeC�)���$�{��w�-��}�ID #FQ''e��٤�D CՀ��N����+k��R<��N
'd� �Ԝ:�HV���<�;;�0G��C��2��:1`��R�F":THIW?OOܳ*�A�O~����4���B�@(�FA+s����q�hfpUu
b	=Nε����\\n�D	�3��7��+���D�ʞK��91�Ҩ�/)����It��m�895f*�h2���u�^��u]�������wt��8Fl��������تd��`	��r�����OF���!ُ>��ɱ`����뵋�'�����8+�C`3,����3��X=:7V�P�:c����q��jx3�Bo�A;�6N��ݢ`���5C�L�ρFj뺱�%H�=�*O�����#]�b]��x�=�|#5�asC���ʽ�r��p8@�>��h=.������͚���U:��&�j��'Y܇|xqNj����Е~���(���w�"�����D����d�=l�c���}��Uh!�j�@���T�y��$������a̺=�C`~D]�u_c��Q���Wx�C;C��*��2��UI�,<N���DLv���h�"ټ��o���Kd��S��	�ټ���(��k%��;|�oȘ����VI��'g:�Lش$M7���c߲"S�(e��Dn�ܪj��kc������䄓�����*BF宸�8N�X
�Qs��6>jTn�^'.�a��{K�HJcN�g����;I��T%P	�N�LU�����D���Y%��(r+�����ts�{0&'�-�
0�À�4i�\Ĥ8QiSW�r�zB�`��:b�	<m����a�ǉi6iB��h�h#�'j��  �s�B}�!3�"��f�̣�cS/tJ�{��]���d�l�<���i ϝ��_Y'�F��e��|̃�,�U����,'�G��cU���m�M�Y����~��T-ԓڶFm)`�a!Ț��K�Q� �X�^N��f�,N�N�t")#A�-���˿r�bX:�=�ѸIF��Rw2M�'-+zXM��b�U("hh�g�Nנ�-7����{����25�U.br�`ƥ	���
�<��r��Q��Bj��B	��X����7�Q�q� ���\J�U#�J�Y}W��M&+��?��oa����ߘja]_���L4E�F�p����v�qB�c���b�\+K�*��׀(E�/����`�iJY9��(�)��3��|`R�"�5z�+����q��NG�P`8td�kd� :)�Ix�1�X�����`�U$p0���'�F)}N��C9ES�q�k�߾?��R��TK�oG�;'r���.�8���|` ��-����GH�N0�j8���;9\FV�qNj�n7�`AJ�sK��:�C��F��,Ȥ���'��{i�nY"T�/�	�Xʻ}�iJ(���I���N���ZEŶ b���q��}���ɇ�O)�'�"�X]����P͚�n_|#er�lT����>����d���MԉfO�J�x_8+���S}��	����,0�'���F�����,�	9��~�^A�n��'�˥3����D��[+��X��+�!á�����ҡ=�a��\�J&�H�,'KC�1Gv�n{���y,7�Ȏt����Rc�|4��댈)�P��PL4�;�2���k�D�[@9\*�ڐ� N>v�լ�@]Fs7�{Xr��F��y�~O;�&GP��"�iKL$��(�Y�e��!Jy/��3�i��������O�0�.w<�B<?���,��\��.�O��m�.C3�S4�_�s'߿� ���su��F��R��ȧ���='�%�6��,�$���r�d'�`R��3��3����ƩP�Sc$��������pO����M���%��ML��7E2�WȈ'�̴*����B�	=���H��F��v��(�ω<\���ɩ�Ũ��fNٶ����c&�4+D��(F�2@D3'8�}	(�f�(��֑{)q���Y���)��� Ի(JdvZAW}�l�� ����ֿ�q���L+(�8X��J
3�.5�7��y6�qe��
�|���H���,�e��,�-�{�&r[,क़h���Z��	2�Ш�	�_C��bB�o�K�,ƭqr	p�R��K�0*cr"A��0�C6+!��(�
�ƿ���W&a�Mz6M)�R�.0R�@%�;5z1POFE�}('"_gP3�&����ȉV�����q��A~��L�0�=M���f@g@'G��e��sk�}B�fh�C[��J?K�2iB��nf��3��"�h���{e6�����G�X,Y��B�9���?${������p�M��.�`yw�KD�n��<�������V�ڴ�[%m|���>~ܶ�<�իb�3�>��&���qz�3e�Wa��`L����`wa����?y��9����]f.ɢt��&O �M���s��.�����zTw��p�><��q~h:�r>�RB��K��J
�v)/?����u�,�4�������
"g�G�i|���aʐåh����B:oUM���aFfbj@�.�hE7%�R$7��PJ0��D�q=3j�C�v /-�N�\!e���^�
��x
���O8ܓ���H�a"3��>�8�C�S�5��- }��ϔÖЩ?K	DON�J��9	~&�C�6(��IJ�ԔC$��q�f)t*��'PMD�S���H��݂@���	�����@���*x�%��㉙�NEm�?$G�u�s�z�`o���ca��S��Ԋ�R"�a�E�%Ȉ}����&��@:{p����fY�/�k��p�ڽ�؅��-��e�����)1Ei(r.�o89����w.fo	��L�=La�V��8�x~&9�����l|S���<EGM�[/%���~U��H�J�m��1��(�+J�� ��eY�\�59��Z�N,M������޶K�2�uI�����Ii�0VS�992&�x޺X8�3�e!�7�b޶�����W��?��V�J�#�r�}o
T�"Y(�f���L.d��H�9�23����E�YXX<��b���|m:m�$7�����.J˜�g6���/8rN��U�	�_~��,\��0���#���j��ǀ�����3�ZXHh���ݱ��[�\����I��Q�R�z���o����ޛF?�N�rI� (ȇ �W���� ���3��PČF��w0��6�$R�D�#�(�=b�z!6�{'ȥKt����#�x|xh� �M��c�VlYy��&�>a��R��߉�` ˿A2�F��=�#!Sk�M��.�f�9	0Q%M��������F�s�<�
��ת���UҤ����౗5ŏ*�Z���NIl��
2�p��������dV�R֔�J�\C�Hէ*�u���$�b�E;�<� ��"��9�-y�p%��%�H�9ACٶ�D��o��LS����"�j��-���+ئr�J��[�PG��M�"z&X��.��S
/��""��t~$��J��$�b���,L%��I�.=�I��u��0�5"$d�2���b�B�#��ݣ��z���(�NS9��X���0+��X�g)�-���ݫÓ�}�\�0u��V6ʉg�9I�d�O������a��_�oU�"�륩�{ߦ�?��FA�)�0㝜���"�y+�q�ZW�$J�]J�D�8��c��8�r�x2f�(��q�:>%���;�<����q��I�mE����b�u�(NL��
:Y�g#C�,���e��s��R ��0ᎄ�<Q'�]��a�3�#D�q����7$���v�q�F�;o6�$�C�P4�N:�1�`M"r�D�s�lq#�iwf#N �x&�JU�6$��[�������hW=��>'�
Q7�>�-��^'�3�7t��Y.x=N|����Bs���Y�<�x�8���8��%l#0��I?8j#N�m��@g9���^��06!'���l��N�	#����Ɯ8ƌ�!��2v"o3��C(.��}�Dd2Xs��f�T6k&�3vp��ߓ���1}5`�	t������v��9n#�{͚�z�ؓ�9���t؛��i޺Wk�[�̓�V�hf�Ѷ����$gm�o�*{�w����z��!�-��Al)���{�#�$�[>�Y���=��{G�_�K�Vؙ��Al)�{�=�����"5��;�_�Y���=uI��6���    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/tiles_packed.png-e30fee562516f758671a60fa06a30501.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://art/tiles_packed.png"
dest_files=[ "res://.import/tiles_packed.png-e30fee562516f758671a60fa06a30501.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
[gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [remap]

path="res://Coin.gdc"
 [remap]

path="res://Key.gdc"
  [remap]

path="res://Player.gdc"
               [remap]

path="res://World.gdc"
�PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name          simple-platformer-2.0      application/run/main_scene         res://World.tscn   application/config/icon         res://icon.png  +   gui/common/drop_mouse_on_gui_input_disabled         )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres     