.class public final Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;
.super Ljava/lang/Object;
.source "KeyGuardRunnable.java"

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


# static fields
.field public static final CAPTURE_KEYS:[I

.field public static mIgnoreDownTime:J = -0x1L


# instance fields
.field public final mKeyCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mKeyCondition:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->CAPTURE_KEYS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x17
        0x42
        0x4f
        0x19
        0x18
        0x1b
        0x55
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->CAPTURE_KEYS:[I

    invoke-direct {p0, v0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>([II)V

    return-void
.end method

.method public constructor <init>([II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mKeyCodes:Ljava/util/List;

    .line 4
    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mKeyCondition:I

    return-void
.end method


# virtual methods
.method public final canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    move-object p1, p2

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v0, "KEY_EVENT"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "KeyEvent is missing from an Event.KEY Trigger with data="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyGuardRunnable"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mKeyCodes:Ljava/util/List;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 6
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    .line 7
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->CAPTURE_KEYS:[I

    const/4 v4, 0x7

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_3

    .line 8
    aget v6, v3, v5

    if-ne v6, p2, :cond_2

    move p2, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move p2, v1

    :goto_2
    if-eqz p2, :cond_4

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCaptureAllowed()Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_8

    .line 10
    :cond_4
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v2, :cond_5

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    sget-wide v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mIgnoreDownTime:J

    cmp-long p2, v3, v5

    if-nez p2, :cond_5

    .line 11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPressKeySwitchModeSupported()Z

    move-result p2

    if-eqz p2, :cond_5

    goto/16 :goto_8

    .line 12
    :cond_5
    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mKeyCondition:I

    invoke-static {p0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p0

    if-eqz p0, :cond_e

    const-string p2, "TIMER"

    if-eq p0, v2, :cond_d

    const/4 v3, 0x2

    if-eq p0, v3, :cond_c

    const/4 p1, 0x3

    if-eq p0, p1, :cond_7

    const/4 p1, 0x4

    if-eq p0, p1, :cond_6

    goto/16 :goto_8

    .line 13
    :cond_6
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-ne p0, v2, :cond_f

    goto :goto_7

    .line 14
    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorMode()Z

    move-result p0

    const/4 p1, 0x6

    .line 15
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p1

    if-nez p1, :cond_9

    const/16 p1, 0x10

    .line 16
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    move p1, v1

    goto :goto_4

    :cond_9
    :goto_3
    move p1, v2

    .line 17
    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPressKeySwitchModeSupported()Z

    move-result p2

    if-nez p2, :cond_b

    if-nez p1, :cond_a

    if-nez p0, :cond_a

    goto :goto_5

    :cond_a
    move p0, v1

    goto :goto_6

    :cond_b
    :goto_5
    move p0, v2

    .line 18
    :goto_6
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result p1

    if-eqz p1, :cond_f

    if-eqz p0, :cond_f

    goto :goto_7

    .line 19
    :cond_c
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-ne p0, v2, :cond_f

    .line 20
    invoke-virtual {p1, p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_7

    .line 21
    :cond_d
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-ne p0, v2, :cond_f

    .line 22
    invoke-virtual {p1, p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_f

    goto :goto_7

    .line 23
    :cond_e
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_f

    :goto_7
    move v1, v2

    :cond_f
    :goto_8
    return v1
.end method
