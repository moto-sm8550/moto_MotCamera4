.class public final Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;
.super Ljava/lang/Object;
.source "RoiStates.java"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/RoiStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lib3AGuardRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/fsm/GuardedTransitionRunnable<",
        "Lcom/motorola/camera/fsm/camera/FsmContext;",
        ">;"
    }
.end annotation


# instance fields
.field public final m3A:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->m3A:I

    return-void
.end method


# virtual methods
.method public final canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->m3A:I

    invoke-static {p0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p0

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eq p0, p2, :cond_2

    const/4 p2, 0x2

    if-eq p0, p2, :cond_1

    const/4 p2, 0x3

    if-eq p0, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkIsp6S3ALib()Z

    move-result p1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSamsung3ALib()Z

    move-result p1

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->get3ALibType()I

    move-result p0

    if-ne p0, p2, :cond_4

    move p1, p2

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMoto3ALib()Z

    move-result p1

    :cond_4
    :goto_0
    return p1
.end method
