.class public final enum Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;
.super Ljava/lang/Enum;
.source "HumanEffectFusionApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anc/humansdk/fusion/HumanEffectFusionApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeatureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;

.field public static final enum ANC_HUM_FEATURE_BOKEH:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;

.field public static final enum ANC_HUM_FEATURE_NEON:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;

.field public static final enum ANC_HUM_FEATURE_NONE:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;

    const-string v1, "ANC_HUM_FEATURE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;->ANC_HUM_FEATURE_NONE:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;

    .line 2
    new-instance v1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;

    const-string v3, "ANC_HUM_FEATURE_BOKEH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;->ANC_HUM_FEATURE_BOKEH:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;

    .line 3
    new-instance v3, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;

    const-string v5, "ANC_HUM_FEATURE_NEON"

    const/4 v6, 0x2

    const/4 v7, 0x5

    invoke-direct {v3, v5, v6, v7}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;->ANC_HUM_FEATURE_NEON:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;->$VALUES:[Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;
    .locals 1

    const-class v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;

    return-object p0
.end method

.method public static values()[Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;
    .locals 1

    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;->$VALUES:[Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;

    invoke-virtual {v0}, [Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;->value:I

    return p0
.end method
