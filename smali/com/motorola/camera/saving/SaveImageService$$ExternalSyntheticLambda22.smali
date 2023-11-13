.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda22;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda22;-><init>()V

    sput-object v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda22;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda22;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/motorola/camera/shared/PackageUtility;->getInstance()Lcom/motorola/camera/shared/PackageUtility;

    move-result-object p0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.motorola.camera3"

    aput-object v2, v0, v1

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/shared/PackageUtility;->getContentAiPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/shared/PackageUtility;->getImagerTuningName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "com.motorola.motcameradesktop"

    aput-object v2, v0, v1

    .line 4
    invoke-virtual {p0, v0}, Lcom/motorola/camera/shared/PackageUtility;->cacheVersionForPackage([Ljava/lang/String;)V

    return-void
.end method
