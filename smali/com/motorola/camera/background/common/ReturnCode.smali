.class public final enum Lcom/motorola/camera/background/common/ReturnCode;
.super Ljava/lang/Enum;
.source "ReturnCode.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/common/ReturnCode$CREATOR;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/background/common/ReturnCode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReturnCode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReturnCode.kt\ncom/motorola/camera/background/common/ReturnCode\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,60:1\n8804#2,2:61\n9064#2,4:63\n*S KotlinDebug\n*F\n+ 1 ReturnCode.kt\ncom/motorola/camera/background/common/ReturnCode\n*L\n48#1:61,2\n48#1:63,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0018\u0008\u0087\u0001\u0018\u0000 #2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001#B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0004H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"\u00a8\u0006$"
    }
    d2 = {
        "Lcom/motorola/camera/background/common/ReturnCode;",
        "",
        "Landroid/os/Parcelable;",
        "returnCode",
        "",
        "(Ljava/lang/String;II)V",
        "getReturnCode",
        "()I",
        "describeContents",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "OK",
        "NO_MEMORY",
        "INVALID_OPERATION",
        "NO_INIT",
        "MISSING_LIBRARY",
        "INCOMPATIBLE_LIBRARY",
        "JSON_CONFIG_ERROR",
        "UNKNOWN_ERROR",
        "OBJECT_MISSING",
        "ALG_WARNING",
        "CANCELED",
        "UNEXPECTED_NULL",
        "BAD_VALUE",
        "FAILED_TRANSACTION",
        "DISCARD_RESULT",
        "DEFERRED_TASK",
        "NOT_ENOUGH_FRAMES",
        "CONDITIONALLY_FAILED",
        "REDIRECT_FAILED",
        "TIME_OUT",
        "PENDING_JOBS",
        "CREATOR",
        "MotCamera-Background_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/background/common/ReturnCode;

.field public static final enum ALG_WARNING:Lcom/motorola/camera/background/common/ReturnCode;

.field public static final enum BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

.field public static final enum CANCELED:Lcom/motorola/camera/background/common/ReturnCode;

.field public static final enum CONDITIONALLY_FAILED:Lcom/motorola/camera/background/common/ReturnCode;

.field public static final CREATOR:Lcom/motorola/camera/background/common/ReturnCode$CREATOR;

.field public static final enum DEFERRED_TASK:Lcom/motorola/camera/background/common/ReturnCode;

.field public static final enum DISCARD_RESULT:Lcom/motorola/camera/background/common/ReturnCode;

.field public static final enum FAILED_TRANSACTION:Lcom/motorola/camera/background/common/ReturnCode;

.field public static final enum INCOMPATIBLE_LIBRARY:Lcom/motorola/camera/background/common/ReturnCode;

.field public static final enum INVALID_OPERATION:Lcom/motorola/camera/background/common/ReturnCode;

.field public static final enum JSON_CONFIG_ERROR:Lcom/motorola/camera/background/common/ReturnCode;

.field public static final enum MISSING_LIBRARY:Lcom/motorola/camera/background/common/ReturnCode;

.field public static final enum NOT_ENOUGH_FRAMES:Lcom/motorola/camera/background/common/ReturnCode;

.field public static final enum NO_INIT:Lcom/motorola/camera/background/common/ReturnCode;

.field public static final enum NO_MEMORY:Lcom/motorola/camera/background/common/ReturnCode;

.field public static final enum OBJECT_MISSING:Lcom/motorola/camera/background/common/ReturnCode;

.field public static final enum OK:Lcom/motorola/camera/background/common/ReturnCode;

.field public static final enum PENDING_JOBS:Lcom/motorola/camera/background/common/ReturnCode;

.field public static final enum REDIRECT_FAILED:Lcom/motorola/camera/background/common/ReturnCode;

.field public static final enum TIME_OUT:Lcom/motorola/camera/background/common/ReturnCode;

.field public static final enum UNEXPECTED_NULL:Lcom/motorola/camera/background/common/ReturnCode;

.field public static final enum UNKNOWN_ERROR:Lcom/motorola/camera/background/common/ReturnCode;

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/camera/background/common/ReturnCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final returnCode:I


# direct methods
.method private static final synthetic $values()[Lcom/motorola/camera/background/common/ReturnCode;
    .locals 3

    const/16 v0, 0x15

    new-array v0, v0, [Lcom/motorola/camera/background/common/ReturnCode;

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->NO_MEMORY:Lcom/motorola/camera/background/common/ReturnCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->INVALID_OPERATION:Lcom/motorola/camera/background/common/ReturnCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->NO_INIT:Lcom/motorola/camera/background/common/ReturnCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->MISSING_LIBRARY:Lcom/motorola/camera/background/common/ReturnCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->INCOMPATIBLE_LIBRARY:Lcom/motorola/camera/background/common/ReturnCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->JSON_CONFIG_ERROR:Lcom/motorola/camera/background/common/ReturnCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->UNKNOWN_ERROR:Lcom/motorola/camera/background/common/ReturnCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->OBJECT_MISSING:Lcom/motorola/camera/background/common/ReturnCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->ALG_WARNING:Lcom/motorola/camera/background/common/ReturnCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->CANCELED:Lcom/motorola/camera/background/common/ReturnCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->UNEXPECTED_NULL:Lcom/motorola/camera/background/common/ReturnCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->FAILED_TRANSACTION:Lcom/motorola/camera/background/common/ReturnCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->DISCARD_RESULT:Lcom/motorola/camera/background/common/ReturnCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->DEFERRED_TASK:Lcom/motorola/camera/background/common/ReturnCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->NOT_ENOUGH_FRAMES:Lcom/motorola/camera/background/common/ReturnCode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->CONDITIONALLY_FAILED:Lcom/motorola/camera/background/common/ReturnCode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->REDIRECT_FAILED:Lcom/motorola/camera/background/common/ReturnCode;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->TIME_OUT:Lcom/motorola/camera/background/common/ReturnCode;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->PENDING_JOBS:Lcom/motorola/camera/background/common/ReturnCode;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/motorola/camera/background/common/ReturnCode;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/motorola/camera/background/common/ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    .line 2
    new-instance v0, Lcom/motorola/camera/background/common/ReturnCode;

    const-string v1, "NO_MEMORY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/motorola/camera/background/common/ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->NO_MEMORY:Lcom/motorola/camera/background/common/ReturnCode;

    .line 3
    new-instance v0, Lcom/motorola/camera/background/common/ReturnCode;

    const-string v1, "INVALID_OPERATION"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v3}, Lcom/motorola/camera/background/common/ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->INVALID_OPERATION:Lcom/motorola/camera/background/common/ReturnCode;

    .line 4
    new-instance v0, Lcom/motorola/camera/background/common/ReturnCode;

    const-string v1, "NO_INIT"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v3}, Lcom/motorola/camera/background/common/ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->NO_INIT:Lcom/motorola/camera/background/common/ReturnCode;

    .line 5
    new-instance v0, Lcom/motorola/camera/background/common/ReturnCode;

    const-string v1, "MISSING_LIBRARY"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v3}, Lcom/motorola/camera/background/common/ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->MISSING_LIBRARY:Lcom/motorola/camera/background/common/ReturnCode;

    .line 6
    new-instance v0, Lcom/motorola/camera/background/common/ReturnCode;

    const-string v1, "INCOMPATIBLE_LIBRARY"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v3}, Lcom/motorola/camera/background/common/ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->INCOMPATIBLE_LIBRARY:Lcom/motorola/camera/background/common/ReturnCode;

    .line 7
    new-instance v0, Lcom/motorola/camera/background/common/ReturnCode;

    const-string v1, "JSON_CONFIG_ERROR"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v3}, Lcom/motorola/camera/background/common/ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->JSON_CONFIG_ERROR:Lcom/motorola/camera/background/common/ReturnCode;

    .line 8
    new-instance v0, Lcom/motorola/camera/background/common/ReturnCode;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v3}, Lcom/motorola/camera/background/common/ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->UNKNOWN_ERROR:Lcom/motorola/camera/background/common/ReturnCode;

    .line 9
    new-instance v0, Lcom/motorola/camera/background/common/ReturnCode;

    const-string v1, "OBJECT_MISSING"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v3}, Lcom/motorola/camera/background/common/ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->OBJECT_MISSING:Lcom/motorola/camera/background/common/ReturnCode;

    .line 10
    new-instance v0, Lcom/motorola/camera/background/common/ReturnCode;

    const-string v1, "ALG_WARNING"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v3}, Lcom/motorola/camera/background/common/ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->ALG_WARNING:Lcom/motorola/camera/background/common/ReturnCode;

    .line 11
    new-instance v0, Lcom/motorola/camera/background/common/ReturnCode;

    const-string v1, "CANCELED"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v3}, Lcom/motorola/camera/background/common/ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->CANCELED:Lcom/motorola/camera/background/common/ReturnCode;

    .line 12
    new-instance v0, Lcom/motorola/camera/background/common/ReturnCode;

    const-string v1, "UNEXPECTED_NULL"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v3}, Lcom/motorola/camera/background/common/ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->UNEXPECTED_NULL:Lcom/motorola/camera/background/common/ReturnCode;

    .line 13
    new-instance v0, Lcom/motorola/camera/background/common/ReturnCode;

    const-string v1, "BAD_VALUE"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v3}, Lcom/motorola/camera/background/common/ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    .line 14
    new-instance v0, Lcom/motorola/camera/background/common/ReturnCode;

    const-string v1, "FAILED_TRANSACTION"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3, v3}, Lcom/motorola/camera/background/common/ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->FAILED_TRANSACTION:Lcom/motorola/camera/background/common/ReturnCode;

    .line 15
    new-instance v0, Lcom/motorola/camera/background/common/ReturnCode;

    const-string v1, "DISCARD_RESULT"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3, v3}, Lcom/motorola/camera/background/common/ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->DISCARD_RESULT:Lcom/motorola/camera/background/common/ReturnCode;

    .line 16
    new-instance v0, Lcom/motorola/camera/background/common/ReturnCode;

    const-string v1, "DEFERRED_TASK"

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3, v3}, Lcom/motorola/camera/background/common/ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->DEFERRED_TASK:Lcom/motorola/camera/background/common/ReturnCode;

    .line 17
    new-instance v0, Lcom/motorola/camera/background/common/ReturnCode;

    const-string v1, "NOT_ENOUGH_FRAMES"

    const/16 v3, 0x10

    invoke-direct {v0, v1, v3, v3}, Lcom/motorola/camera/background/common/ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->NOT_ENOUGH_FRAMES:Lcom/motorola/camera/background/common/ReturnCode;

    .line 18
    new-instance v0, Lcom/motorola/camera/background/common/ReturnCode;

    const-string v1, "CONDITIONALLY_FAILED"

    const/16 v4, 0x11

    invoke-direct {v0, v1, v4, v4}, Lcom/motorola/camera/background/common/ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->CONDITIONALLY_FAILED:Lcom/motorola/camera/background/common/ReturnCode;

    .line 19
    new-instance v0, Lcom/motorola/camera/background/common/ReturnCode;

    const-string v1, "REDIRECT_FAILED"

    const/16 v4, 0x12

    invoke-direct {v0, v1, v4, v4}, Lcom/motorola/camera/background/common/ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->REDIRECT_FAILED:Lcom/motorola/camera/background/common/ReturnCode;

    .line 20
    new-instance v0, Lcom/motorola/camera/background/common/ReturnCode;

    const-string v1, "TIME_OUT"

    const/16 v4, 0x13

    invoke-direct {v0, v1, v4, v4}, Lcom/motorola/camera/background/common/ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->TIME_OUT:Lcom/motorola/camera/background/common/ReturnCode;

    .line 21
    new-instance v0, Lcom/motorola/camera/background/common/ReturnCode;

    const-string v1, "PENDING_JOBS"

    const/16 v4, 0x14

    const/16 v5, 0x3e7

    invoke-direct {v0, v1, v4, v5}, Lcom/motorola/camera/background/common/ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->PENDING_JOBS:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-static {}, Lcom/motorola/camera/background/common/ReturnCode;->$values()[Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->$VALUES:[Lcom/motorola/camera/background/common/ReturnCode;

    new-instance v0, Lcom/motorola/camera/background/common/ReturnCode$CREATOR;

    invoke-direct {v0}, Lcom/motorola/camera/background/common/ReturnCode$CREATOR;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/ReturnCode;->CREATOR:Lcom/motorola/camera/background/common/ReturnCode$CREATOR;

    .line 22
    invoke-static {}, Lcom/motorola/camera/background/common/ReturnCode;->values()[Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object v0

    .line 23
    array-length v1, v0

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    .line 24
    :goto_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 25
    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 26
    iget v5, v4, Lcom/motorola/camera/background/common/ReturnCode;->returnCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sput-object v1, Lcom/motorola/camera/background/common/ReturnCode;->map:Ljava/util/Map;

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
    iput p3, p0, Lcom/motorola/camera/background/common/ReturnCode;->returnCode:I

    return-void
.end method

.method public static final synthetic access$getMap$cp()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->map:Ljava/util/Map;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 1

    const-class v0, Lcom/motorola/camera/background/common/ReturnCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/ReturnCode;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/background/common/ReturnCode;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->$VALUES:[Lcom/motorola/camera/background/common/ReturnCode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/background/common/ReturnCode;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getReturnCode()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/ReturnCode;->returnCode:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
