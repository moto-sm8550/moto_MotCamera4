.class public final Lcom/motorola/camera/fsm/camera/states/FirstUseStates$IsNotTutorialShownModeRunnable;
.super Ljava/lang/Object;
.source "FirstUseStates.java"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/FirstUseStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsNotTutorialShownModeRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/fsm/GuardedTransitionRunnable<",
        "Lcom/motorola/camera/fsm/camera/FsmContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 p0, 0x0

    if-nez p2, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    check-cast p2, Landroid/os/Bundle;

    const/4 p1, -0x1

    const-string v0, "TUTORIAL_TOOLTIP_INDEX"

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_3

    .line 3
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    move p1, p0

    .line 4
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v0

    if-ne v0, p2, :cond_3

    move v0, p2

    goto :goto_1

    :cond_3
    move v0, p0

    .line 5
    :goto_1
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 7
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v2, :cond_4

    move v1, p2

    goto :goto_2

    :cond_4
    move v1, p0

    :goto_2
    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    if-nez v1, :cond_6

    :cond_5
    move p0, p2

    :cond_6
    :goto_3
    return p0
.end method
