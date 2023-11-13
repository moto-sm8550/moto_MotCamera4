.class public final Lcom/motorola/camera/scenedetection/factory/MtkSceneFactory;
.super Lcom/motorola/camera/scenedetection/factory/SceneFactory;
.source "MtkSceneFactory.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFoodScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/MtkVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOOD:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f110024

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/MtkVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZI)V

    return-object p0
.end method

.method public final getSunsetScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/MtkVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->SUNRISE_SUNSET:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f11002a

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/MtkVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZI)V

    return-object p0
.end method

.method public final getTextScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/MtkVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->TEXT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f11002b

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/MtkVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZI)V

    return-object p0
.end method
