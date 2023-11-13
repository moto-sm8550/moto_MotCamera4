.class public final Lcom/motorola/camera/shared/OrientationEvent$1;
.super Ljava/lang/Object;
.source "OrientationEvent.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/shared/OrientationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/shared/OrientationEvent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/shared/OrientationEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/shared/OrientationEvent$1;->this$0:Lcom/motorola/camera/shared/OrientationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/shared/OrientationEvent$1;->this$0:Lcom/motorola/camera/shared/OrientationEvent;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentDisplay:Landroid/view/Display;

    .line 3
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/shared/OrientationEvent$1;->this$0:Lcom/motorola/camera/shared/OrientationEvent;

    .line 5
    invoke-virtual {p1}, Lcom/motorola/camera/shared/OrientationEvent;->getDisplayRotation()I

    move-result v0

    .line 6
    iput v0, p1, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayRotation:I

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/shared/OrientationEvent$1;->this$0:Lcom/motorola/camera/shared/OrientationEvent;

    .line 8
    iget p1, p0, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayRotation:I

    .line 9
    sput p1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/shared/OrientationEvent;->dispatchOnRotationChanged()V

    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
