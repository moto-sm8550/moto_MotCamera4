.class public final enum Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;
.super Ljava/lang/Enum;
.source "AlwaysAwareData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/analytics/AlwaysAwareData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OBJECT_SOURCE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum AZTEC:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum CODABAR:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum CODE_128:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum CODE_39:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum CODE_93:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum DATA_MATRIX:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum EAN:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum EAN_13:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum ITF:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum MAXICODE:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum PDF_417:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum QR_CODE:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum RSS_14:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum RSS_EXPANDED:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum UPC_A:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum UPC_E:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

.field public static final enum UPC_EAN_EXTENSION:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;


# instance fields
.field public final mCheckInData:I


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    const-string v1, "AZTEC"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->AZTEC:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    .line 2
    new-instance v1, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    const-string v4, "CODABAR"

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-direct {v1, v4, v5, v6}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->CODABAR:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    .line 3
    new-instance v4, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    const-string v7, "CODE_39"

    const/4 v8, 0x2

    const/4 v9, 0x5

    invoke-direct {v4, v7, v8, v9}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->CODE_39:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    .line 4
    new-instance v7, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    const-string v10, "CODE_93"

    const/4 v11, 0x6

    invoke-direct {v7, v10, v3, v11}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->CODE_93:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    .line 5
    new-instance v10, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    const-string v12, "CODE_128"

    const/4 v13, 0x7

    invoke-direct {v10, v12, v6, v13}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->CODE_128:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    .line 6
    new-instance v12, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    const-string v14, "DATA_MATRIX"

    const/16 v15, 0x8

    invoke-direct {v12, v14, v9, v15}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->DATA_MATRIX:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    .line 7
    new-instance v14, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    const-string v9, "EAN"

    const/16 v6, 0x9

    invoke-direct {v14, v9, v11, v6}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->EAN:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    .line 8
    new-instance v9, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    const-string v11, "EAN_13"

    const/16 v3, 0xa

    invoke-direct {v9, v11, v13, v3}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->EAN_13:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    .line 9
    new-instance v11, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    const-string v13, "ITF"

    const/16 v8, 0xb

    invoke-direct {v11, v13, v15, v8}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->ITF:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    .line 10
    new-instance v13, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    const-string v15, "MAXICODE"

    const/16 v2, 0xc

    invoke-direct {v13, v15, v6, v2}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->MAXICODE:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    .line 11
    new-instance v15, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    const-string v6, "PDF_417"

    const/16 v5, 0xd

    invoke-direct {v15, v6, v3, v5}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->PDF_417:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    .line 12
    new-instance v6, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    const-string v3, "QR_CODE"

    const/16 v5, 0xe

    invoke-direct {v6, v3, v8, v5}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->QR_CODE:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    .line 13
    new-instance v3, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    const-string v8, "RSS_14"

    const/16 v5, 0xf

    invoke-direct {v3, v8, v2, v5}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->RSS_14:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    .line 14
    new-instance v8, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    const-string v2, "RSS_EXPANDED"

    const/16 v5, 0x10

    move-object/from16 v16, v3

    const/16 v3, 0xd

    invoke-direct {v8, v2, v3, v5}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->RSS_EXPANDED:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    .line 15
    new-instance v2, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    const-string v3, "UNKNOWN"

    move-object/from16 v17, v8

    const/16 v5, 0xe

    const/4 v8, 0x1

    invoke-direct {v2, v3, v5, v8}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    .line 16
    new-instance v3, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    const-string v5, "UPC_A"

    const/16 v8, 0x11

    move-object/from16 v18, v2

    const/16 v2, 0xf

    invoke-direct {v3, v5, v2, v8}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->UPC_A:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    .line 17
    new-instance v2, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    const-string v5, "UPC_E"

    const/16 v8, 0x12

    move-object/from16 v19, v3

    const/16 v3, 0x10

    invoke-direct {v2, v5, v3, v8}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->UPC_E:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    .line 18
    new-instance v3, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    const-string v5, "UPC_EAN_EXTENSION"

    const/16 v8, 0x13

    move-object/from16 v20, v2

    const/16 v2, 0x11

    invoke-direct {v3, v5, v2, v8}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->UPC_EAN_EXTENSION:Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    const/16 v2, 0x12

    new-array v2, v2, [Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v7, v2, v0

    const/4 v0, 0x4

    aput-object v10, v2, v0

    const/4 v0, 0x5

    aput-object v12, v2, v0

    const/4 v0, 0x6

    aput-object v14, v2, v0

    const/4 v0, 0x7

    aput-object v9, v2, v0

    const/16 v0, 0x8

    aput-object v11, v2, v0

    const/16 v0, 0x9

    aput-object v13, v2, v0

    const/16 v0, 0xa

    aput-object v15, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v3, v2, v0

    .line 19
    sput-object v2, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->$VALUES:[Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->mCheckInData:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;
    .locals 1

    const-class v0, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;
    .locals 1

    sget-object v0, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->$VALUES:[Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    invoke-virtual {v0}, [Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    return-object v0
.end method
