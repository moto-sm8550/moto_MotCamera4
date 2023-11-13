.class public final enum Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;
.super Ljava/lang/Enum;
.source "DeviceProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/shared/DeviceProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DEV_PROP_STR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum BUILD_CHARACTERISTICS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum CAMERA_SWITCH_MODE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum CAMERA_VARIANT:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum HARDWARE_SKU:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_BRAND:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_DISPLAY:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_DISPLAY_MODEL:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_DISPLAY_VENDOR:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_DISPLAY_VENDOR_TEXT:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_IS_PRC:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_IS_WHITE_LABEL:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_KEY_CPU_ABILIST64:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_MANUFACTURER:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PROPERTY_KEY_CUSTOMERID:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PROPERTY_KEY_IS_PRODUCTION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PROPERTY_KEY_REGION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum QCOM_VERSION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum RELEASE_VERSION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum ROOTED_DEVICE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum SOC_MANUFACTURER:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum TARGET_DEVICE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;


# instance fields
.field public mSet:Z

.field public final mSystemProperty:Ljava/lang/String;

.field public mValue:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const-string v1, "DEFAULT_STORAGE_LOC"

    const/4 v2, 0x0

    const-string v3, "ro.camera.storage.default"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    new-instance v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const-string v3, "ROOTED_DEVICE"

    const/4 v4, 0x1

    const-string v5, "persist.qe"

    invoke-direct {v1, v3, v4, v5}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->ROOTED_DEVICE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 3
    new-instance v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const-string v5, "TARGET_DEVICE"

    const/4 v6, 0x2

    const-string v7, "ro.product.device"

    invoke-direct {v3, v5, v6, v7}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->TARGET_DEVICE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 4
    new-instance v5, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const-string v7, "PRODUCT_DISPLAY"

    const/4 v8, 0x3

    const-string v9, "ro.product.display"

    invoke-direct {v5, v7, v8, v9}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 5
    new-instance v7, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const-string v9, "PRODUCT_DISPLAY_VENDOR"

    const/4 v10, 0x4

    const-string v11, "ro.vendor.product.display"

    invoke-direct {v7, v9, v10, v11}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY_VENDOR:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 6
    new-instance v9, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const-string v11, "PRODUCT_DISPLAY_VENDOR_TEXT"

    const/4 v12, 0x5

    const-string v13, "ro.vendor.product.display.plain_text"

    invoke-direct {v9, v11, v12, v13}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY_VENDOR_TEXT:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 7
    new-instance v11, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const-string v13, "PRODUCT_DISPLAY_MODEL"

    const/4 v14, 0x6

    const-string v15, "ro.product.model"

    invoke-direct {v11, v13, v14, v15}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY_MODEL:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 8
    new-instance v13, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const-string v15, "PRODUCT_IS_WHITE_LABEL"

    const/4 v14, 0x7

    const-string v12, "ro.product.white_label"

    invoke-direct {v13, v15, v14, v12}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_IS_WHITE_LABEL:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 9
    new-instance v12, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const-string v15, "PRODUCT_BRAND"

    const/16 v14, 0x8

    const-string v10, "ro.product.brand"

    invoke-direct {v12, v15, v14, v10}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_BRAND:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 10
    new-instance v10, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const-string v15, "PRODUCT_MANUFACTURER"

    const/16 v14, 0x9

    const-string v8, "ro.product.manufacturer"

    invoke-direct {v10, v15, v14, v8}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_MANUFACTURER:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 11
    new-instance v8, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const-string v15, "PRODUCT_IS_PRC"

    const/16 v14, 0xa

    const-string v6, "ro.product.is_prc"

    invoke-direct {v8, v15, v14, v6}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_IS_PRC:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 12
    new-instance v6, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const-string v15, "QCOM_VERSION"

    const/16 v14, 0xb

    const-string v4, "ro.build.version.qcom"

    invoke-direct {v6, v15, v14, v4}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->QCOM_VERSION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 13
    new-instance v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const-string v15, "HARDWARE_SKU"

    const/16 v14, 0xc

    const-string v2, "ro.boot.hardware.sku"

    invoke-direct {v4, v15, v14, v2}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->HARDWARE_SKU:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 14
    new-instance v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const-string v15, "BUILD_CHARACTERISTICS"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "ro.build.characteristics"

    invoke-direct {v2, v15, v14, v4}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->BUILD_CHARACTERISTICS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 15
    new-instance v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const-string v15, "CAMERA_SWITCH_MODE"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "camera.mot.switch"

    invoke-direct {v4, v15, v14, v2}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->CAMERA_SWITCH_MODE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 16
    new-instance v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const-string v15, "CAMERA_VARIANT"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "ro.vendor.hw.cam_variant"

    invoke-direct {v2, v15, v14, v4}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->CAMERA_VARIANT:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 17
    new-instance v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const-string v15, "RELEASE_VERSION"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "ro.build.version.release"

    invoke-direct {v4, v15, v14, v2}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->RELEASE_VERSION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 18
    new-instance v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const-string v15, "PROPERTY_KEY_IS_PRODUCTION"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "ro.product.is_production"

    invoke-direct {v2, v15, v14, v4}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PROPERTY_KEY_IS_PRODUCTION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 19
    new-instance v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const-string v15, "PROPERTY_KEY_CUSTOMERID"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "ro.mot.build.customerid"

    invoke-direct {v4, v15, v14, v2}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PROPERTY_KEY_CUSTOMERID:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 20
    new-instance v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const-string v15, "PROPERTY_KEY_REGION"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "ro.lenovo.region"

    invoke-direct {v2, v15, v14, v4}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PROPERTY_KEY_REGION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 21
    new-instance v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const-string v15, "PRODUCT_KEY_CPU_ABILIST64"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const-string v2, "ro.product.cpu.abilist64"

    invoke-direct {v4, v15, v14, v2}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_KEY_CPU_ABILIST64:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 22
    new-instance v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const-string v15, "SOC_MANUFACTURER"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const-string v4, "ro.hardware.soc.manufacturer"

    invoke-direct {v2, v15, v14, v4}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->SOC_MANUFACTURER:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/16 v4, 0x16

    new-array v4, v4, [Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/4 v15, 0x0

    aput-object v0, v4, v15

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    aput-object v2, v4, v14

    .line 23
    sput-object v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->$VALUES:[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mSystemProperty:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mValue:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mSet:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->$VALUES:[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-virtual {v0}, [Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    return-object v0
.end method
