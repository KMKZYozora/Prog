# PowerShell

## ハードウェア制御
    ### シャットダウン
        Stop-Computer -Force

    ### 再起動
        Restart-Computer -Force

## エクスプローラ
    ### フォルダ
        $Path3 = "D:\Users\Desktop/test"
        $Path1 = "$Path3/Folder"
        $Path2 = "$Path1`2"
        ### 生成
            New-Item -Path $Path1 -ItemType Directory -Force

        ### 名前変更
            Rename-Item -LiteralPath $Path1 -NewName $Path2

        ### 移動, リネーム
            Move-Item　-LiteralPath $Path2 -Destination $Path1

        ### プロパティ 取得
            $Time = (Get-ItemProperty -LiteralPath $Path1).LastWriteTime

        ### プロパティ 設定
            Set-ItemProperty -Path $Path1
            
        # 削除
            Remove-Item -LiteralPath $Path3 -Recurse

    ### テキストファイル

        ### 生成
            New-Item -Path $Path1 -ItemType Directory -Force
            Out-File

        ### 名前変更
            Rename-Item -LiteralPath $Path1 -NewName $Path2

        ### 移動, リネーム
            Move-Item　-LiteralPath $Path2 -Destination $Path1

        ### 削除
            Remove-Item -LiteralPath $Path3 -Recurse
    


## オブジェクト
    ### Excel
        New-Object -ComObject Excel.Application

    ### ウィンスクリプトシェル
        New-Object -ComObject WScript.Shell