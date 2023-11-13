.class public final Lcom/motorola/camera/Camera$5;
.super Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/Camera;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/Camera;

.field public final synthetic val$launch:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/Camera;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/Camera$5;->this$0:Lcom/motorola/camera/Camera;

    iput-object p2, p0, Lcom/motorola/camera/Camera$5;->val$launch:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    invoke-direct {p0}, Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissSucceeded()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/Camera$5;->this$0:Lcom/motorola/camera/Camera;

    iget-object p0, p0, Lcom/motorola/camera/Camera$5;->val$launch:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    iget-object v1, p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->bundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, p0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method
