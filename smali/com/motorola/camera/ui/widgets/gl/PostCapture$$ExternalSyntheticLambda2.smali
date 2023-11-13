.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

.field public final synthetic f$1:Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;

    .line 1
    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 3
    sget-object v1, Lcom/motorola/camera/provider/photos/PhotosProvider;->sTemporarySnapshots:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
