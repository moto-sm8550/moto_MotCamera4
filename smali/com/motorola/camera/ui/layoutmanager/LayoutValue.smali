.class public final enum Lcom/motorola/camera/ui/layoutmanager/LayoutValue;
.super Ljava/lang/Enum;
.source "LayoutValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/layoutmanager/LayoutValue;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public static final enum Layout16_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public static final enum Layout205_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public static final enum Layout20_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public static final enum Layout21_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public static final enum Layout22_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;


# instance fields
.field public carouselBottom:F

.field public height:F

.field public mCaptureBarMargin:F

.field public modeControlBarSize:F

.field public preview169Align:I

.field public preview43Align:I

.field public previewCropSize:F

.field public uiBottomAlign:I

.field public width:F


# direct methods
.method public static constructor <clinit>()V
    .locals 37

    .line 1
    new-instance v12, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v1, "Layout16_9"

    const/4 v2, 0x0

    const/high16 v3, 0x44200000    # 640.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    const/high16 v6, 0x42800000    # 64.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    move-object v0, v12

    move v9, v10

    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFFIII)V

    sput-object v12, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout16_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v14, "Layout18_9"

    const/4 v15, 0x1

    const/high16 v16, 0x44340000    # 720.0f

    const/high16 v17, 0x43b40000    # 360.0f

    const/16 v18, 0x0

    const/high16 v19, 0x42800000    # 64.0f

    const/high16 v20, 0x41600000    # 14.0f

    const/16 v21, 0x0

    const/16 v23, 0x3

    const/16 v24, 0x2

    move-object v13, v0

    move/from16 v22, v23

    invoke-direct/range {v13 .. v24}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFFIII)V

    .line 3
    new-instance v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v26, "Layout189_9"

    const/16 v27, 0x2

    const/high16 v28, 0x443d0000    # 756.0f

    const/high16 v29, 0x43b40000    # 360.0f

    const/16 v30, 0x0

    const/high16 v31, 0x42800000    # 64.0f

    const/high16 v32, 0x41600000    # 14.0f

    const/16 v33, 0x0

    const/16 v35, 0x3

    const/16 v36, 0x2

    move-object/from16 v25, v1

    move/from16 v34, v35

    invoke-direct/range {v25 .. v36}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFFIII)V

    .line 4
    new-instance v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v14, "Layout19_9"

    const/4 v15, 0x3

    const/high16 v16, 0x443e0000    # 760.0f

    const/16 v20, 0x0

    const/16 v22, 0x3

    const/16 v23, 0x2

    move-object v13, v2

    invoke-direct/range {v13 .. v24}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFFIII)V

    .line 5
    new-instance v3, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v26, "Layout195_9"

    const/16 v27, 0x4

    const/high16 v28, 0x44430000    # 780.0f

    const/high16 v30, 0x42100000    # 36.0f

    const/16 v32, 0x0

    const/high16 v33, 0x41400000    # 12.0f

    const/16 v34, 0x3

    const/16 v35, 0x1

    move-object/from16 v25, v3

    invoke-direct/range {v25 .. v36}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFFIII)V

    .line 6
    new-instance v4, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v14, "Layout20_9"

    const/4 v15, 0x5

    const/high16 v16, 0x44480000    # 800.0f

    const/high16 v18, 0x42400000    # 48.0f

    const/16 v23, 0x3

    const/16 v24, 0x4

    move-object v13, v4

    move/from16 v22, v23

    invoke-direct/range {v13 .. v24}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFFIII)V

    sput-object v4, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout20_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 7
    new-instance v5, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v26, "Layout205_9"

    const/16 v27, 0x6

    const/high16 v28, 0x444d0000    # 820.0f

    const/high16 v30, 0x42600000    # 56.0f

    const/16 v33, 0x0

    const/16 v35, 0x3

    const/16 v36, 0x4

    move-object/from16 v25, v5

    move/from16 v34, v35

    invoke-direct/range {v25 .. v36}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFFIII)V

    sput-object v5, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout205_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 8
    new-instance v6, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v14, "Layout21_9"

    const/4 v15, 0x7

    const/high16 v16, 0x44520000    # 840.0f

    const/high16 v18, 0x42880000    # 68.0f

    move-object v13, v6

    invoke-direct/range {v13 .. v24}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFFIII)V

    sput-object v6, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout21_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 9
    new-instance v7, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v26, "Layout22_9"

    const/16 v27, 0x8

    const/high16 v28, 0x445c0000    # 880.0f

    const/high16 v30, 0x42900000    # 72.0f

    const/high16 v31, 0x42b00000    # 88.0f

    const/high16 v33, 0x40800000    # 4.0f

    const/16 v36, 0x3

    move-object/from16 v25, v7

    invoke-direct/range {v25 .. v36}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFFIII)V

    sput-object v7, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout22_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 10
    new-instance v8, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v14, "Layout4_3"

    const/16 v15, 0x9

    const/high16 v16, 0x40800000    # 4.0f

    const/high16 v17, 0x40400000    # 3.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object v13, v8

    move/from16 v22, v23

    invoke-direct/range {v13 .. v24}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFFIII)V

    .line 11
    new-instance v9, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v26, "Layout3_4"

    const/16 v27, 0xa

    const/high16 v28, 0x40400000    # 3.0f

    const/high16 v29, 0x40800000    # 4.0f

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x1

    const/16 v36, 0x1

    move-object/from16 v25, v9

    move/from16 v34, v35

    invoke-direct/range {v25 .. v36}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFFIII)V

    .line 12
    new-instance v10, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const-string v14, "Layout3_418"

    const/16 v15, 0xb

    const/high16 v16, 0x40400000    # 3.0f

    const v17, 0x4085c28f

    move-object v13, v10

    invoke-direct/range {v13 .. v24}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;-><init>(Ljava/lang/String;IFFFFFFIII)V

    const/16 v11, 0xc

    new-array v11, v11, [Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x1

    aput-object v0, v11, v12

    const/4 v0, 0x2

    aput-object v1, v11, v0

    const/4 v0, 0x3

    aput-object v2, v11, v0

    const/4 v0, 0x4

    aput-object v3, v11, v0

    const/4 v0, 0x5

    aput-object v4, v11, v0

    const/4 v0, 0x6

    aput-object v5, v11, v0

    const/4 v0, 0x7

    aput-object v6, v11, v0

    const/16 v0, 0x8

    aput-object v7, v11, v0

    const/16 v0, 0x9

    aput-object v8, v11, v0

    const/16 v0, 0xa

    aput-object v9, v11, v0

    const/16 v0, 0xb

    aput-object v10, v11, v0

    .line 13
    sput-object v11, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->$VALUES:[Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IFFFFFFIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFFF",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p4, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->width:F

    .line 3
    iput p3, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    .line 4
    iput p5, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->carouselBottom:F

    .line 5
    iput p6, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->modeControlBarSize:F

    .line 6
    iput p7, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->previewCropSize:F

    .line 7
    iput p8, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->mCaptureBarMargin:F

    .line 8
    iput p9, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview43Align:I

    .line 9
    iput p10, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    .line 10
    iput p11, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->uiBottomAlign:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/layoutmanager/LayoutValue;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/layoutmanager/LayoutValue;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->$VALUES:[Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    return-object v0
.end method
