.class public final Lcom/motorola/camera/service/QrScannerTileService$actionReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "QrScannerTileService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/service/QrScannerTileService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/service/QrScannerTileService;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/service/QrScannerTileService;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/service/QrScannerTileService$actionReceiver$1;->this$0:Lcom/motorola/camera/service/QrScannerTileService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/service/QrScannerTileService$actionReceiver$1;->this$0:Lcom/motorola/camera/service/QrScannerTileService;

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x681fdba9

    if-eq p2, v0, :cond_3

    const v0, -0x222fc0c0

    if-eq p2, v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, "com.motorola.camera3.ACTION_DISABLE_QR_SCAN_TILE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/service/quicksettings/Tile;->setState(I)V

    goto :goto_0

    :cond_3
    const-string p2, "com.motorola.camera3.ACTION_ENABLE_QR_SCAN_TILE"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :cond_4
    :goto_1
    return-void
.end method
