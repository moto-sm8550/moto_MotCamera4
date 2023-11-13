.class public final Lcom/motorola/camera/cli/content/CliContentViewModel$actionReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "CliContentViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/cli/content/CliContentViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/cli/content/CliContentViewModel;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/content/CliContentViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$actionReceiver$1;->this$0:Lcom/motorola/camera/cli/content/CliContentViewModel;

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

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$actionReceiver$1;->this$0:Lcom/motorola/camera/cli/content/CliContentViewModel;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/cli/content/CliContentViewModel;->dispatchAction(Landroid/content/Intent;)V

    return-void
.end method
