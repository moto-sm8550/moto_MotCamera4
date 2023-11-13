.class public final enum Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;
.super Ljava/lang/Enum;
.source "CapturedImageMediaData.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SnapType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum AI_CUD:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum AI_IST:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum AI_LLS:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum ALT_BEST_SHOT_2:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum ALT_BEST_SHOT_3:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum ALT_BEST_SHOT_4:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum ALT_BEST_SHOT_5:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum BEST_SHOT:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum COMP_SHOT:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum NORMAL:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum UNKNOWN:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum VIDEO_HDR:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field private static final mLookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mIdx:I

.field public final mSuffix:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->NORMAL:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 2
    new-instance v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const-string v4, "BEST_SHOT"

    const/4 v5, 0x1

    const-string v6, "_TOP"

    invoke-direct {v1, v4, v5, v5, v6}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->BEST_SHOT:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 3
    new-instance v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const-string v6, "ALT_BEST_SHOT_2"

    const/4 v7, 0x2

    const-string v8, "_TP2"

    invoke-direct {v4, v6, v7, v7, v8}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->ALT_BEST_SHOT_2:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 4
    new-instance v6, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const-string v8, "ALT_BEST_SHOT_3"

    const/4 v9, 0x3

    const-string v10, "_TP3"

    invoke-direct {v6, v8, v9, v9, v10}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->ALT_BEST_SHOT_3:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 5
    new-instance v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const-string v10, "ALT_BEST_SHOT_4"

    const/4 v11, 0x4

    const-string v12, "_TP4"

    invoke-direct {v8, v10, v11, v11, v12}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->ALT_BEST_SHOT_4:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 6
    new-instance v10, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const-string v12, "ALT_BEST_SHOT_5"

    const/4 v13, 0x5

    const-string v14, "_TP5"

    invoke-direct {v10, v12, v13, v13, v14}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->ALT_BEST_SHOT_5:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 7
    new-instance v12, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const-string v14, "VIDEO_HDR"

    const/4 v15, 0x6

    const-string v13, "_HDR"

    invoke-direct {v12, v14, v15, v15, v13}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->VIDEO_HDR:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 8
    new-instance v13, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const-string v14, "COMP_SHOT"

    const/4 v15, 0x7

    const-string v11, "_COMP"

    invoke-direct {v13, v14, v15, v15, v11}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->COMP_SHOT:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 9
    new-instance v11, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const-string v14, "AI_LLS"

    const/16 v15, 0x8

    const-string v9, "_AI"

    invoke-direct {v11, v14, v15, v15, v9}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_LLS:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 10
    new-instance v9, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const-string v14, "AI_IST"

    const/16 v15, 0x9

    const-string v7, "_IS"

    invoke-direct {v9, v14, v15, v15, v7}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_IST:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 11
    new-instance v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const-string v14, "AI_CUD"

    const/16 v15, 0xa

    const-string v5, "_CUD"

    invoke-direct {v7, v14, v15, v15, v5}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_CUD:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 12
    new-instance v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const-string v14, "UNKNOWN"

    const/16 v15, 0xb

    const/4 v2, -0x1

    invoke-direct {v5, v14, v15, v2, v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->UNKNOWN:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const/16 v2, 0xc

    new-array v2, v2, [Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v11, v2, v0

    const/16 v0, 0x9

    aput-object v9, v2, v0

    const/16 v0, 0xa

    aput-object v7, v2, v0

    aput-object v5, v2, v15

    .line 13
    sput-object v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->$VALUES:[Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 14
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mLookup:Landroid/util/SparseArray;

    .line 15
    invoke-static {}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->values()[Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    move-result-object v0

    array-length v1, v0

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mLookup:Landroid/util/SparseArray;

    iget v5, v3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mIdx:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mIdx:I

    .line 3
    iput-object p4, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;
    .locals 1

    const-class v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->$VALUES:[Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    invoke-virtual {v0}, [Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    return-object v0
.end method


# virtual methods
.method public hasSuffix()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
