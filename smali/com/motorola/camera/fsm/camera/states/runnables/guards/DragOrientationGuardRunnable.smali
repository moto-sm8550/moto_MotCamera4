.class public final Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable;
.super Ljava/lang/Object;
.source "DragOrientationGuardRunnable.java"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/fsm/GuardedTransitionRunnable<",
        "Lcom/motorola/camera/fsm/camera/FsmContext;",
        ">;"
    }
.end annotation


# instance fields
.field public final mOrientation:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable;->mOrientation:I

    return-void
.end method


# virtual methods
.method public final canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p1

    if-nez p1, :cond_12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    instance-of p1, p2, Landroid/os/Bundle;

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "DIRECTION"

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "ORIENTATION"

    .line 6
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 7
    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable;->mOrientation:I

    invoke-static {p0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p0

    const/16 v0, 0x10e

    const/16 v1, 0x5a

    const/4 v2, 0x4

    const/16 v3, 0xb4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz p0, :cond_e

    if-eq p0, v6, :cond_a

    if-eq p0, v5, :cond_6

    if-eq p0, v4, :cond_2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    if-eq p1, v2, :cond_13

    :cond_3
    if-ne p2, v3, :cond_4

    if-eq p1, v4, :cond_13

    :cond_4
    if-ne p2, v1, :cond_5

    if-eq p1, v5, :cond_13

    :cond_5
    if-ne p2, v0, :cond_12

    if-ne p1, v6, :cond_12

    goto :goto_1

    :cond_6
    if-nez p2, :cond_7

    if-eq p1, v4, :cond_13

    :cond_7
    if-ne p2, v3, :cond_8

    if-eq p1, v2, :cond_13

    :cond_8
    if-ne p2, v1, :cond_9

    if-eq p1, v6, :cond_13

    :cond_9
    if-ne p2, v0, :cond_12

    if-ne p1, v5, :cond_12

    goto :goto_1

    :cond_a
    if-nez p2, :cond_b

    if-eq p1, v5, :cond_13

    :cond_b
    if-ne p2, v3, :cond_c

    if-eq p1, v6, :cond_13

    :cond_c
    if-ne p2, v1, :cond_d

    if-eq p1, v4, :cond_13

    :cond_d
    if-ne p2, v0, :cond_12

    if-ne p1, v2, :cond_12

    goto :goto_1

    :cond_e
    if-nez p2, :cond_f

    if-eq p1, v6, :cond_13

    :cond_f
    if-ne p2, v3, :cond_10

    if-eq p1, v5, :cond_13

    :cond_10
    if-ne p2, v1, :cond_11

    if-eq p1, v2, :cond_13

    :cond_11
    if-ne p2, v0, :cond_12

    if-ne p1, v4, :cond_12

    goto :goto_1

    :cond_12
    :goto_0
    const/4 v6, 0x0

    :cond_13
    :goto_1
    return v6
.end method
