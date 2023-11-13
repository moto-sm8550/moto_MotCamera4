.class public Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;
.super Ljava/lang/Object;
.source "HumanEffectFusionApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anc/humansdk/fusion/HumanEffectFusionApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanVideoFrame"
.end annotation


# instance fields
.field public data:[B

.field public height:I

.field public rotation:I

.field public type:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$ImageType;

.field public width:I


# direct methods
.method public constructor <init>([BLcom/anc/humansdk/fusion/HumanEffectFusionApi$ImageType;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;->data:[B

    .line 3
    iput-object p2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;->type:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$ImageType;

    .line 4
    iput p3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;->width:I

    .line 5
    iput p4, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;->height:I

    .line 6
    iput p5, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;->rotation:I

    return-void
.end method


# virtual methods
.method public IsValid()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;->data:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;->width:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;->height:I

    if-gtz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;->rotation:I

    rem-int/lit8 v0, v0, 0x5a

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;->type:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$ImageType;

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1
.end method
