using assembly System.Windows.Forms
using namespace System.Windows.Forms

param(
    # 最初に表示するディレクトリ
    $InitialDirectory = "",
    $Filter = "全てのファイル(*)|*",
    $Title = "ファイルを選択してください。"
)

# OpenFileDialogクラスをインスタンス化し、必要な情報を設定
$dialog =[OpenFileDialog]::new()
$dialog.Filter = $Filter
$dialog.InitialDirectory = $InitialDirectory
$dialog.Title = $Title
# ダイアログを表示
if($dialog.ShowDialog() -eq "OK"){
  # ［OK］ボタンがクリックされたら、選択されたファイル名（パス）を表示
  $FileName = $dialog.FileName
}

return $FileName