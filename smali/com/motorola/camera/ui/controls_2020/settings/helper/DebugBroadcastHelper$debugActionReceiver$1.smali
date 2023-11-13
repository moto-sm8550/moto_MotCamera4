.class public final Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper$debugActionReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "DebugBroadcastHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper$debugActionReceiver$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

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

    const-string p1, "com.motorola.camera3.EXTRA_ACTION"

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper$debugActionReceiver$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->exitingAction:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_2

    .line 4
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper$debugActionReceiver$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->enteringAction:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_2

    .line 7
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method
