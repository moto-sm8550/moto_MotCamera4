.class public final synthetic Lcom/motorola/camera/saving/FileName$1;
.super Ljava/lang/Object;
.source "FileName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/saving/FileName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$motorola$camera$ShotType:[I

.field public static final synthetic $SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf$InstanceType;->values()[Lcom/motorola/camera/mcf/Mcf$InstanceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v3, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR_ADVANCED:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR_NO_ADRC:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v5, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR_ADVANCED_AILS:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v6, Lcom/motorola/camera/mcf/Mcf$InstanceType;->LOW_LIGHT_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->LOW_LIGHT_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v6, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->DISPLAY_FLASH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/4 v8, 0x7

    aput v8, v6, v7
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v6, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HAL_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x8

    aput v8, v6, v7
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v6, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HAL_FRAME_STACK_FLASH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x9

    aput v8, v6, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v6, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HAL_FRAME_STACK_AILS:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0xa

    aput v8, v6, v7
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v6, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0xb

    aput v8, v6, v7
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v6, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SUPER_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0xc

    aput v8, v6, v7
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v6, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->RAW_SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0xd

    aput v8, v6, v7
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v6, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->JG_SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0xe

    aput v8, v6, v7
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v6, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SUPER_RESOLUTION:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0xf

    aput v8, v6, v7
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v6, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SLSI_SR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x10

    aput v8, v6, v7
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v6, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->AL_SUPER_RESOLUTION:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x11

    aput v8, v6, v7
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v6, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->AL_SUPER_RESOLUTION_HDR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x12

    aput v8, v6, v7
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v6, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x13

    aput v8, v6, v7
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v6, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR_SCBOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x14

    aput v8, v6, v7
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v6, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SF_DEPTH_HDR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x15

    aput v8, v6, v7
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v6, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->MULTI_FRAME_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x16

    aput v8, v6, v7
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v6, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SUPER_REMOSAIC:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x17

    aput v8, v6, v7
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v6, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SUPER_REMOSAIC_HDR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x18

    aput v8, v6, v7
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v6, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR_ADVANCED_AIIST:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x19

    aput v8, v6, v7
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v6, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HAL_FRAME_STACK_AIIST:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x1a

    aput v8, v6, v7
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    .line 2
    :catch_19
    invoke-static {}, Lcom/motorola/camera/ShotType;->values()[Lcom/motorola/camera/ShotType;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$ShotType:[I

    :try_start_1a
    sget-object v7, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v1, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$ShotType:[I

    sget-object v6, Lcom/motorola/camera/ShotType;->VIDEO_SLOW_MOTION:Lcom/motorola/camera/ShotType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v1, v6
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$ShotType:[I

    sget-object v1, Lcom/motorola/camera/ShotType;->VIDEO_ULTRA_HD:Lcom/motorola/camera/ShotType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$ShotType:[I

    sget-object v1, Lcom/motorola/camera/ShotType;->SINGLE_RAW:Lcom/motorola/camera/ShotType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$ShotType:[I

    sget-object v1, Lcom/motorola/camera/ShotType;->CINEMAGRAPH:Lcom/motorola/camera/ShotType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$ShotType:[I

    sget-object v1, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
