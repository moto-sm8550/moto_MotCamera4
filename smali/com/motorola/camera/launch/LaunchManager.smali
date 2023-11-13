.class public final Lcom/motorola/camera/launch/LaunchManager;
.super Ljava/lang/Object;
.source "LaunchManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/launch/LaunchManager$OnLauncherManagerCallback;
    }
.end annotation


# static fields
.field public static final CLI_TO_MAIN_MODE_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAIN_TO_CLI_MODE_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public callback:Lcom/motorola/camera/launch/LaunchManager$OnLauncherManagerCallback;

.field public final flipObserver:Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;

.field public lidValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Pair;

    const/16 v1, 0x1f

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const/16 v3, 0x9

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 4
    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v6, v0, v3

    const/16 v5, 0x12

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 6
    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v6, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x2

    aput-object v9, v0, v6

    .line 7
    invoke-static {v0}, Lkotlin/collections/MapsKt___MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/launch/LaunchManager;->CLI_TO_MAIN_MODE_MAPPING:Ljava/util/Map;

    new-array v0, v6, [Lkotlin/Pair;

    .line 8
    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v0, v4

    .line 9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 10
    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v3

    .line 11
    invoke-static {v0}, Lkotlin/collections/MapsKt___MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/launch/LaunchManager;->MAIN_TO_CLI_MODE_MAPPING:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;-><init>(Lcom/motorola/camera/launch/LaunchManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/motorola/camera/launch/LaunchManager;->flipObserver:Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/motorola/camera/launch/LaunchManager;->lidValue:I

    return-void
.end method


# virtual methods
.method public final launch(Landroid/app/Activity;ZII)V
    .locals 3

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v1, 0x14000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    .line 5
    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne p4, v1, :cond_0

    const-string v2, "motorola.camera.intent.action.STILL_IMAGE_PREVIEW_SECURE"

    goto :goto_0

    :cond_0
    const-string v2, "android.motorola.action.STILL_IMAGE_CAMERA_SECURE_CLI"

    .line 6
    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_1
    if-ne p4, v1, :cond_2

    const-string v2, "motorola.camera.intent.action.STILL_IMAGE_PREVIEW"

    goto :goto_1

    :cond_2
    const-string v2, "android.motorola.action.STILL_IMAGE_CAMERA_CLI"

    .line 7
    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_2
    const-string v2, "motorola.camera.intent.extra.ANALYTICS_PROCESSED"

    .line 8
    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v2, "com.motorola.camera.LAUNCH_ON_FLIP_CHANGED"

    .line 9
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p2, :cond_4

    const-string p2, "com.android.systemui.camera_launch_source"

    const-string v2, "flip_changed"

    .line 10
    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const/4 p2, 0x0

    if-nez p4, :cond_5

    .line 11
    sget p4, Lcom/motorola/camera/reflect/DisplayFW;->CLI_DISPLAY:I

    .line 12
    const-class v2, Lcom/motorola/camera/cli/camera/CliCameraActivity;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_3

    .line 13
    :cond_5
    const-class p4, Lcom/motorola/camera/Camera;

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move p4, p2

    .line 14
    :goto_3
    sget v2, Lcom/motorola/camera/reflect/DisplayFW;->CLI_DISPLAY:I

    if-ne p4, v2, :cond_6

    goto :goto_4

    :cond_6
    move v1, p2

    :goto_4
    if-eqz v1, :cond_9

    .line 15
    sget-object v1, Lcom/motorola/camera/launch/LaunchManager;->MAIN_TO_CLI_MODE_MAPPING:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 16
    :cond_7
    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsHelper;->isCliAllowedMode(I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    move p3, p2

    goto :goto_5

    .line 17
    :cond_9
    sget-object p2, Lcom/motorola/camera/launch/LaunchManager;->CLI_TO_MAIN_MODE_MAPPING:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 18
    :cond_a
    :goto_5
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 19
    invoke-static {p3}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setSliderMenuMode(I)V

    .line 20
    invoke-virtual {p0, p4}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 21
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
