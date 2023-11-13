.class public final Lcom/motorola/camera/scenedetection/factory/SceneFactory$Companion$factory$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SceneFactory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/scenedetection/factory/SceneFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/motorola/camera/scenedetection/factory/SceneFactory;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/scenedetection/factory/SceneFactory$Companion$factory$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/scenedetection/factory/SceneFactory$Companion$factory$2;

    invoke-direct {v0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory$Companion$factory$2;-><init>()V

    sput-object v0, Lcom/motorola/camera/scenedetection/factory/SceneFactory$Companion$factory$2;->INSTANCE:Lcom/motorola/camera/scenedetection/factory/SceneFactory$Companion$factory$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object p0, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->Companion:Lcom/motorola/camera/scenedetection/factory/SceneFactory$Companion;

    .line 2
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSceneDetectionPlatform:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "ENGLISH"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x1

    if-nez p0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    :try_start_0
    invoke-static {p0}, Landroidx/core/graphics/PathParser$$ExternalSyntheticOutline0;->valueOf(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Platform not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Scene"

    invoke-static {v2, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move p0, v0

    .line 6
    :goto_2
    invoke-static {p0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p0

    if-eqz p0, :cond_6

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 7
    new-instance p0, Lcom/motorola/camera/scenedetection/factory/MtkSceneFactory;

    invoke-direct {p0}, Lcom/motorola/camera/scenedetection/factory/MtkSceneFactory;-><init>()V

    goto :goto_3

    .line 8
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 9
    :cond_3
    new-instance p0, Lcom/motorola/camera/scenedetection/factory/QcMmcamSceneFactory;

    invoke-direct {p0}, Lcom/motorola/camera/scenedetection/factory/QcMmcamSceneFactory;-><init>()V

    goto :goto_3

    .line 10
    :cond_4
    new-instance p0, Lcom/motorola/camera/scenedetection/factory/QcChiSceneFactory;

    invoke-direct {p0}, Lcom/motorola/camera/scenedetection/factory/QcChiSceneFactory;-><init>()V

    goto :goto_3

    .line 11
    :cond_5
    new-instance p0, Lcom/motorola/camera/scenedetection/factory/SLSISceneFactory;

    invoke-direct {p0}, Lcom/motorola/camera/scenedetection/factory/SLSISceneFactory;-><init>()V

    goto :goto_3

    .line 12
    :cond_6
    new-instance p0, Lcom/motorola/camera/scenedetection/factory/EmptySceneFactory;

    invoke-direct {p0}, Lcom/motorola/camera/scenedetection/factory/EmptySceneFactory;-><init>()V

    :goto_3
    return-object p0
.end method
