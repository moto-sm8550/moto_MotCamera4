.class public final synthetic Lcom/motorola/camera/mcf/Mcf$14;
.super Ljava/lang/Object;
.source "Mcf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/Mcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$motorola$camera$mcf$Mcf$CameraMode:[I

.field public static final synthetic $SwitchMap$com$motorola$camera$mcf$Mcf$CameraType:[I

.field public static final synthetic $SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

.field public static final synthetic $SwitchMap$com$motorola$camera$mcf$McfCallback$CallbackType:[I

.field public static final synthetic $SwitchMap$com$motorola$camera$mcf$McfPreview$PreviewChanType:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->values()[Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$McfCallback$CallbackType:[I

    const/16 v1, 0x8

    const/4 v2, 0x1

    :try_start_0
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    const/4 v3, 0x2

    :try_start_1
    sget-object v4, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$McfCallback$CallbackType:[I

    aput v3, v4, v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v4, 0x3

    :try_start_2
    sget-object v5, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$McfCallback$CallbackType:[I

    aput v4, v5, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v5, 0x4

    :try_start_3
    sget-object v6, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$McfCallback$CallbackType:[I

    aput v5, v6, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v6, 0x5

    :try_start_4
    sget-object v7, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$McfCallback$CallbackType:[I

    aput v6, v7, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v7, 0x6

    :try_start_5
    sget-object v8, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$McfCallback$CallbackType:[I

    aput v7, v8, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v8, 0x7

    :try_start_6
    sget-object v9, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$McfCallback$CallbackType:[I

    aput v8, v9, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v9, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$McfCallback$CallbackType:[I

    aput v1, v9, v7
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v9, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$McfCallback$CallbackType:[I

    const/16 v10, 0x9

    aput v10, v9, v8
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 2
    :catch_8
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf$InstanceType;->values()[Lcom/motorola/camera/mcf/Mcf$InstanceType;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    :try_start_9
    sget-object v10, Lcom/motorola/camera/mcf/Mcf$InstanceType;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v9, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v10, Lcom/motorola/camera/mcf/Mcf$InstanceType;->ZSL_DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v3, v9, v10
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v9, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v10, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SF_DEPTH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v4, v9, v10
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v9, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v10, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v5, v9, v10
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v9, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v10, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR_SCBOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v6, v9, v10
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v6, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v9, Lcom/motorola/camera/mcf/Mcf$InstanceType;->MULTI_FRAME_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v6, v9
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v6, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HAL_FRAME_STACK_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v8, v6, v7
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v6, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SF_DEPTH_HDR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    .line 3
    :catch_10
    invoke-static {}, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->values()[Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$McfPreview$PreviewChanType:[I

    :try_start_11
    aput v2, v1, v0
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$McfPreview$PreviewChanType:[I

    aput v3, v1, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    .line 4
    :catch_12
    invoke-static {v4}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v1

    .line 5
    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$Mcf$CameraMode:[I

    :try_start_13
    aput v2, v1, v0
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$Mcf$CameraMode:[I

    aput v3, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$Mcf$CameraMode:[I

    aput v4, v1, v3
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    .line 6
    :catch_15
    invoke-static {v5}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v1

    .line 7
    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$Mcf$CameraType:[I

    :try_start_16
    aput v2, v1, v0
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$Mcf$CameraType:[I

    aput v3, v0, v2
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$Mcf$CameraType:[I

    aput v4, v0, v3
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$Mcf$CameraType:[I

    aput v5, v0, v4
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    return-void
.end method
