.class public final enum Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;
.super Ljava/lang/Enum;
.source "HumanEffectFusionApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anc/humansdk/fusion/HumanEffectFusionApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdjustColorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;

.field public static final enum ADJUST_COLOR_BLUE:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;

.field public static final enum ADJUST_COLOR_GREEN:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;

.field public static final enum ADJUST_COLOR_NONE:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;

.field public static final enum ADJUST_COLOR_RED:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;

.field public static final enum ADJUST_COLOR_YELLOW:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;


# instance fields
.field private type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;

    const-string v1, "ADJUST_COLOR_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;->ADJUST_COLOR_NONE:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;

    .line 2
    new-instance v1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;

    const-string v3, "ADJUST_COLOR_RED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;->ADJUST_COLOR_RED:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;

    .line 3
    new-instance v3, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;

    const-string v5, "ADJUST_COLOR_YELLOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;->ADJUST_COLOR_YELLOW:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;

    .line 4
    new-instance v5, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;

    const-string v7, "ADJUST_COLOR_GREEN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;->ADJUST_COLOR_GREEN:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;

    .line 5
    new-instance v7, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;

    const-string v9, "ADJUST_COLOR_BLUE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;->ADJUST_COLOR_BLUE:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;->$VALUES:[Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;

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
    iput p3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;
    .locals 1

    const-class v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;

    return-object p0
.end method

.method public static values()[Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;
    .locals 1

    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;->$VALUES:[Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;

    invoke-virtual {v0}, [Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 0

    iget p0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;->type:I

    return p0
.end method
