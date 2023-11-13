.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/motorola/camera/saving/SaveListener;


# direct methods
.method public synthetic constructor <init>(ZLcom/motorola/camera/saving/SaveListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda21;->f$0:Z

    iput-object p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda21;->f$1:Lcom/motorola/camera/saving/SaveListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda21;->f$0:Z

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda21;->f$1:Lcom/motorola/camera/saving/SaveListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {p0, v1}, Lcom/motorola/camera/saving/SaveListener;->onSaveComplete(Lcom/motorola/camera/CameraData;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0, v1}, Lcom/motorola/camera/saving/SaveListener;->onSaveError(Lcom/motorola/camera/CameraData;)V

    :goto_0
    return-void
.end method
