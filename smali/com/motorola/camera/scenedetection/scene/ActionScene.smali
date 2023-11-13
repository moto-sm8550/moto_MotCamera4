.class public abstract Lcom/motorola/camera/scenedetection/scene/ActionScene;
.super Ljava/lang/Object;
.source "SceneImpl.kt"

# interfaces
.implements Lcom/motorola/camera/scenedetection/scene/Scene;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final optType:I

.field public final sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public final textResource:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;II)V
    .locals 1

    const-string v0, "optType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILjava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    .line 3
    iput p2, p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->optType:I

    .line 4
    iput p3, p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->textResource:I

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract doAction(Lcom/motorola/camera/EventListener;)V
.end method

.method public final getOptType$enumunboxing$()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->optType:I

    return p0
.end method

.method public getPersistOnLensSwitch()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    return-object p0
.end method

.method public final getTextResource()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->textResource:I

    return p0
.end method
