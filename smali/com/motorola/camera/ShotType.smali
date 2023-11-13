.class public final enum Lcom/motorola/camera/ShotType;
.super Ljava/lang/Enum;
.source "ShotType.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ShotType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/ShotType;

.field public static final enum CINEMAGRAPH:Lcom/motorola/camera/ShotType;

.field public static final enum MULTI:Lcom/motorola/camera/ShotType;

.field public static final enum PANORAMA:Lcom/motorola/camera/ShotType;

.field public static final enum SINGLE:Lcom/motorola/camera/ShotType;

.field public static final enum SINGLE_RAW:Lcom/motorola/camera/ShotType;

.field public static final enum VIDEO:Lcom/motorola/camera/ShotType;

.field public static final enum VIDEO_SLOW_MOTION:Lcom/motorola/camera/ShotType;

.field public static final enum VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

.field public static final enum VIDEO_ULTRA_HD:Lcom/motorola/camera/ShotType;


# instance fields
.field private final mMinimumFreeBytes:J


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/motorola/camera/ShotType;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    const-wide/32 v3, 0x3200000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/camera/ShotType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    .line 2
    new-instance v1, Lcom/motorola/camera/ShotType;

    const-string v5, "MULTI"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v3, v4}, Lcom/motorola/camera/ShotType;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    .line 3
    new-instance v5, Lcom/motorola/camera/ShotType;

    const-string v7, "VIDEO"

    const/4 v8, 0x2

    const-wide/32 v9, 0xc800000

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/motorola/camera/ShotType;-><init>(Ljava/lang/String;IJ)V

    sput-object v5, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    .line 4
    new-instance v7, Lcom/motorola/camera/ShotType;

    const-string v11, "PANORAMA"

    const/4 v12, 0x3

    const-wide/32 v13, 0x6400000

    invoke-direct {v7, v11, v12, v13, v14}, Lcom/motorola/camera/ShotType;-><init>(Ljava/lang/String;IJ)V

    sput-object v7, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    .line 5
    new-instance v11, Lcom/motorola/camera/ShotType;

    const-string v13, "VIDEO_SLOW_MOTION"

    const/4 v14, 0x4

    invoke-direct {v11, v13, v14, v9, v10}, Lcom/motorola/camera/ShotType;-><init>(Ljava/lang/String;IJ)V

    sput-object v11, Lcom/motorola/camera/ShotType;->VIDEO_SLOW_MOTION:Lcom/motorola/camera/ShotType;

    .line 6
    new-instance v13, Lcom/motorola/camera/ShotType;

    const-string v15, "VIDEO_SNAPSHOT"

    const/4 v14, 0x5

    invoke-direct {v13, v15, v14, v3, v4}, Lcom/motorola/camera/ShotType;-><init>(Ljava/lang/String;IJ)V

    sput-object v13, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    .line 7
    new-instance v3, Lcom/motorola/camera/ShotType;

    const-string v4, "VIDEO_ULTRA_HD"

    const/4 v15, 0x6

    invoke-direct {v3, v4, v15, v9, v10}, Lcom/motorola/camera/ShotType;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lcom/motorola/camera/ShotType;->VIDEO_ULTRA_HD:Lcom/motorola/camera/ShotType;

    .line 8
    new-instance v4, Lcom/motorola/camera/ShotType;

    const-string v9, "SINGLE_RAW"

    const/4 v10, 0x7

    const-wide/32 v14, 0x4b00000

    invoke-direct {v4, v9, v10, v14, v15}, Lcom/motorola/camera/ShotType;-><init>(Ljava/lang/String;IJ)V

    sput-object v4, Lcom/motorola/camera/ShotType;->SINGLE_RAW:Lcom/motorola/camera/ShotType;

    .line 9
    new-instance v9, Lcom/motorola/camera/ShotType;

    const-string v14, "CINEMAGRAPH"

    const/16 v15, 0x8

    move-object/from16 v16, v11

    const-wide/32 v10, 0x9600000

    invoke-direct {v9, v14, v15, v10, v11}, Lcom/motorola/camera/ShotType;-><init>(Ljava/lang/String;IJ)V

    sput-object v9, Lcom/motorola/camera/ShotType;->CINEMAGRAPH:Lcom/motorola/camera/ShotType;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/motorola/camera/ShotType;

    aput-object v0, v10, v2

    aput-object v1, v10, v6

    aput-object v5, v10, v8

    aput-object v7, v10, v12

    const/4 v0, 0x4

    aput-object v16, v10, v0

    const/4 v0, 0x5

    aput-object v13, v10, v0

    const/4 v0, 0x6

    aput-object v3, v10, v0

    const/4 v0, 0x7

    aput-object v4, v10, v0

    aput-object v9, v10, v15

    .line 10
    sput-object v10, Lcom/motorola/camera/ShotType;->$VALUES:[Lcom/motorola/camera/ShotType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-wide p3, p0, Lcom/motorola/camera/ShotType;->mMinimumFreeBytes:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ShotType;
    .locals 1

    const-class v0, Lcom/motorola/camera/ShotType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ShotType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ShotType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ShotType;->$VALUES:[Lcom/motorola/camera/ShotType;

    invoke-virtual {v0}, [Lcom/motorola/camera/ShotType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ShotType;

    return-object v0
.end method


# virtual methods
.method public getMinimumFreeBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/motorola/camera/ShotType;->mMinimumFreeBytes:J

    return-wide v0
.end method

.method public isCinemagraph()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/ShotType;->CINEMAGRAPH:Lcom/motorola/camera/ShotType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPanorama()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideo()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/ShotType;->VIDEO_SLOW_MOTION:Lcom/motorola/camera/ShotType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/ShotType;->VIDEO_ULTRA_HD:Lcom/motorola/camera/ShotType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
