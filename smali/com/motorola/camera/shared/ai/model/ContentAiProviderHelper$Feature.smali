.class public final enum Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;
.super Ljava/lang/Enum;
.source "ContentAiProviderHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum CUD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum CUD_PREVIEW_FULL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum CUD_PREVIEW_STANDARD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum CUD_PREVIEW_WIDESCREEN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum GESTURE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum IMAGE_STABILIZATION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum LOW_LIGHT_SELFIE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum SLIDE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum SMILE_DETECTION_QUANT:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v1, "GESTURE_AUTO_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->GESTURE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 2
    new-instance v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v3, "SCENE_DETECTION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 3
    new-instance v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v5, "SMILE_DETECTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 4
    new-instance v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v7, "SMILE_DETECTION_QUANT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SMILE_DETECTION_QUANT:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 5
    new-instance v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v9, "LOW_LIGHT_SELFIE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->LOW_LIGHT_SELFIE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 6
    new-instance v9, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v11, "EYE_CONTOUR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 7
    new-instance v11, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v13, "DOC_SCAN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 8
    new-instance v13, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v15, "LOW_LIGHT_SELFIE_PREVIEW"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 9
    new-instance v15, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v14, "IMAGE_STABILIZATION"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->IMAGE_STABILIZATION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 10
    new-instance v14, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v12, "SLIDE_SCAN"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 11
    new-instance v12, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v10, "SLIDE_AUTO_CAPTURE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 12
    new-instance v10, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v8, "CUD_PREVIEW_STANDARD"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->CUD_PREVIEW_STANDARD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 13
    new-instance v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v6, "CUD_PREVIEW_WIDESCREEN"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->CUD_PREVIEW_WIDESCREEN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 14
    new-instance v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v4, "CUD_PREVIEW_FULL"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->CUD_PREVIEW_FULL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 15
    new-instance v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v2, "CUD"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->CUD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    sput-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->$VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->$VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    return-object v0
.end method
