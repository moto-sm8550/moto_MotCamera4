.class public final Lcom/motorola/camera/Camera$7;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/Camera$7;->this$0:Lcom/motorola/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/Camera$7;->this$0:Lcom/motorola/camera/Camera;

    sget-object v0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->hideSystemUi()V

    return-void
.end method
