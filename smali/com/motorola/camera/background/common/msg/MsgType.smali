.class public final enum Lcom/motorola/camera/background/common/msg/MsgType;
.super Ljava/lang/Enum;
.source "MsgType.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/common/msg/MsgType$CREATOR;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/background/common/msg/MsgType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMsgType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MsgType.kt\ncom/motorola/camera/background/common/msg/MsgType\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,53:1\n8804#2,2:54\n9064#2,4:56\n*S KotlinDebug\n*F\n+ 1 MsgType.kt\ncom/motorola/camera/background/common/msg/MsgType\n*L\n40#1:54,2\n40#1:56,4\n*E\n"
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum CANCEL_ALL_JOBS:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum CANCEL_JOB:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum CANCEL_JOB_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final CREATOR:Lcom/motorola/camera/background/common/msg/MsgType$CREATOR;

.field public static final enum JOB_DATA_READ_COMPLETE:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum JOB_RECEIVED_ACK:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_CTL_MSG:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_JOB:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_JOB_ACK:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_JOB_COMPLETE:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_JOB_COMPLETE_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_JOB_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_JOB_RETRY:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROCESS_MSG:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum PROGRESS_INDICATOR:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final enum UNKNOWN:Lcom/motorola/camera/background/common/msg/MsgType;

.field public static final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/camera/background/common/msg/MsgType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final msgCode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/msg/MsgType;->UNKNOWN:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 2
    new-instance v1, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v3, "PROCESS_JOB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 3
    new-instance v3, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v5, "PROCESS_JOB_COMPLETE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_COMPLETE:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 4
    new-instance v5, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v7, "CANCEL_JOB"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/motorola/camera/background/common/msg/MsgType;->CANCEL_JOB:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 5
    new-instance v7, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v9, "PROGRESS_INDICATOR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/motorola/camera/background/common/msg/MsgType;->PROGRESS_INDICATOR:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 6
    new-instance v9, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v11, "CANCEL_ALL_JOBS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/motorola/camera/background/common/msg/MsgType;->CANCEL_ALL_JOBS:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 7
    new-instance v11, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v13, "PROCESS_JOB_ACK"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_ACK:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 8
    new-instance v13, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v15, "JOB_RECEIVED_ACK"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/motorola/camera/background/common/msg/MsgType;->JOB_RECEIVED_ACK:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 9
    new-instance v15, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v14, "JOB_DATA_READ_COMPLETE"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/motorola/camera/background/common/msg/MsgType;->JOB_DATA_READ_COMPLETE:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 10
    new-instance v14, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v12, "PROCESS_JOB_RETRY"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_RETRY:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 11
    new-instance v12, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v8, "PROCESS_JOB_IMAGE"

    const/16 v10, 0xa

    const/16 v6, 0x64

    invoke-direct {v12, v8, v10, v6}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 12
    new-instance v6, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v8, "PROCESS_JOB_COMPLETE_IMAGE"

    const/16 v10, 0xb

    const/16 v4, 0x65

    invoke-direct {v6, v8, v10, v4}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_COMPLETE_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 13
    new-instance v4, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v8, "CANCEL_JOB_IMAGE"

    const/16 v10, 0xc

    const/16 v2, 0x66

    invoke-direct {v4, v8, v10, v2}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/motorola/camera/background/common/msg/MsgType;->CANCEL_JOB_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 14
    new-instance v2, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v8, "PROCESS_MSG"

    const/16 v10, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0x3e8

    invoke-direct {v2, v8, v10, v4}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_MSG:Lcom/motorola/camera/background/common/msg/MsgType;

    .line 15
    new-instance v4, Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v8, "PROCESS_CTL_MSG"

    const/16 v10, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0x3e9

    invoke-direct {v4, v8, v10, v2}, Lcom/motorola/camera/background/common/msg/MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_CTL_MSG:Lcom/motorola/camera/background/common/msg/MsgType;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/motorola/camera/background/common/msg/MsgType;

    const/4 v8, 0x0

    aput-object v0, v2, v8

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

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v10

    sput-object v2, Lcom/motorola/camera/background/common/msg/MsgType;->$VALUES:[Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v0, Lcom/motorola/camera/background/common/msg/MsgType$CREATOR;

    invoke-direct {v0}, Lcom/motorola/camera/background/common/msg/MsgType$CREATOR;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/msg/MsgType;->CREATOR:Lcom/motorola/camera/background/common/msg/MsgType$CREATOR;

    .line 16
    invoke-static {}, Lcom/motorola/camera/background/common/msg/MsgType;->values()[Lcom/motorola/camera/background/common/msg/MsgType;

    move-result-object v0

    .line 17
    array-length v1, v0

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v1, v2

    .line 18
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 19
    array-length v1, v0

    :goto_0
    if-ge v8, v1, :cond_1

    aget-object v3, v0, v8

    .line 20
    iget v4, v3, Lcom/motorola/camera/background/common/msg/MsgType;->msgCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    sput-object v2, Lcom/motorola/camera/background/common/msg/MsgType;->map:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/background/common/msg/MsgType;->msgCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/background/common/msg/MsgType;
    .locals 1

    const-class v0, Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/msg/MsgType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/background/common/msg/MsgType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/common/msg/MsgType;->$VALUES:[Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/background/common/msg/MsgType;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
