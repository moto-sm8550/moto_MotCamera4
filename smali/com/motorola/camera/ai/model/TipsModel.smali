.class public final enum Lcom/motorola/camera/ai/model/TipsModel;
.super Ljava/lang/Enum;
.source "TipsModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ai/model/TipsModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ai/model/TipsModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ai/model/TipsModel;

.field public static final Companion:Lcom/motorola/camera/ai/model/TipsModel$Companion;


# instance fields
.field public final description:I

.field public final imgDrawable:I

.field public final isFeatureSupported:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final setting:Lcom/motorola/camera/settings/SettingsManager$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final title:I


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v8, Lcom/motorola/camera/ai/model/TipsModel;

    .line 2
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 3
    sget-object v7, Lcom/motorola/camera/ai/model/TipsModel$2;->INSTANCE:Lcom/motorola/camera/ai/model/TipsModel$2;

    const-string v1, "INSTANT_REVIEW"

    const/4 v2, 0x0

    const v3, 0x7f11021c

    const v4, 0x7f110228

    const v5, 0x7f0802f2

    move-object v0, v8

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ai/model/TipsModel;-><init>(Ljava/lang/String;IIIILcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/jvm/functions/Function0;)V

    .line 5
    new-instance v0, Lcom/motorola/camera/ai/model/TipsModel;

    .line 6
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 7
    sget-object v16, Lcom/motorola/camera/ai/model/TipsModel$3;->INSTANCE:Lcom/motorola/camera/ai/model/TipsModel$3;

    const-string v10, "EYE_CATCHER"

    const/4 v11, 0x1

    const v12, 0x7f110216

    const v13, 0x7f1101fc

    const v14, 0x7f0802f1

    move-object v9, v0

    .line 8
    invoke-direct/range {v9 .. v16}, Lcom/motorola/camera/ai/model/TipsModel;-><init>(Ljava/lang/String;IIIILcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/jvm/functions/Function0;)V

    .line 9
    new-instance v1, Lcom/motorola/camera/ai/model/TipsModel;

    .line 10
    sget-object v24, Lcom/motorola/camera/ai/model/TipsModel$1;->INSTANCE:Lcom/motorola/camera/ai/model/TipsModel$1;

    const-string v18, "BETTER_SELFIE"

    const/16 v19, 0x2

    const v20, 0x7f11020a

    const v21, 0x7f110209

    const v22, 0x7f0802f0

    const/16 v23, 0x0

    move-object/from16 v17, v1

    .line 11
    invoke-direct/range {v17 .. v24}, Lcom/motorola/camera/ai/model/TipsModel;-><init>(Ljava/lang/String;IIIILcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/jvm/functions/Function0;)V

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/motorola/camera/ai/model/TipsModel;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 12
    sput-object v2, Lcom/motorola/camera/ai/model/TipsModel;->$VALUES:[Lcom/motorola/camera/ai/model/TipsModel;

    new-instance v0, Lcom/motorola/camera/ai/model/TipsModel$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/ai/model/TipsModel$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/ai/model/TipsModel;->Companion:Lcom/motorola/camera/ai/model/TipsModel$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/motorola/camera/ai/model/TipsModel;->title:I

    .line 3
    iput p4, p0, Lcom/motorola/camera/ai/model/TipsModel;->description:I

    .line 4
    iput p5, p0, Lcom/motorola/camera/ai/model/TipsModel;->imgDrawable:I

    .line 5
    iput-object p6, p0, Lcom/motorola/camera/ai/model/TipsModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 6
    iput-object p7, p0, Lcom/motorola/camera/ai/model/TipsModel;->isFeatureSupported:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ai/model/TipsModel;
    .locals 1

    const-class v0, Lcom/motorola/camera/ai/model/TipsModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ai/model/TipsModel;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ai/model/TipsModel;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ai/model/TipsModel;->$VALUES:[Lcom/motorola/camera/ai/model/TipsModel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ai/model/TipsModel;

    return-object v0
.end method
