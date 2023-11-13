.class public final synthetic Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceCallback;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Landroid/hardware/camera2/CaptureRequest;


# direct methods
.method public synthetic constructor <init>([Z[ZLandroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;->f$0:[Z

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;->f$1:[Z

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;->f$2:Landroid/hardware/camera2/CaptureRequest;

    return-void
.end method


# virtual methods
.method public final onSurface(Landroid/view/Surface;)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;->f$0:[Z

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;->f$1:[Z

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;->f$2:Landroid/hardware/camera2/CaptureRequest;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1
    aput-boolean v3, v0, v2

    .line 2
    aget-boolean v0, v1, v2

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/motorola/camera/Util;->GET_TARGETS_MTD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    new-array v4, v2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 5
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move p0, v2

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 6
    :goto_1
    aput-boolean v3, v1, v2

    return-void
.end method
