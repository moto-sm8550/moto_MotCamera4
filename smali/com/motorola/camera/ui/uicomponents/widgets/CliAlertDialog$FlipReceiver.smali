.class public final Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$FlipReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CliAlertDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FlipReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$FlipReceiver;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 p1, -0x1

    if-eqz p2, :cond_0

    const-string v0, "com.motorola.hardware.extra.LID_STATE"

    .line 1
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$FlipReceiver;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->dismiss()V

    :cond_1
    return-void
.end method
