!! ============================================================================
!! Standard configuration options
!!
!! These may be overridden by $userprofile/.creo_personal/config.pro but
!! caution should be used!
!!
!! Steve Pearson 2016/12/05
!! ============================================================================

!! Hidden Options
!! ==============

dm_prolib_mnu_files yes
default_chamfer_scheme 45xd
windows_browser_type chromium_browser

!! Modelling Options
!! =================

show_axes_for_extr_arcs yes
enable_auto_regen yes

!! UI Options
!! ==========

visible_message_lines 2
new_relation_ui yes
new_parameter_ui yes
open_window_maximized yes
enable_popup_help yes
param_dec_places 3

!! Environment Options
!! ===================

bell no
pro_unit_sys mmks
show_dim_sign no
spin_center_display yes
mass_property_calculate automatic

!! Model Display Options
!! =====================

display shadewithedges
display_annotations no
display_axes no
display_coord_sys no
display_planes no
display_plane_tags yes
display_points no
lods_enabled no
orientation isometric
spin_with_notes no
spin_with_part_entities yes
tangent_edge_display dimmed
blended_transparency yes
edge_display_quality very_high

!! Layer Options
!! =============
!! Layers are now rule based (set in the template asm and prt files).

!! File I/O Options
!! ================

menu_show_instances no
rename_drawings_with_object both

!! Feature Options
!! ===============

allow_udf_style_cosm_threads no
millimeter_grid_interval 1
angle_grid_interval 5
user_defined_grid_interval 10
hole_file_resolution use_internal

!! Sketcher Options
!! ================

sketcher_refit_after_dim_modify no
sketcher_starts_in_2d yes
sketcher_disp_grid no
sketcher_set_grid_x_spacing 10
sketcher_set_grid_y_spacing 10
sketcher_lock_modified_dims yes

!! Plotting/Printing Options
!! =========================

use_8_plotter_pens yes
use_software_linefonts yes
pro_plot_config_dir wtpub://windchill/Libraries/Creo Standards/Plot Config
pen_table_file wtpub://windchill/Libraries/Creo Standards/Plot Config/pentable.pnt
pdf_use_pentable yes
pdf_linecap round
pdf_linejoin miter

!! Drawing Options
!! ===============

todays_date_note_format %yyyy-%mm-%dd
auto_regen_views yes
make_parameters_from_fmt_tables yes
make_aux_view_notes yes
save_drawing_picture_file embed
show_axes_by_view_scope all_sub_models
allow_move_view_with_move yes
parenthesize_ref_dim yes
default_clean_dim_offset 15
default_clean_dim_increment 10

!! Assembly Options
!! ================

autoplace_single_comp yes
create_temp_interfaces yes
!!
!! If multiple skels is not set here opening an assy that already has them Creo
!! will delete them (helpfully)
multiple_skeletons_allowed yes
!!
!! Makes sure that assembly constrainst never default to normal/offset
auto_constr_always_use_offset NEVER
comp_angle_offset_eps 91
comp_normal_offset_eps -1

!! Colour Options
!! ==============

system_background_color 85.098039 85.098039 85.098039

!! Data Exchange Options
!! =====================

fix_autocad_iges_text_scale yes
use_export_2d_dialog yes

!! Dimension & Tolerance Options
!! =============================

default_dec_places 3
tolerance_standard iso
maintain_limit_tol_nominal yes

!! Paths
!! =====
!! Windchill paths are of the form:
!! wtpub://<alias server name>/Libraries/<Library name>/<folder>/<CAD Document file name>|V=<insert_version_here>
!! if |V=<insert_version_here> is omitted then the latest version is used.

start_model_dir wtpub://windchill/Libraries/Creo Standards/Templates
template_solidpart wtpub://windchill/Libraries/Creo Standards/Templates/mmks_part_solid.prt
template_designasm wtpub://windchill/Libraries/Creo Standards/Templates/mmks_asm_design.asm
template_drawing wtpub://windchill/Libraries/Creo Standards/Templates/a2_template_g2trc.drw
pro_material_dir wtpub://windchill/Libraries/Creo Standards/Materials
pro_surface_finish_dir wtpub://windchill/Libraries/Creo Standards/Surface Finish/
!!
!! This does not seem to work from Windchill.
!! pro_colormap_path wtpub://windchill/Libraries/Creo Standards/Appearances
!! global_appearance_file wtpub://windchill/Libraries/Creo Standards/Appearances/global.dmt
!!
pro_format_dir wtpub://windchill/Libraries/Creo Standards/Formats
pro_table_dir wtpub://windchill/Libraries/Creo Standards/Tables
drawing_setup_file wtpub://windchill/Libraries/Creo Standards/Drawing Setup/bs8888.dtl
pro_dtl_setup_dir  wtpub://windchill/Libraries/Creo Standards/Drawing Setup
pro_symbol_dir wtpub://windchill/Libraries/Creo Standards/Symbols
hole_parameter_file_path wtpub://windchill/Libraries/Creo Standards/Holes
restricted_val_definition  wtpub://windchill/Libraries/Creo Standards/Templates/restricted_vals.lst
pro_library_dir wtpub://windchill/Libraries/Standard Parts

!! Local paths
!! ===========
!! These are deliberately local so that a user may override/modify them.

symbol_instance_palette_file $USERPROFILE\.creo_personal\sym_palette.drw
!pro_note_dir $USERPROFILE\.creo_personal\notes\
trail_dir $USERPROFILE\.creo_trail_files
mdl_tree_cfg_file $USERPROFILE\.creo_personal\tree.cfg
pro_colormap_path $USERPROFILE\.creo_personal\colours

!! Windchill
!! =========

allow_import_file_extension txt,sym,tbl,xml,mtl,pro,dmt,dtl,hol,pcf,pnt,mnu
!! sets the format for parameters such as PTC_WM_MODIFIED_ON
!! Syntax of the form %yyyy-%mm-%ddT%Hh:%mi:%ss
date_type_parameter_format %yyyy-%mm-%ddT%Hh:%mi:%ss

!!
!! Unused options
!! ==============

!save_texture_with_model yes
!pro_texture_library c:\ptc\graphics\
!pro_group_dir $USERPROFILE\ProStandards\Groups\

search_path_file $USERPROFILE\ProStandards\Configs\search.pro

!! Misc. options
!! =============

save_dialog_for_existing_models no
dxf_out_drawing_scale yes
dxf_out_scale_views yes
!! This will update the pro_mp_mass parameter to reflect the components shown
!! in the simplified rep i.e., the drawing mass will be correct. NB the drawing
!! will show the mass of whichever is the current active rep.
force_upd_assem_mp_in_simp_rep yes

!! Mapkeys
!! =======
!! prints to a PS file, expects a pcf file called <PS File - Full Plot>
mapkey $F2 @MAPKEY_NAMEprints to a PS file;@MAPKEY_LABELprint2ps;\
mapkey(continued) ~ Close `main_dlg_cur` `appl_casc`;~ Command `ProCmdModelPrint` ;\
mapkey(continued) ~ Select `print_config` `CascadeButton1`;\
mapkey(continued) ~ Close `print_config` `CascadeButton1`;\
mapkey(continued) ~ Activate `print_config` `PS File - Full Plot`;\
mapkey(continued) ~ Activate `print_config` `OK`;~ Activate `Print_file` `OK`;\
mapkey(continued) ~ Activate `main_dlg_cur` `main_dlg_cur`;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `PREVIEW_POPUP_TIMER` \
mapkey(continued) `main_dlg_w1:PHTLeft.AssyTree:<NULL>`;\
mapkey(continued) ~ Activate `main_dlg_cur` `main_dlg_cur`;

mapkey $F3 @MAPKEY_LABELHide Imported Layer ;\
mapkey(continued) ~ Command `ProCmdMdlTreeShowLyrs`;\
mapkey(continued) ~ Select `main_dlg_cur` `PHTLeft.PHLayerUI.AssyTree` 1 `node0:00_IMPORTED`;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `PHTLeft.PHLayerUI.AssyTree` `node0:00_IMPORTED`;\
mapkey(continued) ~ Command `ProCmdViewHide`;\
mapkey(continued) ~ Command `ProCmdLayer_ShowMdlTree` ;\
mapkey(continued) ~ Command `ProCmdViewRepaint`;

mapkey $F4 @MAPKEY_LABELUnhide Imported Layer ;\
mapkey(continued) ~ Command `ProCmdMdlTreeShowLyrs`;\
mapkey(continued) ~ Select `main_dlg_cur` `PHTLeft.PHLayerUI.AssyTree` 1 `node0:00_IMPORTED`;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `PHTLeft.PHLayerUI.AssyTree` `node0:00_IMPORTED`;\
mapkey(continued) ~ Command `ProCmdViewShow`;\
mapkey(continued) ~ Command `ProCmdLayer_ShowMdlTree` ;\
mapkey(continued) ~ Command `ProCmdViewRepaint`;

mapkey $F5 @MAPKEY_LABELHide Skel Layer;\
mapkey(continued) ~ Command `ProCmdMdlTreeShowLyrs`;\
mapkey(continued) ~ Select `main_dlg_cur` `PHTLeft.PHLayerUI.AssyTree` 1 `node0:13_SKELS`;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `PHTLeft.PHLayerUI.AssyTree` `node0:13_SKELS`;\
mapkey(continued) ~ Command `ProCmdViewHide`;\
mapkey(continued) ~ Command `ProCmdLayer_ShowMdlTree` ;\
mapkey(continued) ~ Command `ProCmdViewRepaint`;

mapkey $F6 @MAPKEY_LABELShow Skel Layer;\
mapkey(continued) ~ Command `ProCmdMdlTreeShowLyrs`;\
mapkey(continued) ~ Select `main_dlg_cur` `PHTLeft.PHLayerUI.AssyTree` 1 `node0:13_SKELS`;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `PHTLeft.PHLayerUI.AssyTree` `node0:13_SKELS`;\
mapkey(continued) ~ Command `ProCmdViewShow`;\
mapkey(continued) ~ Command `ProCmdLayer_ShowMdlTree` ;\
mapkey(continued) ~ Command `ProCmdViewRepaint`;
