Redmine::Plugin.register :calibre do
  name 'Calibre plugin'
  author 'Anass SOFAINY'
  url ''
  author_url ''

  description 'Plugin pour afficher les livres dans la librairie Calibre'
  version '0.0.1'
  requires_redmine version_or_higher: '4.1.3'

  settings partial: 'settings/calibre_settings',
    default: {
      'project' => 'Calibre' ,
      'calibre_library' => 'Calibre',
      'calibre_web_protocol' => 'http',
      'calibre_web_hostname' => 'localhost',
      'calibre_web_port' => '80' ,
    }
  
end
