.class public final Lcom/motorola/camera/Camera$6;
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


# direct methods
.method public constructor <init>(Lcom/motorola/camera/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/Camera$6;->this$0:Lcom/motorola/camera/Camera;

    invoke-direct {p0}, Lcom/motorola/camera/utility/KeyguardHelper$KeyguardHelperCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissSucceeded()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/Camera$6;->this$0:Lcom/motorola/camera/Camera;

    sget-object v0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->launchGoogleLens()V

    return-void
.end method
