.class public final synthetic Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda4;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda4;->INSTANCE:Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda4;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    sget p0, Lcom/motorola/camera/service/WatermarkEditorService;->AREA_RATIO:F

    const-string p0, "moto_water_mark.NV21"

    invoke-virtual {p2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
