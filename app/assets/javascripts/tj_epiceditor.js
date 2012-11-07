$(function(){
  var opts = {
    container: 'epiceditor',
    basePath: '/assets/epiceditor',
    clientSideStorage: true,
    localStorageName: 'epiceditor',
    parser: marked,
    file: {
      name: 'epiceditor',
      defaultContent: '',
      autoSave: 100
    },
    theme: {
      base:'/themes/base/tj.css',
      preview:'/themes/preview/github.css',
      editor:'/themes/editor/epic-dark.css'
    },
    focusOnLoad: false,
    shortcut: {
      modifier: 18,
      fullscreen: 70,
      preview: 80,
      edit: 79
    }
  }

  var $content_area = $("#function_content"),
      epic_editor = new EpicEditor(opts);

  epic_editor.load(function(){
    epic_editor.importFile(opts.localStorageName, $content_area.val());
  });

  epic_editor.on('update', function(file){
    $content_area.val(file.content);
  });
});
