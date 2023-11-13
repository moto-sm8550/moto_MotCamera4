.class public Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;
.super Ljava/lang/Object;
.source "HumanEffectFusionApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anc/humansdk/fusion/HumanEffectFusionApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanVideoTexture"
.end annotation


# instance fields
.field public height:I

.field public isOES:Z

.field public rotation:I

.field public texID:I

.field public width:I


# direct methods
.method public constructor <init>(IZIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;->texID:I

    .line 3
    iput-boolean p2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;->isOES:Z

    .line 4
    iput p3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;->width:I

    .line 5
    iput p4, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;->height:I

    .line 6
    iput p5, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;->rotation:I

    return-void
.end method


# virtual methods
.method public IsValid()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;->texID:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;->width:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;->height:I

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget p0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;->rotation:I

    rem-int/lit8 p0, p0, 0x5a

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method
