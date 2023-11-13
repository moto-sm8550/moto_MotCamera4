.class public final enum Lcom/motorola/camera/background/common/IOFormat;
.super Ljava/lang/Enum;
.source "IOFormat.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/common/IOFormat$CREATOR;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/background/common/IOFormat;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/background/common/IOFormat;

.field public static final enum BIN:Lcom/motorola/camera/background/common/IOFormat;

.field public static final CREATOR:Lcom/motorola/camera/background/common/IOFormat$CREATOR;

.field public static final enum JPEG:Lcom/motorola/camera/background/common/IOFormat;

.field public static final enum JSON:Lcom/motorola/camera/background/common/IOFormat;

.field public static final enum NV12:Lcom/motorola/camera/background/common/IOFormat;

.field public static final enum NV21:Lcom/motorola/camera/background/common/IOFormat;

.field public static final enum RAW:Lcom/motorola/camera/background/common/IOFormat;

.field public static final enum UNDEFINED:Lcom/motorola/camera/background/common/IOFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/motorola/camera/background/common/IOFormat;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/background/common/IOFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/background/common/IOFormat;->UNDEFINED:Lcom/motorola/camera/background/common/IOFormat;

    .line 2
    new-instance v1, Lcom/motorola/camera/background/common/IOFormat;

    const-string v3, "NV12"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/background/common/IOFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/background/common/IOFormat;->NV12:Lcom/motorola/camera/background/common/IOFormat;

    .line 3
    new-instance v3, Lcom/motorola/camera/background/common/IOFormat;

    const-string v5, "NV21"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/background/common/IOFormat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/background/common/IOFormat;->NV21:Lcom/motorola/camera/background/common/IOFormat;

    .line 4
    new-instance v5, Lcom/motorola/camera/background/common/IOFormat;

    const-string v7, "JPEG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/background/common/IOFormat;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/background/common/IOFormat;->JPEG:Lcom/motorola/camera/background/common/IOFormat;

    .line 5
    new-instance v7, Lcom/motorola/camera/background/common/IOFormat;

    const-string v9, "BIN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/background/common/IOFormat;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/background/common/IOFormat;->BIN:Lcom/motorola/camera/background/common/IOFormat;

    .line 6
    new-instance v9, Lcom/motorola/camera/background/common/IOFormat;

    const-string v11, "JSON"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/background/common/IOFormat;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/background/common/IOFormat;->JSON:Lcom/motorola/camera/background/common/IOFormat;

    .line 7
    new-instance v11, Lcom/motorola/camera/background/common/IOFormat;

    const-string v13, "TXT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/background/common/IOFormat;-><init>(Ljava/lang/String;I)V

    .line 8
    new-instance v13, Lcom/motorola/camera/background/common/IOFormat;

    const-string v15, "RAW"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/background/common/IOFormat;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/background/common/IOFormat;->RAW:Lcom/motorola/camera/background/common/IOFormat;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/motorola/camera/background/common/IOFormat;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/motorola/camera/background/common/IOFormat;->$VALUES:[Lcom/motorola/camera/background/common/IOFormat;

    new-instance v0, Lcom/motorola/camera/background/common/IOFormat$CREATOR;

    invoke-direct {v0}, Lcom/motorola/camera/background/common/IOFormat$CREATOR;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/IOFormat;->CREATOR:Lcom/motorola/camera/background/common/IOFormat$CREATOR;

    .line 9
    const-class v0, Lcom/motorola/camera/background/common/IOFormat;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/background/common/IOFormat;
    .locals 1

    const-class v0, Lcom/motorola/camera/background/common/IOFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/IOFormat;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/background/common/IOFormat;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/common/IOFormat;->$VALUES:[Lcom/motorola/camera/background/common/IOFormat;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/background/common/IOFormat;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "error"

    return-object p0

    :pswitch_0
    const-string p0, "raw"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "txt"

    return-object p0

    :pswitch_2
    const-string p0, "json"

    return-object p0

    :pswitch_3
    const-string p0, "bin"

    return-object p0

    :pswitch_4
    const-string p0, "jpg"

    return-object p0

    :pswitch_5
    const-string p0, "nv21"

    return-object p0

    :pswitch_6
    const-string p0, "nv12"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "undefined"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
