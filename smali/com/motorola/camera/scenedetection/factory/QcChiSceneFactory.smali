.class public final Lcom/motorola/camera/scenedetection/factory/QcChiSceneFactory;
.super Lcom/motorola/camera/scenedetection/factory/SceneFactory;
.source "QcChiSceneFactory.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBlueSkyScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->BLUE_SKY:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f110021

    const/16 v3, 0x70

    const/4 v4, 0x0

    const/16 v5, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZI)V

    return-object p0
.end method

.method public final getFlashScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MOTO_FLASH:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const/4 v2, 0x0

    const/16 v3, 0x6c

    const/4 v4, 0x0

    const/16 v5, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZI)V

    return-object p0
.end method

.method public final getFlowerScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FLOWER:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f110023

    const/16 v3, 0x71

    const/4 v4, 0x0

    const/16 v5, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZI)V

    return-object p0
.end method

.method public final getFoodScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOOD:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f110024

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/16 v5, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZI)V

    return-object p0
.end method

.method public final getGreeneryScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->GREENERY:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f110025

    const/16 v3, 0x72

    const/4 v4, 0x0

    const/16 v5, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZI)V

    return-object p0
.end method

.method public final getSunsetScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->SUNRISE_SUNSET:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f11002a

    const/16 v3, 0x65

    const/4 v4, 0x1

    const/16 v5, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZI)V

    return-object p0
.end method

.method public final getTextScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->TEXT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f11002b

    const/16 v3, 0x6d

    const/4 v4, 0x0

    const/16 v5, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZI)V

    return-object p0
.end method
