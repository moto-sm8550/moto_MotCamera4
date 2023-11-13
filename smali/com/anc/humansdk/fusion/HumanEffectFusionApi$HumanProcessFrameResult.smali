.class public Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessFrameResult;
.super Ljava/lang/Object;
.source "HumanEffectFusionApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anc/humansdk/fusion/HumanEffectFusionApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanProcessFrameResult"
.end annotation


# instance fields
.field public humanVideoFrame:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;


# direct methods
.method public constructor <init>(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessFrameResult;->humanVideoFrame:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;

    return-void
.end method

.method public constructor <init>([BLcom/anc/humansdk/fusion/HumanEffectFusionApi$ImageType;III)V
    .locals 7

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v6, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;-><init>([BLcom/anc/humansdk/fusion/HumanEffectFusionApi$ImageType;III)V

    iput-object v6, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessFrameResult;->humanVideoFrame:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;

    return-void
.end method


# virtual methods
.method public IsValid()Z
    .locals 0

    iget-object p0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessFrameResult;->humanVideoFrame:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;->IsValid()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
