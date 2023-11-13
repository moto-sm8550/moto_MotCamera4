.class public final synthetic Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    .line 1
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    mul-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    .line 2
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr p1, p0

    if-lt p2, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method
