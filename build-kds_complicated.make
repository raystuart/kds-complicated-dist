core = 7.x
api = 2

; Include the definition for how to build Drupal core, including patches:
includes[] = drupal-org-core.make

; Download the KDS Complicated install profile and build all its dependencies:
projects[kds_complicated][type] = profile
projects[kds_complicated][subdir] = ./
projects[kds_complicated][download][type] = git
projects[kds_complicated][download][url] = git@github.com:raystuart/kds-complicated-make.git
projects[kds_complicated][download][branch] = 7.x-1.x

; This is a starter profile, let the projects download to the normal sites/all
; locations.
defaults[projects][subdir] = contrib

; Drupal Ckeditor Library
libraries[ckeditor][download][type] = get
libraries[ckeditor][download][url] = http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.3.1/ckeditor_4.3.1_standard.tar.gz
libraries[ckeditor][destination] = libraries
libraries[ckeditor][directory_name] = ckeditor

; Drupal Contrib Modules
projects[bean][version] = 1.7
projects[ckeditor][version] = 1.13
projects[context][version] = 3.1
projects[ctools][version] = 1.3
projects[date][version] = 2.7
projects[entity][version] = 1.3
projects[environment_indicator][version] = 2.2
projects[jquery_update][version] = 2.3
projects[libraries][version] = 2.1
projects[link][version] = 1.2
; projects[imageapi][version] = 1.x-dev
projects[metatag][version] = 1.0-beta9
projects[media][version] = 1.4
projects[media][patch][] = http://drupal.org/files/issues/media-error-message-when-editing-file-entity-display-options-2171115-1.patch
projects[media][patch][] = http://drupal.org/files/media-browser-pagination-2104493.patch
projects[pathauto][version] = 1.2
; projects[references][version] = 2.1
projects[state_machine][version] = 2.2
projects[token][version] = 1.5
projects[video_embed_field][version] = 2.0-beta7

; Additional Contrib Modules.
projects[admin_menu][version] = 3.0-rc4
projects[views][version] = 3.7
projects[features][version] = 2.0
projects[entityreference][version] = 1.1

projects[panels][type] = module
projects[panels][version] = 3.3
projects[panels][subdir] = contrib
; Fix for strict warning on home page.
projects[panels][patch][1632898] = "http://drupal.org/files/1632898-10.patch"
; Impossible to set attributes on Panels panes
projects[panels][patch][2169571] = "https://drupal.org/files/issues/panels_pane_template_attributes-2169571-1.patch"
; Allow the default pane style to be different.
projects[panels][patch][1985980] = https://drupal.org/files/panels-new-pane-alter-1985980-1.patch

; Simplify Views markup.
projects[fences][version] = 1.0
projects[semanticviews][version] = 1.x-dev

; Simplify Panels markup.
projects[semantic_panels][version] = 1.2
projects[panels_extra_styles][version] = 1.1

; projects[textformatter][version] = 1.3
; projects[textformatter][subdir] = "contrib"
