.class public final enum Lcom/motorola/camera/mcf/Mcf$ProgressType;
.super Ljava/lang/Enum;
.source "Mcf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/Mcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgressType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/mcf/Mcf$ProgressType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum ALGORITHM_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum ALGORITHM_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum ALGORITHM_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum CANCELLED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum FRAME_COLLECTION_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum FRAME_COLLECTION_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum FRAME_COLLECTION_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum INVALID:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum REPROCESS_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum REPROCESS_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum REPROCESS_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum SEQ_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum SEQ_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum STATE_MACHINE_BG_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum STATE_MACHINE_BG_TRANSFER_APP:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum STATE_MACHINE_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum STATE_MACHINE_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum STATE_MACHINE_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

.field public static final enum SWJPEG_REPROC_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->INVALID:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    .line 2
    new-instance v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v3, "SEQ_STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->SEQ_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v3, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v5, "SEQ_STOPPED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/mcf/Mcf$ProgressType;->SEQ_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    .line 3
    new-instance v5, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v7, "STATE_MACHINE_STARTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v7, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v9, "STATE_MACHINE_STOPPED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    .line 4
    new-instance v9, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v11, "FRAME_COLLECTION_STARTED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v11, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v13, "FRAME_COLLECTION_STOPPED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    .line 5
    new-instance v13, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v15, "REPROCESS_STARTED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/mcf/Mcf$ProgressType;->REPROCESS_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v15, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v14, "REPROCESS_STOPPED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/mcf/Mcf$ProgressType;->REPROCESS_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    .line 6
    new-instance v14, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v12, "ALGORITHM_STARTED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/mcf/Mcf$ProgressType;->ALGORITHM_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v12, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v10, "ALGORITHM_STOPPED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/mcf/Mcf$ProgressType;->ALGORITHM_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    .line 7
    new-instance v10, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v8, "STATE_MACHINE_FAILURE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v8, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v6, "FRAME_COLLECTION_FAILURE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v6, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v4, "REPROCESS_FAILURE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/mcf/Mcf$ProgressType;->REPROCESS_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    .line 8
    new-instance v4, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v2, "ALGORITHM_FAILURE"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$ProgressType;->ALGORITHM_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v6, "CANCELLED"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$ProgressType;->CANCELLED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v6, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v4, "STATE_MACHINE_BG_STARTED"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_BG_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v2, "STATE_MACHINE_BG_TRANSFER_APP"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_BG_TRANSFER_APP:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    .line 9
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const-string v6, "SWJPEG_REPROC_STARTED"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$ProgressType;->SWJPEG_REPROC_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const/16 v6, 0x13

    new-array v6, v6, [Lcom/motorola/camera/mcf/Mcf$ProgressType;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    const/16 v0, 0xf

    aput-object v19, v6, v0

    const/16 v0, 0x10

    aput-object v20, v6, v0

    const/16 v0, 0x11

    aput-object v21, v6, v0

    aput-object v2, v6, v4

    .line 10
    sput-object v6, Lcom/motorola/camera/mcf/Mcf$ProgressType;->$VALUES:[Lcom/motorola/camera/mcf/Mcf$ProgressType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$ProgressType;
    .locals 1

    const-class v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/Mcf$ProgressType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/mcf/Mcf$ProgressType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->$VALUES:[Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v0}, [Lcom/motorola/camera/mcf/Mcf$ProgressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/mcf/Mcf$ProgressType;

    return-object v0
.end method
