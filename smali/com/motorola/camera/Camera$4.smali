.class public final Lcom/motorola/camera/Camera$4;
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

.field public final synthetic val$finalBundle:Landroid/os/Bundle;

.field public final synthetic val$launch:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/Camera;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/Camera$4;->this$0:Lcom/motorola/camera/Camera;

    iput-object p2, p0, Lcom/motorola/camera/Camera$4;->val$launch:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    iput-object p3, p0, Lcom/motorola/camera/Camera$4;->val$finalBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissSucceeded()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/Camera$4;->this$0:Lcom/motorola/camera/Camera;

    iget-object v1, p0, Lcom/motorola/camera/Camera$4;->val$launch:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    iget-object v1, v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/motorola/camera/Camera$4;->val$finalBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
