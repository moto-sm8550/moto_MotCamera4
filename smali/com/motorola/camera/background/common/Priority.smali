.class public final enum Lcom/motorola/camera/background/common/Priority;
.super Ljava/lang/Enum;
.source "Priority.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/common/Priority$CREATOR;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/background/common/Priority;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPriority.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Priority.kt\ncom/motorola/camera/background/common/Priority\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,47:1\n8804#2,2:48\n9064#2,4:50\n*S KotlinDebug\n*F\n+ 1 Priority.kt\ncom/motorola/camera/background/common/Priority\n*L\n35#1:48,2\n35#1:50,4\n*E\n"
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/background/common/Priority;

.field public static final enum BACKGROUND:Lcom/motorola/camera/background/common/Priority;

.field public static final CREATOR:Lcom/motorola/camera/background/common/Priority$CREATOR;

.field public static final enum DEFAULT:Lcom/motorola/camera/background/common/Priority;

.field public static final enum NORMAL:Lcom/motorola/camera/background/common/Priority;

.field public static final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/camera/background/common/Priority;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final priority:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/motorola/camera/background/common/Priority;

    const-string v1, "LOWEST"

    const/4 v2, 0x0

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    .line 2
    new-instance v1, Lcom/motorola/camera/background/common/Priority;

    const-string v3, "BACKGROUND"

    const/4 v4, 0x1

    const/16 v5, 0xa

    invoke-direct {v1, v3, v4, v5}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/motorola/camera/background/common/Priority;->BACKGROUND:Lcom/motorola/camera/background/common/Priority;

    .line 3
    new-instance v3, Lcom/motorola/camera/background/common/Priority;

    const-string v6, "LESS_FAVORABLE"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    .line 4
    new-instance v6, Lcom/motorola/camera/background/common/Priority;

    const-string v8, "NORMAL"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v2}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/motorola/camera/background/common/Priority;->NORMAL:Lcom/motorola/camera/background/common/Priority;

    .line 5
    new-instance v8, Lcom/motorola/camera/background/common/Priority;

    const-string v10, "MORE_FAVORABLE"

    const/4 v11, 0x4

    const/4 v12, -0x1

    invoke-direct {v8, v10, v11, v12}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    .line 6
    new-instance v10, Lcom/motorola/camera/background/common/Priority;

    const-string v12, "FOREGROUND"

    const/4 v13, 0x5

    const/4 v14, -0x2

    invoke-direct {v10, v12, v13, v14}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    .line 7
    new-instance v12, Lcom/motorola/camera/background/common/Priority;

    const-string v14, "DISPLAY"

    const/4 v15, 0x6

    const/4 v13, -0x4

    invoke-direct {v12, v14, v15, v13}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    .line 8
    new-instance v13, Lcom/motorola/camera/background/common/Priority;

    const-string v14, "URGENT_DISPLAY"

    const/4 v15, 0x7

    const/4 v11, -0x8

    invoke-direct {v13, v14, v15, v11}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    .line 9
    new-instance v11, Lcom/motorola/camera/background/common/Priority;

    const-string v14, "AUDIO"

    const/16 v15, 0x8

    const/16 v9, -0x10

    invoke-direct {v11, v14, v15, v9}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    .line 10
    new-instance v9, Lcom/motorola/camera/background/common/Priority;

    const-string v14, "URGENT_AUDIO"

    const/16 v15, 0x9

    const/16 v7, -0x13

    invoke-direct {v9, v14, v15, v7}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    .line 11
    new-instance v7, Lcom/motorola/camera/background/common/Priority;

    const-string v14, "HIGHEST"

    const/16 v15, -0x14

    invoke-direct {v7, v14, v5, v15}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    .line 12
    new-instance v14, Lcom/motorola/camera/background/common/Priority;

    const-string v15, "REALTIME"

    const/16 v5, 0xb

    const/16 v4, -0x15

    invoke-direct {v14, v15, v5, v4}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    .line 13
    new-instance v4, Lcom/motorola/camera/background/common/Priority;

    const-string v15, "DEFAULT"

    const/16 v5, 0xc

    invoke-direct {v4, v15, v5, v2}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/motorola/camera/background/common/Priority;->DEFAULT:Lcom/motorola/camera/background/common/Priority;

    const/16 v15, 0xd

    new-array v15, v15, [Lcom/motorola/camera/background/common/Priority;

    aput-object v0, v15, v2

    const/4 v0, 0x1

    aput-object v1, v15, v0

    const/4 v0, 0x2

    aput-object v3, v15, v0

    const/4 v0, 0x3

    aput-object v6, v15, v0

    const/4 v0, 0x4

    aput-object v8, v15, v0

    const/4 v0, 0x5

    aput-object v10, v15, v0

    const/4 v0, 0x6

    aput-object v12, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v11, v15, v0

    const/16 v0, 0x9

    aput-object v9, v15, v0

    const/16 v0, 0xa

    aput-object v7, v15, v0

    const/16 v0, 0xb

    aput-object v14, v15, v0

    aput-object v4, v15, v5

    sput-object v15, Lcom/motorola/camera/background/common/Priority;->$VALUES:[Lcom/motorola/camera/background/common/Priority;

    new-instance v0, Lcom/motorola/camera/background/common/Priority$CREATOR;

    invoke-direct {v0}, Lcom/motorola/camera/background/common/Priority$CREATOR;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/Priority;->CREATOR:Lcom/motorola/camera/background/common/Priority$CREATOR;

    .line 14
    invoke-static {}, Lcom/motorola/camera/background/common/Priority;->values()[Lcom/motorola/camera/background/common/Priority;

    move-result-object v0

    .line 15
    array-length v1, v0

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    const/16 v3, 0x10

    if-ge v1, v3, :cond_0

    move v1, v3

    .line 16
    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 17
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 18
    iget v5, v4, Lcom/motorola/camera/background/common/Priority;->priority:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sput-object v3, Lcom/motorola/camera/background/common/Priority;->map:Ljava/util/LinkedHashMap;

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

    iput p3, p0, Lcom/motorola/camera/background/common/Priority;->priority:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/background/common/Priority;
    .locals 1

    const-class v0, Lcom/motorola/camera/background/common/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/Priority;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/background/common/Priority;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/common/Priority;->$VALUES:[Lcom/motorola/camera/background/common/Priority;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/background/common/Priority;

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
