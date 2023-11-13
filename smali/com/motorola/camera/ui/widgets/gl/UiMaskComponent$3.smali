.class public final Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$3;
.super Ljava/lang/Object;
.source "UiMaskComponent.java"

# interfaces
.implements Lcom/motorola/camera/saving/SaveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReviewSaveComplete(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V
    .locals 0

    return-void
.end method

.method public final onSaveComplete(Lcom/motorola/camera/CameraData;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mLastUri:Landroid/net/Uri;

    .line 3
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mLastDocFinish:Z

    .line 9
    sput-boolean p1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mIsSaveComplete:Z

    .line 10
    new-instance p0, Landroid/content/Intent;

    sget p1, Lcom/motorola/camera/editor/DocEditorActivity;->$r8$clinit:I

    const-string p1, "com.motorola.camera3.DOC_EDITOR_ACTION_RECEIVER"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 12
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public final onSaveError(Lcom/motorola/camera/CameraData;)V
    .locals 0

    return-void
.end method

.method public final onSaveProcessing(Lcom/motorola/camera/CameraData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 2
    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mLastUri:Landroid/net/Uri;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mLastDocFinish:Z

    return-void
.end method
