# コマンドプロプトノート

    ## 文字コード

        基本 Shif-jis
        unicode(utf8等) は実行時でない

    ## ファイルの実行

        ### 非同期での実行
            start <FileName>

        ### 同期実行
            call <FileName>

    ## Windowsアカウント

        ### 列挙
            net user

        ### 情報確認
            net user <Name>

        ### 追加
            net user <Name> /add

        ### パスワード設定
            net user <Name> <String>

        ### 管理者に変更
            net localgroup administrators <Name> /add

        
        


        