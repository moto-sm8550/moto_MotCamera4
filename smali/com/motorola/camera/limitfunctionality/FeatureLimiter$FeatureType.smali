.class public final enum Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;
.super Ljava/lang/Enum;
.source "FeatureLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/limitfunctionality/FeatureLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeatureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

.field public static final enum ALWAYS_AWARE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

.field public static final enum BRIGHTNESS:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

.field public static final enum CINEMAGRAPH:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

.field public static final enum FACE_DETECTION:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

.field public static final enum MAX_ZOOM:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

.field public static final enum MOTION_PHOTOS:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

.field public static final enum MULTI_SHOT_RATE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

.field public static final enum PREVIEW_RATE_DEPTH:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

.field public static final enum PREVIEW_RATE_LVL_1:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

.field public static final enum PREVIEW_RATE_LVL_2:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

.field public static final enum SURFACE_SIZE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

.field public static final enum VIDEO_RECORD:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

.field public static final enum VIDEO_RESOLUTION:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

.field public static final enum VIDEO_SIZE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

.field public static final enum VIDEO_STABILIZATION:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const-string v1, "ALWAYS_AWARE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->ALWAYS_AWARE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    .line 2
    new-instance v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const-string v3, "BRIGHTNESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->BRIGHTNESS:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    .line 3
    new-instance v3, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const-string v5, "CINEMAGRAPH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->CINEMAGRAPH:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    .line 4
    new-instance v5, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const-string v7, "FACE_DETECTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->FACE_DETECTION:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    .line 5
    new-instance v7, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const-string v9, "MAX_ZOOM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->MAX_ZOOM:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    .line 6
    new-instance v9, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const-string v11, "MOTION_PHOTOS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->MOTION_PHOTOS:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    .line 7
    new-instance v11, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const-string v13, "MULTI_SHOT_RATE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->MULTI_SHOT_RATE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    .line 8
    new-instance v13, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const-string v15, "PREVIEW_RATE_LVL_1"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->PREVIEW_RATE_LVL_1:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    .line 9
    new-instance v15, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const-string v14, "PREVIEW_RATE_LVL_2"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->PREVIEW_RATE_LVL_2:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    .line 10
    new-instance v14, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const-string v12, "PREVIEW_RATE_DEPTH"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->PREVIEW_RATE_DEPTH:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    .line 11
    new-instance v12, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const-string v10, "SURFACE_SIZE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->SURFACE_SIZE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    .line 12
    new-instance v10, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const-string v8, "VIDEO_RECORD"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_RECORD:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    .line 13
    new-instance v8, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const-string v6, "VIDEO_SIZE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_SIZE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    .line 14
    new-instance v6, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const-string v4, "VIDEO_STABILIZATION"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_STABILIZATION:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    .line 15
    new-instance v4, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const-string v2, "VIDEO_RESOLUTION"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_RESOLUTION:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

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

    .line 16
    sput-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->$VALUES:[Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;
    .locals 1

    const-class v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->$VALUES:[Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-virtual {v0}, [Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    return-object v0
.end method
