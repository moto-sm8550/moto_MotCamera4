.class public final enum Lcom/motorola/camera/shared/ai/model/McfMlModel;
.super Ljava/lang/Enum;
.source "McfMlModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/shared/ai/model/McfMlModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/shared/ai/model/McfMlModel;

.field public static final enum CUD:Lcom/motorola/camera/shared/ai/model/McfMlModel;

.field public static final enum CUD_PREVIEW:Lcom/motorola/camera/shared/ai/model/McfMlModel;

.field public static final enum DOC_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

.field public static final enum EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/McfMlModel;

.field public static final enum GESTURE_MV1:Lcom/motorola/camera/shared/ai/model/McfMlModel;

.field public static final enum IMAGE_STABILIZATION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

.field public static final enum LOW_LIGHT_SELFIE:Lcom/motorola/camera/shared/ai/model/McfMlModel;

.field public static final enum LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/shared/ai/model/McfMlModel;

.field public static final enum SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

.field public static final enum SLIDE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/McfMlModel;

.field public static final enum SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

.field public static final enum SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

.field public static final enum UNDEFINED:Lcom/motorola/camera/shared/ai/model/McfMlModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/shared/ai/model/McfMlModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->UNDEFINED:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    .line 2
    new-instance v1, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const-string v3, "GESTURE_MV1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/shared/ai/model/McfMlModel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/shared/ai/model/McfMlModel;->GESTURE_MV1:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    .line 3
    new-instance v3, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const-string v5, "SCENE_DETECTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/shared/ai/model/McfMlModel;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    .line 4
    new-instance v5, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const-string v7, "SMILE_DETECTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/shared/ai/model/McfMlModel;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    .line 5
    new-instance v7, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const-string v9, "LOW_LIGHT_SELFIE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/shared/ai/model/McfMlModel;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/shared/ai/model/McfMlModel;->LOW_LIGHT_SELFIE:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    .line 6
    new-instance v9, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const-string v11, "EYE_CONTOUR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/shared/ai/model/McfMlModel;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/shared/ai/model/McfMlModel;->EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    .line 7
    new-instance v11, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const-string v13, "DOC_SCAN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/shared/ai/model/McfMlModel;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/shared/ai/model/McfMlModel;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    .line 8
    new-instance v13, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const-string v15, "LOW_LIGHT_SELFIE_PREVIEW"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/shared/ai/model/McfMlModel;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/shared/ai/model/McfMlModel;->LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    .line 9
    new-instance v15, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const-string v14, "IMAGE_STABILIZATION"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/motorola/camera/shared/ai/model/McfMlModel;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/shared/ai/model/McfMlModel;->IMAGE_STABILIZATION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    .line 10
    new-instance v14, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const-string v12, "SLIDE_SCAN"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/motorola/camera/shared/ai/model/McfMlModel;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    .line 11
    new-instance v12, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const-string v10, "SLIDE_AUTO_CAPTURE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/motorola/camera/shared/ai/model/McfMlModel;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SLIDE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    .line 12
    new-instance v10, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const-string v8, "CUD_PREVIEW"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/motorola/camera/shared/ai/model/McfMlModel;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/shared/ai/model/McfMlModel;->CUD_PREVIEW:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    .line 13
    new-instance v8, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const-string v6, "CUD"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/motorola/camera/shared/ai/model/McfMlModel;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/motorola/camera/shared/ai/model/McfMlModel;->CUD:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const/16 v6, 0xd

    new-array v6, v6, [Lcom/motorola/camera/shared/ai/model/McfMlModel;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    sput-object v6, Lcom/motorola/camera/shared/ai/model/McfMlModel;->$VALUES:[Lcom/motorola/camera/shared/ai/model/McfMlModel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/ai/model/McfMlModel;
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/shared/ai/model/McfMlModel;
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->$VALUES:[Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/shared/ai/model/McfMlModel;

    return-object v0
.end method


# virtual methods
.method public final getJsonValue()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "ENGLISH"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
