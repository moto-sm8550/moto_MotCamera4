.class public final enum Lcom/motorola/camera/mcf/McfCallback$CallbackType;
.super Ljava/lang/Enum;
.source "McfCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/McfCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallbackType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/mcf/McfCallback$CallbackType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/mcf/McfCallback$CallbackType;

.field public static final enum AI_SCENE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

.field public static final enum ARCSOFT_DRSD:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

.field public static final enum AUTO_CAPTURE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

.field public static final enum BEST_SHOT_VIDEO_TRIGGER:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

.field public static final enum FF_PROCESS_TIME_ESTIMATE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

.field public static final enum MODEL_LOAD_COMPLETE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

.field public static final enum MODEL_RESULTS:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

.field public static final enum REAL_TIME_DEPTH_STATUS:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

.field public static final enum UNDEFINED:Lcom/motorola/camera/mcf/McfCallback$CallbackType;


# instance fields
.field public value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->UNDEFINED:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    .line 2
    new-instance v1, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const-string v3, "BEST_SHOT_VIDEO_TRIGGER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->BEST_SHOT_VIDEO_TRIGGER:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    .line 3
    new-instance v3, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const-string v5, "REAL_TIME_DEPTH_STATUS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->REAL_TIME_DEPTH_STATUS:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    .line 4
    new-instance v5, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const-string v7, "MODEL_RESULTS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->MODEL_RESULTS:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    .line 5
    new-instance v7, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const-string v9, "MODEL_LOAD_COMPLETE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->MODEL_LOAD_COMPLETE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    .line 6
    new-instance v9, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const-string v11, "AUTO_CAPTURE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->AUTO_CAPTURE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    .line 7
    new-instance v11, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const-string v13, "AI_SCENE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->AI_SCENE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    .line 8
    new-instance v13, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const-string v15, "ARCSOFT_DRSD"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->ARCSOFT_DRSD:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    .line 9
    new-instance v15, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const-string v14, "FF_PROCESS_TIME_ESTIMATE"

    const/16 v12, 0x8

    const/16 v10, 0x65

    invoke-direct {v15, v14, v12, v10}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->FF_PROCESS_TIME_ESTIMATE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v15, v10, v12

    .line 10
    sput-object v10, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->$VALUES:[Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->value:I

    return-void
.end method

.method public static toEnum(Ljava/lang/String;)Lcom/motorola/camera/mcf/McfCallback$CallbackType;
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->UNDEFINED:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "MODEL_RESULTS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "UNDEFINED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_2
    const-string v1, "MODEL_LOAD_COMPLETE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_3
    const-string v1, "AUTO_CAPTURE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "AI_SCENE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "REAL_TIME_DEPTH_STATUS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_6
    const-string v1, "BEST_SHOT_VIDEO_TRIGGER"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "FF_PROCESS_TIME_ESTIMATE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_8
    const-string v1, "ARCSOFT_DRSD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/mcf/McfCallback;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown CallbackType string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 3
    :pswitch_0
    sget-object p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->MODEL_RESULTS:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object p0

    :pswitch_1
    return-object v0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->MODEL_LOAD_COMPLETE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->AUTO_CAPTURE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->AI_SCENE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->REAL_TIME_DEPTH_STATUS:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->BEST_SHOT_VIDEO_TRIGGER:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object p0

    .line 9
    :pswitch_7
    sget-object p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->FF_PROCESS_TIME_ESTIMATE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object p0

    .line 10
    :pswitch_8
    sget-object p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->ARCSOFT_DRSD:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f18279e -> :sswitch_8
        -0x2f012dd5 -> :sswitch_7
        0xfa8076a -> :sswitch_6
        0x16fb64df -> :sswitch_5
        0x1ca0cd95 -> :sswitch_4
        0x258cb096 -> :sswitch_3
        0x2dc109bc -> :sswitch_2
        0x68377130 -> :sswitch_1
        0x7edd58a0 -> :sswitch_0
    .end sparse-switch

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/McfCallback$CallbackType;
    .locals 1

    const-class v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/mcf/McfCallback$CallbackType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->$VALUES:[Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    invoke-virtual {v0}, [Lcom/motorola/camera/mcf/McfCallback$CallbackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->value:I

    .line 2
    sget-object v1, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->UNDEFINED:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    const/16 v2, 0x65

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 3
    invoke-static {}, Lcom/motorola/camera/mcf/McfCallback;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown CallbackType value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :pswitch_0
    sget-object v1, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->ARCSOFT_DRSD:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    goto :goto_0

    .line 5
    :pswitch_1
    sget-object v1, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->AI_SCENE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    goto :goto_0

    .line 6
    :pswitch_2
    sget-object v1, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->AUTO_CAPTURE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    goto :goto_0

    .line 7
    :pswitch_3
    sget-object v1, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->MODEL_LOAD_COMPLETE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    goto :goto_0

    .line 8
    :pswitch_4
    sget-object v1, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->MODEL_RESULTS:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    goto :goto_0

    .line 9
    :pswitch_5
    sget-object v1, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->REAL_TIME_DEPTH_STATUS:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    goto :goto_0

    .line 10
    :pswitch_6
    sget-object v1, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->BEST_SHOT_VIDEO_TRIGGER:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    goto :goto_0

    .line 11
    :cond_0
    sget-object v1, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->FF_PROCESS_TIME_ESTIMATE:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    .line 12
    :goto_0
    :pswitch_7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 13
    invoke-static {}, Lcom/motorola/camera/mcf/McfCallback;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown CallbackType enum: "

    .line 14
    invoke-static {v1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 15
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    :pswitch_8
    const-string p0, "FF_PROCESS_TIME_ESTIMATE"

    return-object p0

    :pswitch_9
    const-string p0, "ARCSOFT_DRSD"

    return-object p0

    :pswitch_a
    const-string p0, "AI_SCENE"

    return-object p0

    :pswitch_b
    const-string p0, "AUTO_CAPTURE"

    return-object p0

    :pswitch_c
    const-string p0, "MODEL_LOAD_COMPLETE"

    return-object p0

    :pswitch_d
    const-string p0, "MODEL_RESULTS"

    return-object p0

    :pswitch_e
    const-string p0, "REAL_TIME_DEPTH_STATUS"

    return-object p0

    :pswitch_f
    const-string p0, "BEST_SHOT_VIDEO_TRIGGER"

    return-object p0

    :pswitch_10
    const-string p0, "UNDEFINED"

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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
