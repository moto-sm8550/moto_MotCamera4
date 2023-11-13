.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$decoderCallback$1;
.super Ljava/lang/Object;
.source "SuperSlowMotionProcess.kt"

# interfaces
.implements Lcom/motorola/camera/superslowmotion/SuperSlowMotionDecoderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;-><init>(Landroid/content/Context;Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;JJJJLcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$decoderCallback$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDecoderError(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$decoderCallback$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    const-string v0, "Decoder error"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->abortProcess(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
