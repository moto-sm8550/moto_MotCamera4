.class public final enum Lcom/motorola/camera/background/common/IOMIMEType;
.super Ljava/lang/Enum;
.source "IOMIMEType.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/common/IOMIMEType$CREATOR;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/background/common/IOMIMEType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/background/common/IOMIMEType;

.field public static final enum APP6_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

.field public static final enum BINARY_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

.field public static final CREATOR:Lcom/motorola/camera/background/common/IOMIMEType$CREATOR;

.field public static final enum EXIF_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

.field public static final enum JPEG_IMAGE:Lcom/motorola/camera/background/common/IOMIMEType;

.field public static final enum JSON_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

.field public static final enum MAKERNOTE_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

.field public static final enum RAW_IMAGE:Lcom/motorola/camera/background/common/IOMIMEType;

.field public static final enum UNDEFINED:Lcom/motorola/camera/background/common/IOMIMEType;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/motorola/camera/background/common/IOMIMEType;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/background/common/IOMIMEType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/background/common/IOMIMEType;->UNDEFINED:Lcom/motorola/camera/background/common/IOMIMEType;

    .line 2
    new-instance v1, Lcom/motorola/camera/background/common/IOMIMEType;

    const-string v3, "RAW_IMAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/background/common/IOMIMEType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/background/common/IOMIMEType;->RAW_IMAGE:Lcom/motorola/camera/background/common/IOMIMEType;

    .line 3
    new-instance v3, Lcom/motorola/camera/background/common/IOMIMEType;

    const-string v5, "BINARY_DATA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/background/common/IOMIMEType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/background/common/IOMIMEType;->BINARY_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    .line 4
    new-instance v5, Lcom/motorola/camera/background/common/IOMIMEType;

    const-string v7, "JPEG_IMAGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/background/common/IOMIMEType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/background/common/IOMIMEType;->JPEG_IMAGE:Lcom/motorola/camera/background/common/IOMIMEType;

    .line 5
    new-instance v7, Lcom/motorola/camera/background/common/IOMIMEType;

    const-string v9, "TEXT_DATA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/background/common/IOMIMEType;-><init>(Ljava/lang/String;I)V

    .line 6
    new-instance v9, Lcom/motorola/camera/background/common/IOMIMEType;

    const-string v11, "JSON_DATA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/background/common/IOMIMEType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/background/common/IOMIMEType;->JSON_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    .line 7
    new-instance v11, Lcom/motorola/camera/background/common/IOMIMEType;

    const-string v13, "APP6_DATA"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/background/common/IOMIMEType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/background/common/IOMIMEType;->APP6_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    .line 8
    new-instance v13, Lcom/motorola/camera/background/common/IOMIMEType;

    const-string v15, "EXIF_DATA"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/background/common/IOMIMEType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/background/common/IOMIMEType;->EXIF_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    .line 9
    new-instance v15, Lcom/motorola/camera/background/common/IOMIMEType;

    const-string v14, "MAKERNOTE_DATA"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/motorola/camera/background/common/IOMIMEType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/background/common/IOMIMEType;->MAKERNOTE_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/motorola/camera/background/common/IOMIMEType;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/motorola/camera/background/common/IOMIMEType;->$VALUES:[Lcom/motorola/camera/background/common/IOMIMEType;

    new-instance v0, Lcom/motorola/camera/background/common/IOMIMEType$CREATOR;

    invoke-direct {v0}, Lcom/motorola/camera/background/common/IOMIMEType$CREATOR;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/IOMIMEType;->CREATOR:Lcom/motorola/camera/background/common/IOMIMEType$CREATOR;

    .line 10
    const-class v0, Lcom/motorola/camera/background/common/IOMIMEType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/background/common/IOMIMEType;
    .locals 1

    const-class v0, Lcom/motorola/camera/background/common/IOMIMEType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/IOMIMEType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/background/common/IOMIMEType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/common/IOMIMEType;->$VALUES:[Lcom/motorola/camera/background/common/IOMIMEType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/background/common/IOMIMEType;

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
    const-string p0, "makernote"

    return-object p0

    :pswitch_1
    const-string p0, "exif"

    return-object p0

    :pswitch_2
    const-string p0, "app6"

    return-object p0

    :pswitch_3
    const-string p0, "json"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "txt"

    return-object p0

    :pswitch_5
    const-string p0, "jpeg"

    return-object p0

    :pswitch_6
    const-string p0, "bin"

    return-object p0

    :pswitch_7
    const-string p0, "raw_image"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "undefined"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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
