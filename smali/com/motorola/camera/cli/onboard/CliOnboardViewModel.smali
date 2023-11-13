.class public final Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;
.super Landroidx/transition/PathMotion;
.source "CliOnboardViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;
    }
.end annotation


# instance fields
.field public callback:Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/PathMotion;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 3
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast p2, Lcom/motorola/camera/settings/CaptureIntent;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "wiggle_gesture"

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/motorola/camera/settings/CaptureIntent;->hasLaunchSource(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    .line 8
    new-instance p2, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v0, 0x7f0800b6

    const v1, 0x7f1101be

    invoke-direct {p2, v0, v1}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(II)V

    .line 9
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [Lcom/motorola/camera/cli/onboard/model/Onboard;

    const/4 v0, 0x0

    .line 10
    new-instance v1, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v2, 0x7f0800ae

    const v3, 0x7f1102b3

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(II)V

    aput-object v1, p2, v0

    .line 11
    new-instance v0, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v1, 0x7f0800b2

    const v2, 0x7f1102b4

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(II)V

    const/4 v1, 0x1

    aput-object v0, p2, v1

    .line 12
    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->callback:Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;->showOnboard(Ljava/util/List;)V

    :cond_1
    return-void
.end method
