# 引用 System.Windows.Forms 命名空间
Add-Type -AssemblyName System.Windows.Forms
# 循环语句
while ($true) {
    # 获取随机目标位置，渐进的移动到目标位置
    $x2 = Get-Random -Minimum 0 -Maximum 2048
    $y2 = Get-Random -Minimum 0 -Maximum 1152
    Write-Host "目标点位 $x2, $y2"
    # 循环里面控制光标线性移动
    while  ([Math]::Abs($currentx - $x2) -gt 5) {
            # 获取当前光标位置
          $cursorPosition = [System.Windows.Forms.Cursor]::Position
          $currentx = $cursorPosition.X
          $currenty = $cursorPosition.Y
        # 目标x坐标在右边
        if ( $x2  -gt $currentx ) {
            $currentx = $currentx + 1
        } else {
            $currentx = $currentx - 1
        }

        # 目标y坐标在上边
        if (  $y2 -gt $currenty ) {
            $currenty = $currenty + 1
        } else {
            $currenty = $currenty - 1
        }

        # 移动鼠标光标到指定位置
        [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($currentx, $currenty)
        Write-Host "移动到了 $currentx, $currenty"
 
    }
     Start-Sleep -Seconds 20
}