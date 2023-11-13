.class public enum Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;
.super Ljava/lang/Enum;
.source "ContentAiProviderHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Model"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_MODEL;,
        Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_PREVIEW_MODEL;,
        Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_MODEL;,
        Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_4PATCH_MODEL;,
        Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_STANDARD_MODEL;,
        Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_WIDESCREEN_MODEL;,
        Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_FULL_MODEL;,
        Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum CUD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD;

.field public static final enum CUD_PREVIEW_FULL_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_FULL_MODEL;

.field public static final enum CUD_PREVIEW_STANDARD_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_STANDARD_MODEL;

.field public static final enum CUD_PREVIEW_WIDESCREEN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_WIDESCREEN_MODEL;

.field public static final enum DOC_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum IMAGE_STABILIZATION_4PATCH_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_4PATCH_MODEL;

.field public static final enum IMAGE_STABILIZATION_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_MODEL;

.field public static final enum LOW_LIGHT_SELFIE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_MODEL;

.field public static final enum LOW_LIGHT_SELFIE_PREVIEW_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_PREVIEW_MODEL;

.field public static final enum SLIDE_AUTO_CAPTURE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum SLIDE_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;


# instance fields
.field public final modelFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public final modelName:Ljava/lang/String;

.field public final modelVersion:I

.field public final versioning:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;


# direct methods
.method public static constructor <clinit>()V
    .locals 34

    .line 1
    new-instance v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->GESTURE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 2
    sget-object v9, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->GESTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$GESTURE;

    const-string v1, "GESTURE_AUTO_CAPTURE_MODEL"

    const/4 v2, 0x0

    const-string v4, "gesture_auto_capture_model"

    const/16 v5, 0xc9

    move-object v0, v7

    move-object v3, v8

    move-object v6, v9

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    .line 4
    new-instance v10, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-string v1, "GESTURE_AUTO_CAPTURE_TFLITE_MODEL"

    const/4 v2, 0x1

    const-string v4, "gesture_auto_capture_tflite_model"

    const/16 v5, 0xca

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    .line 5
    new-instance v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 6
    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SCENE_DETECTION;

    const-string v12, "SCENE_DETECTION_MODEL"

    const/4 v13, 0x2

    const-string v15, "scene_detection_model"

    const/16 v16, 0x125

    move-object v11, v0

    move-object v14, v1

    move-object/from16 v17, v2

    .line 7
    invoke-direct/range {v11 .. v17}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    .line 8
    new-instance v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-string v12, "SCENE_DETECTION_TFLITE_MODEL"

    const/4 v13, 0x3

    const-string v15, "scene_detection_tflite_model"

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    .line 9
    new-instance v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v14, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 10
    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SMILE_DETECTION;

    const-string v18, "SMILE_DETECTION_MODEL"

    const/16 v19, 0x4

    const-string/jumbo v21, "smile_detection_model"

    const/16 v22, 0x66

    move-object/from16 v17, v1

    move-object/from16 v20, v14

    move-object/from16 v23, v2

    .line 11
    invoke-direct/range {v17 .. v23}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    .line 12
    new-instance v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-string v12, "SMILE_DETECTION_TFLITE_MODEL"

    const/4 v13, 0x5

    const-string/jumbo v15, "smile_detection_tflite_model"

    const/16 v16, 0x66

    move-object v11, v4

    move-object/from16 v17, v2

    invoke-direct/range {v11 .. v17}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    .line 13
    new-instance v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v18, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SMILE_DETECTION_QUANT:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v16, "SMILE_DETECTION_QUANT_MODEL"

    const/16 v17, 0x6

    const-string/jumbo v19, "smile_detection_quant_model"

    const/16 v20, 0x65

    move-object v15, v5

    move-object/from16 v21, v2

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    .line 14
    new-instance v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_MODEL;

    invoke-direct {v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_MODEL;-><init>()V

    sput-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->LOW_LIGHT_SELFIE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_MODEL;

    .line 15
    new-instance v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 16
    sget-object v9, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->CONTENT_BACKWARD_COMPATIBLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$CONTENT_BACKWARD_COMPATIBLE;

    const/16 v13, 0x8

    const/16 v18, 0x67

    const/16 v16, 0x67

    const-string v12, "EYE_CONTOUR_MODEL"

    const-string v15, "eye_contour_model"

    move-object v11, v6

    move-object v14, v8

    move-object/from16 v17, v9

    .line 17
    invoke-direct/range {v11 .. v17}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    .line 18
    new-instance v19, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const/16 v13, 0x9

    const-string v12, "EYE_CONTOUR_TFLITE_MODEL"

    const-string v15, "eye_contour_tflite_model"

    move-object/from16 v11, v19

    move/from16 v16, v18

    invoke-direct/range {v11 .. v17}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    .line 19
    new-instance v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v23, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 20
    sget-object v26, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$DOC_SCAN;

    const/16 v22, 0xa

    const/16 v25, 0x66

    const-string v21, "DOC_SCAN_MODEL"

    const-string v24, "doc_scan_model"

    move-object/from16 v20, v8

    .line 21
    invoke-direct/range {v20 .. v26}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->DOC_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 22
    new-instance v9, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_PREVIEW_MODEL;

    invoke-direct {v9}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_PREVIEW_MODEL;-><init>()V

    sput-object v9, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->LOW_LIGHT_SELFIE_PREVIEW_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_PREVIEW_MODEL;

    .line 23
    new-instance v11, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_MODEL;

    invoke-direct {v11}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_MODEL;-><init>()V

    sput-object v11, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->IMAGE_STABILIZATION_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_MODEL;

    .line 24
    new-instance v12, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_4PATCH_MODEL;

    invoke-direct {v12}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_4PATCH_MODEL;-><init>()V

    sput-object v12, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->IMAGE_STABILIZATION_4PATCH_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_4PATCH_MODEL;

    .line 25
    new-instance v13, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v23, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    sget-object v26, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SLIDE_SCAN;

    const/16 v22, 0xe

    const/16 v25, 0x64

    const-string v21, "SLIDE_SCAN_MODEL"

    const-string/jumbo v24, "slide_scan_model"

    move-object/from16 v20, v13

    invoke-direct/range {v20 .. v26}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v13, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SLIDE_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 26
    new-instance v14, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v30, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 27
    sget-object v33, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SLIDE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SLIDE_AUTO_CAPTURE;

    const/16 v29, 0xf

    const/16 v32, 0x64

    const-string v28, "SLIDE_AUTO_CAPTURE_MODEL"

    const-string/jumbo v31, "slide_auto_capture_model"

    move-object/from16 v27, v14

    .line 28
    invoke-direct/range {v27 .. v33}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v14, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SLIDE_AUTO_CAPTURE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    .line 29
    new-instance v15, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_STANDARD_MODEL;

    invoke-direct {v15}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_STANDARD_MODEL;-><init>()V

    sput-object v15, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->CUD_PREVIEW_STANDARD_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_STANDARD_MODEL;

    .line 30
    new-instance v16, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_WIDESCREEN_MODEL;

    invoke-direct/range {v16 .. v16}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_WIDESCREEN_MODEL;-><init>()V

    sput-object v16, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->CUD_PREVIEW_WIDESCREEN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_WIDESCREEN_MODEL;

    .line 31
    new-instance v17, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_FULL_MODEL;

    invoke-direct/range {v17 .. v17}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_FULL_MODEL;-><init>()V

    sput-object v17, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->CUD_PREVIEW_FULL_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_FULL_MODEL;

    .line 32
    new-instance v18, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD;

    const/16 v20, 0x13

    invoke-direct/range {v18 .. v18}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD;-><init>()V

    sput-object v18, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->CUD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD;

    move-object/from16 v21, v15

    const/16 v15, 0x14

    new-array v15, v15, [Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const/16 v22, 0x0

    aput-object v7, v15, v22

    const/4 v7, 0x1

    aput-object v10, v15, v7

    const/4 v7, 0x2

    aput-object v0, v15, v7

    const/4 v0, 0x3

    aput-object v3, v15, v0

    const/4 v0, 0x4

    aput-object v1, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v2, v15, v0

    const/16 v0, 0x8

    aput-object v6, v15, v0

    const/16 v0, 0x9

    aput-object v19, v15, v0

    const/16 v0, 0xa

    aput-object v8, v15, v0

    const/16 v0, 0xb

    aput-object v9, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v13, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v21, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    const/16 v0, 0x12

    aput-object v17, v15, v0

    aput-object v18, v15, v20

    sput-object v15, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->$VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;",
            "Ljava/lang/String;",
            "I",
            "Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 3
    iput-object p4, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelName:Ljava/lang/String;

    .line 4
    iput p5, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelVersion:I

    .line 5
    iput-object p6, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->versioning:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->$VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    return-object v0
.end method


# virtual methods
.method public buildUri()Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->makeUriBuilder()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    const-string v0, "makeUriBuilder().build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final makeUriBuilder()Landroid/net/Uri$Builder;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 2
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/motorola/camera/shared/PackageUtility;->getInstance()Lcom/motorola/camera/shared/PackageUtility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/shared/PackageUtility;->getContentAiPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "Builder()\n              \u2026   .appendPath(modelName)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public modelVersion()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelVersion:I

    return p0
.end method
