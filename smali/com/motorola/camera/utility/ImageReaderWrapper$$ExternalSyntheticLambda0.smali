.class public final synthetic Lcom/motorola/camera/utility/ImageReaderWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/utility/ImageReaderWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/utility/ImageReaderWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/utility/ImageReaderWrapper;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/utility/ImageReaderWrapper;

    iget-object p1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mListener:Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;->onImageAvailable(Lcom/motorola/camera/utility/ImageReaderWrapper;)V

    :cond_0
    return-void
.end method
