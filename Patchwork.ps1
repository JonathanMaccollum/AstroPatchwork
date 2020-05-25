Function New-PatchworkSource
{
    param(
        [String]$Author,
        [String]$Source,
        [String]$Target
    )
    new-object psobject -Property @{
        Author=$Author
        Source=$Source
        Target=$Target
    }
}
import-module "$PSScriptRoot\Bin\DeepZoomTools.DLL"

$sources = @(
    #New-PatchworkSource -Target "BGStars" -Author PixInsight -Source "D:\Backups\Camera\Astrophotography\50mm\Andromeda to Orion\17mm\CatalogStars.png"
    #New-PatchworkSource -Target "BGStars2x" -Author PixInsight -Source "D:\Backups\Camera\Astrophotography\50mm\Andromeda to Orion\Processing\CatalogStars.2x.png"
    #New-PatchworkSource -Target "Annotated" -Author PixInsight -Source "D:\Backups\Camera\Astrophotography\50mm\Andromeda to Orion\17mm\CatalogStars_Annotated.png"
    #New-PatchworkSource -Target "P012349" -Author eigenVector -Source "D:\Backups\Camera\Astrophotography\50mm\Andromeda to Orion\Finished\MergeMosaic.P01239.png"
    #New-PatchworkSource -Target "LDN1472LDN1448" -Author eigenVector -Source "https://i.redd.it/vipgw5dfj3g41.jpg"
    #New-PatchworkSource -Target "FlamingStar" -Author zirput -Source "https://i.redd.it/wbz1w8pugdh41.jpg"
    #New-PatchworkSource -Target "M78" -Author zirput -Source "https://cdn.discordapp.com/attachments/544305081009438720/680921839794651156/m78-_small_png.png"
    #New-PatchworkSource -Target "Cone" -Author zirput -Source "https://i.redd.it/f5pbwyv7g2f41.png"
    #New-PatchworkSource -Target "M33" -Author zirput -Source "https://i.redd.it/2dppz6qggdh41.jpg"
    #New-PatchworkSource -Target "M31" -Author zirput -Source "https://i.redd.it/m4c0kr1agdh41.jpg"
    #New-PatchworkSource -Target "Rosette" -Author zirput -Source "https://i.redd.it/b8u03vangdh41.png"
    #New-PatchworkSource -Target "DoubleCluster" -Author zirput -Source "https://cdn.discordapp.com/attachments/678379990018162689/678380122042007582/Comet-_large.jpg"
    #New-PatchworkSource -Target "M45" -Author zirput -Source "https://i.redd.it/v0n7hyf17h841.jpg"
    #New-PatchworkSource -Target "Annotated2x" -Author PixInsight -Source "D:\Backups\Camera\Astrophotography\50mm\Andromeda to Orion\Processing\CatalogStars.2x.Annotated.png"
    #New-PatchworkSource -Target "NGC206" -Author eigenVector -Source "D:\Backups\Camera\OneDrive\Pictures\Astrophotography\M31 - Andromeda\NGC206.HaLRGB.L90x120.R49x120.G48x120.B47x120.Ha41x240.Processed2.jpg"
    #New-PatchworkSource -Target "C2017T2PANSTARRS" -Author eigenVector -Source "https://i.redd.it/tpuxgwr61t341.jpg"
    #New-PatchworkSource -Target "DarkNebulaInCamelopardialis_v2" -Author eigenVector -Source "D:\Backups\Camera\Astrophotography\50mm\Andromeda to Orion\Finished\DarkNebulaInCamelopardialis.135mm.L3.D1.211xs120s.Crop.DBE.BN.PCC.NR.Draft5.png"
    #New-PatchworkSource -Target "Mel20" -Author eigenVector -Source "D:\Backups\Camera\Astrophotography\50mm\Andromeda to Orion\Finished\Mel20.OpenCluster.14x120s.quickintegration.quickprocess2.png"
    #New-PatchworkSource -Target "P0" -Author eigenVector -Source "D:\Backups\Camera\Astrophotography\50mm\Andromeda to Orion\Finished\P0.png"
    #New-PatchworkSource -Target "Spaghetti" -Author Lefty -Source "s:\dzi\Spaghetti_Patchwork.png"
    #New-PatchworkSource -Target "Patchwork.17mm.Mosaic" -Author Lefty -Source "https://live.staticflickr.com/65535/49474607717_3e36185a97_o.jpg"
    #New-PatchworkSource -Target "Horsehead" -Author "hotspicybonr" -Source "https://i.redd.it/yoi99i9z76341.jpg"
    #New-PatchworkSource -Target "M45" -Author "hinterlufer" -Source "https://i.redd.it/1wmj3n567n241.jpg"
    #New-PatchworkSource -Target "M45" -Author "The_8_Bit_Zombie" -Source "https://i.imgur.com/ZDwkBKy.jpg"
    #New-PatchworkSource -Target "LDN1622" -Author "The_8_Bit_Zombie" -Source "https://i.imgur.com/ba6wNp1.jpg"
    #New-PatchworkSource -Target "M42" -Author "The_8_Bit_Zombie" -Source "https://i.imgur.com/kO36MAQ.jpg"
    #New-PatchworkSource -Target "IC 410 Tadpoles" -Author "aatdalt" -Source "https://i.imgur.com/Rx08BsZ.jpg"
    #New-PatchworkSource -Target "Orion" -Author "OrangeLantern" -Source "https://i.redd.it/k65f2nwuc3l41.jpg"
    #New-PatchworkSource -Target "Orion_Reproject" -Author "OrangeLantern" -Source "S:\DZI\OrangeLantern_Orion_Patchwork.png"
    
    #New-PatchworkSource -Target "Jellyfish" -Author "" https://imgur.com/gallery/BXuRj3W
    #New-PatchworkSource -Target "California" -Author "OrangeLantern" -Source "https://i.imgur.com/wyvrrlO.jpg"
    #New-PatchworkSource -Target "Rosette" -Author "OkeWoke" -Source "https://i.redd.it/sa5wby5y6s741.jpg"
    #New-PatchworkSource -Target "FlamingStar" -Author "OrangeLantern" -Source "https://i.redd.it/rlzp1uyolkc41.jpg"
    #New-PatchworkSource -Target "Jellyfish" -Author "Machinza" -Source "https://i.imgur.com/FqzwIYw.jpg" -- Error
    #New-PatchworkSource -Target "M1" -Author "Lefty" -Source "https://c1.staticflickr.com/5/4828/30952706717_20b763b7f9_o.png"
    #New-PatchworkSource -Target "M31" -Author "usernaneisalreadytak" -Source "https://i.redd.it/p68p3ou3gwx31.jpg"
    #New-PatchworkSource -Target "M31" -Author "hotspicybonr" -Source "https://i.redd.it/9y4m55s7df241.png"
    #New-PatchworkSource -Target "M34" -Author "Lefty" -Source "https://cdn.discordapp.com/attachments/634401658188857374/673276108250284042/unknown.png"
    #New-PatchworkSource -Target "M35" -Author "Lefty" -Source "https://cdn.discordapp.com/attachments/634401658188857374/673276141787938836/unknown.png"
    #New-PatchworkSource -Target "M36" -Author "Lefty" -Source "https://cdn.discordapp.com/attachments/634401658188857374/673276167243038752/unknown.png"
    #New-PatchworkSource -Target "M37" -Author "Lefty" -Source "https://cdn.discordapp.com/attachments/634401658188857374/673276214307323944/unknown.png"
    #New-PatchworkSource -Target "M38" -Author "Lefty" -Source "https://cdn.discordapp.com/attachments/634401658188857374/673276259702276144/unknown.png"

    #New-PatchworkSource -Target "Patchwork.50mm.P0123" -Author "eigenVector" -Source  "D:\Backups\Camera\Astrophotography\50mm\Andromeda to Orion\Processing\P0.P1.P2.DNA.GMM.Alpha.png"
    #New-PatchworkSource -Target "Taurus.135mm.Panel5" -Author eigenVector -Source "D:\Backups\Camera\OneDrive\Pictures\Astrophotography\Taurus to Pleiades\P5.59x120s.integration.crop.dbe.bn.pcc.solved.NR.Final.jpg"
    #New-PatchworkSource -Target "M34.NGC891.ARP273b" -Author eigenVector -Source "D:\Backups\Camera\Astrophotography\135mm\M34 NGC891 ARP273\M34 NGC891 ARP273.58x120s.integration.DBE.BN.CC.PCC.Processed.Aligned2.png"
    #New-PatchworkSource -Target "MirachsGhost" -Author eigenVector -Source "D:\Backups\Camera\OneDrive\Pictures\Astrophotography\Mirach's Ghost\MirachsGhost.RGB72x60s.Crop.DBE.BN.PCC.NR.Draft1.Full.jpg"
    #New-PatchworkSource -Target "M76" -Author eigenVector -Source "https://i.redd.it/ezu0wzqh8mp41.jpg"
    #New-PatchworkSource -Target "LBN777.HappyLilGhost" -Author eigenVector -Source "S:\DZI\eigenVector.LBN777.HappyLilGhost.png"
    #New-PatchworkSource -Target "LBN777.HappyLilGhost.135mm.Final" -Author eigenVector -Source "E:\Astrophotography\135mm\Taurus to Pleiades\Processing2\P3.123x120s.integration.Crop.DBE.BN.CC.Solved.PCC.NR.Processed2.png"
    #New-PatchworkSource -Target "Cone" -Author "Shastarocks" -Source "https://i.redd.it/xqaiqc9rqno41.jpg"
    #New-PatchworkSource -Target "M78" -Author "Shastarocks" -Source "https://docs.google.com/uc?export=download&id=1yNEazj-1CwTOh-g-gn77ZGW0gCa0C808"
    #New-PatchworkSource -Target "RosetteAndCone" -Author ForaxX -Source "https://i.redd.it/2kiiismfkvk41.jpg"
    #New-PatchworkSource -Target "RosetteAndCone" -Author SirSocket -Source "https://i.redd.it/oer80jl9mvk41.jpg"
    #New-PatchworkSource -Target "MonkeyHead" -Author Lefty -Source "https://i.imgur.com/B3wpGtB.jpg"
    #New-PatchworkSource -Target "Patchwork.50mm.P0" -Author "eigenVector" -Source "D:\Backups\Camera\Astrophotography\50mm\Andromeda to Orion\P0.Mirach.21x240s.DBE.BN.CC.PCC.NR.Processed.jpg"
    #New-PatchworkSource -Target "Patchwork.50mm.P1" -Author "eigenVector" -Source "D:\Backups\Camera\Astrophotography\50mm\Andromeda to Orion\P1.Crop.DBE.BN.CC.PCC.NR.Processed.jpg"
    #New-PatchworkSource -Target "Patchwork.50mm.P2" -Author "eigenVector" -Source "D:\Backups\Camera\Astrophotography\50mm\Andromeda to Orion\P2.Crop.DBE.BN.CC.PCC.NR.Processed.jpg"
    #New-PatchworkSource -Target "Patchwork.50mm.P3" -Author "eigenVector" -Source "D:\Backups\Camera\Astrophotography\50mm\Andromeda to Orion\P3.Crop.DBE.BN.CC.PCC.NR.Processed.jpg"
    #New-PatchworkSource -Target "Patchwork.50mm.P9" -Author "eigenVector" -Source "D:\Backups\Camera\Astrophotography\50mm\Andromeda to Orion\P9.M34.16x240s.Crop.DBE.BN.CC.NR.Processed.jpg"
    #New-PatchworkSource -Target "Pacman" -Author "eigenVector" -Source "D:\Backups\Camera\OneDrive\Pictures\Astrophotography\Pacman\SHO.Ha.36x600.Oiii.27x600s.Sii.34x600s.Draft7.jpg"
    #New-PatchworkSource -Target "TaurusRegion" -Author "OrangeLantern" -Source "https://drive.google.com/uc?export=download&id=1MatikiOrl4lfBNA149peMSMRickE37Lr"
    #New-PatchworkSource -Target "CaliforniaToPleiades" -Author "OrangeLantern" -Source "https://drive.google.com/uc?export=download&id=1K4acq7eoLZ9TqWUKM1zwHNzQ9B1O6n58"
    #New-PatchworkSource -Target "California" -Author "Cdtj3" -Source "https://i.imgur.com/BI5nL6S.jpg"
    #New-PatchworkSource -Target "MilkyWay" -Author "OrangeLantern" -Source "https://drive.google.com/uc?export=download&id=12T5294QF5gvynFh6ir5vxaKB4oKk6z9S"
    #New-PatchworkSource -Target "CassiopeiaToAndromeda" -Author "OrangeLantern" -Source "https://drive.google.com/uc?export=download&id=17xLIuVk1JdTxiT7e2mi_aaQhWWqF0Lyg"
    #New-PatchworkSource -Target "HeartAndSoul" -Author "aatdalt" -Source "https://i.imgur.com/cakxbwZ.jpg"
    #New-PatchworkSource -Target "Witcheshead" -Author "LtChestnut" -Source "https://drive.google.com/uc?export=download&id=1gzVequq-NYOXLSShTklOevVH3tPllh2l"
    #New-PatchworkSource -Target "IC405 IC410 Reprojected" -Author "ForaxX" -Source "C:\Users\jmaccollum\Downloads\ReprojectedFlamingStar.png"
    #New-PatchworkSource -Target "Sh2-250" -Author "Lefty" -Source "https://i.imgur.com/B1O9nNQ.jpg"
    #New-PatchworkSource -Target "Sh2-188" -Author "Lefty" -Source "https://live.staticflickr.com/65535/48894116051_dde39c542e_o.png"
    #New-PatchworkSource -Target "Sh2-308" -Author "Machinza" -Source "https://cdn.discordapp.com/attachments/634401658188857374/706241287312900096/Dolphin_-_Imgur.jpg"
    #New-PatchworkSource -Target "NGC7822" -Author "aatdalt" -Source "https://drive.google.com/uc?export=download&id=1IX9ay9AkyAtrRKILcH0oCE84_zPTR-Yg"
    #New-PatchworkSource -Target "Hyades" -Author "eigenVector" -Source "E:\Astrophotography\135mm\Hyades\Hyades.136x120s.135mm.L3.integration.Draft4.png"
    #New-PatchworkSource -Target "HyadesToTaurusToPleiades" -Author "eigenVector" -Source "E:\Astrophotography\135mm\Taurus to Pleiades\Processing2\MergeMosaic.Processing2.Hyades.P1P2P3P4.Processed.png"
    #New-PatchworkSource -Target "M77" -Author "Lefty" -Source "https://live.staticflickr.com/65535/49189528811_e11c94c1a1_o.png"
    #New-PatchworkSource -Target "" -Author "" -Source ""
)
foreach($i in $sources)
{
    $imageList = new-object System.Collections.Generic.List[Microsoft.DeepZoomTools.Image]
    $imageList.Add(
        (new-object Microsoft.DeepZoomTools.Image ($i.Source)))

    
    try
    {
        $sparse = [Microsoft.DeepZoomTools.SparseImageCreator]::new()
        $sparse.MaxLevel=16
        $sparse.ConversionTileFormat = [Microsoft.DeepZoomTools.ImageFormat]::Png
        $sparse.TileFormat = [Microsoft.DeepZoomTools.ImageFormat]::Png
        $sparse.Create($imageList,"$PSScriptRoot\$($i.Author).$($i.Target).xml")
    }
    catch
    {
        write-warning $_.Exception.ToString()
        throw
    }
}