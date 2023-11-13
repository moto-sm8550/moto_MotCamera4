.class public final Lcom/motorola/camera/shared/OrientationEvent;
.super Landroid/view/OrientationEventListener;
.source "OrientationEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;
    }
.end annotation


# static fields
.field public static mCurrentOrientation:I


# instance fields
.field public final mCurrentDisplay:Landroid/view/Display;

.field public final mDisplayListener:Lcom/motorola/camera/shared/OrientationEvent$1;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayRotation:I

.field public final mHandler:Landroid/os/Handler;

.field public final mIsCliDisplay:Z

.field public mLimitOrientation:Z

.field public final mOnRotationChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public mOrientation:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/OrientationEvent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/shared/OrientationEvent;->mLimitOrientation:Z

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/shared/OrientationEvent;->mOnRotationChangeListeners:Ljava/util/Set;

    .line 5
    new-instance v0, Lcom/motorola/camera/shared/OrientationEvent$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/shared/OrientationEvent$1;-><init>(Lcom/motorola/camera/shared/OrientationEvent;)V

    iput-object v0, p0, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayListener:Lcom/motorola/camera/shared/OrientationEvent$1;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentDisplay:Landroid/view/Display;

    .line 7
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/shared/OrientationEvent;->getDisplayRotation()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayRotation:I

    .line 9
    iput-boolean p2, p0, Lcom/motorola/camera/shared/OrientationEvent;->mIsCliDisplay:Z

    .line 10
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/motorola/camera/shared/OrientationEvent;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    .line 11
    iget p0, p0, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayRotation:I

    sput p0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    :cond_0
    return-void
.end method

.method public static getSurfaceRotationDegrees(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0
.end method


# virtual methods
.method public final disable()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/shared/OrientationEvent;->mIsCliDisplay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayListener:Lcom/motorola/camera/shared/OrientationEvent$1;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    .line 3
    sput v0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method public final declared-synchronized dispatchOnRotationChanged()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/shared/OrientationEvent;->mOnRotationChangeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;

    .line 2
    sget v2, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    iget v3, p0, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayRotation:I

    invoke-interface {v1, v2, v3}, Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;->onRotationChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final enable()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/shared/OrientationEvent;->mIsCliDisplay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/shared/OrientationEvent;->getDisplayRotation()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayRotation:I

    .line 3
    sput v0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayListener:Lcom/motorola/camera/shared/OrientationEvent$1;

    iget-object v2, p0, Lcom/motorola/camera/shared/OrientationEvent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 5
    :cond_0
    invoke-super {p0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public final getDisplayRotation()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/shared/OrientationEvent;->getSurfaceRotationDegrees(I)I

    move-result p0

    return p0
.end method

.method public final onOrientationChanged(I)V
    .locals 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1
    iget-boolean p1, p0, Lcom/motorola/camera/shared/OrientationEvent;->mIsCliDisplay:Z

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayRotation:I

    goto :goto_0

    :cond_0
    return-void

    .line 3
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/motorola/camera/shared/OrientationEvent;->mLimitOrientation:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/motorola/camera/shared/OrientationEvent;->mOrientation:I

    const/4 v3, 0x1

    if-ne v1, v0, :cond_3

    goto :goto_1

    :cond_3
    sub-int v0, p1, v1

    .line 4
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rsub-int v4, v0, 0x168

    .line 5
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v4, 0x3c

    if-lt v0, v4, :cond_4

    :goto_1
    move v2, v3

    :cond_4
    if-eqz v2, :cond_5

    add-int/lit8 p1, p1, 0x2d

    .line 6
    div-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p1, p1, 0x5a

    rem-int/lit16 p1, p1, 0x168

    move v2, p1

    goto :goto_2

    :cond_5
    move v2, v1

    .line 7
    :goto_2
    iput v2, p0, Lcom/motorola/camera/shared/OrientationEvent;->mOrientation:I

    .line 8
    sget p1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    if-eq p1, v2, :cond_6

    .line 9
    sput v2, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/shared/OrientationEvent;->dispatchOnRotationChanged()V

    :cond_6
    return-void
.end method
