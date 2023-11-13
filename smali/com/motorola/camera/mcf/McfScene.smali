.class public final Lcom/motorola/camera/mcf/McfScene;
.super Ljava/lang/Object;
.source "McfScene.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final CNAME:Ljava/lang/String; = "McfScene"


# instance fields
.field private final mConfidence:I

.field private final mHits:I

.field private final mSamples:I

.field private final mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfScene;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/motorola/camera/mcf/McfScene;->mConfidence:I

    .line 4
    iput v0, p0, Lcom/motorola/camera/mcf/McfScene;->mHits:I

    .line 5
    iput v0, p0, Lcom/motorola/camera/mcf/McfScene;->mSamples:I

    return-void
.end method


# virtual methods
.method public getConfidence()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfScene;->mConfidence:I

    return p0
.end method

.method public getHits()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfScene;->mHits:I

    return p0
.end method

.method public getSamples()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfScene;->mSamples:I

    return p0
.end method

.method public getSceneMode()Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfScene;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/motorola/camera/mcf/McfScene;->CNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": [sceneMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfScene;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfScene;->mConfidence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",hits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfScene;->mHits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",samples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/mcf/McfScene;->mSamples:I

    const-string v1, "]"

    .line 2
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
