.class public final Lcom/motorola/camera/service/SelfieCameraTileService$actionReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SelfieCameraTileService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/service/SelfieCameraTileService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/service/SelfieCameraTileService;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/service/SelfieCameraTileService;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/service/SelfieCameraTileService$actionReceiver$1;->this$0:Lcom/motorola/camera/service/SelfieCameraTileService;

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
    iget-object p0, p0, Lcom/motorola/camera/service/SelfieCameraTileService$actionReceiver$1;->this$0:Lcom/motorola/camera/service/SelfieCameraTileService;

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.motorola.camera3.ACTION_ENABLE_SELFIE_TILE"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, Landroid/service/quicksettings/Tile;->setState(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.motorola.camera3.ACTION_DISABLE_SELFIE_TILE"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method
