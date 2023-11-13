.class public final Lcom/motorola/camera/utility/Error;
.super Ljava/lang/Object;
.source "Error.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/utility/Error$ErrorBuilder;
    }
.end annotation


# instance fields
.field public final mErrorDescription:I

.field public final mSensor:I

.field public final mStorage:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/Error$ErrorBuilder;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget p1, p1, Lcom/motorola/camera/utility/Error$ErrorBuilder;->sensor:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 3
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    .line 6
    iput v1, p0, Lcom/motorola/camera/utility/Error;->mSensor:I

    goto :goto_0

    :cond_0
    const/high16 p1, 0x1000000

    .line 7
    iput p1, p0, Lcom/motorola/camera/utility/Error;->mSensor:I

    goto :goto_0

    :cond_1
    const/high16 p1, 0x2000000

    .line 8
    iput p1, p0, Lcom/motorola/camera/utility/Error;->mSensor:I

    goto :goto_0

    .line 9
    :cond_2
    iput p1, p0, Lcom/motorola/camera/utility/Error;->mSensor:I

    .line 10
    :goto_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 11
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 12
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    .line 13
    iput v1, p0, Lcom/motorola/camera/utility/Error;->mStorage:I

    goto :goto_1

    :cond_3
    const/high16 p1, 0x800000

    .line 14
    iput p1, p0, Lcom/motorola/camera/utility/Error;->mStorage:I

    goto :goto_1

    :cond_4
    const/high16 p1, 0x400000

    .line 15
    iput p1, p0, Lcom/motorola/camera/utility/Error;->mStorage:I

    .line 16
    :goto_1
    iput v0, p0, Lcom/motorola/camera/utility/Error;->mErrorDescription:I

    return-void
.end method


# virtual methods
.method public final getError()I
    .locals 2

    iget v0, p0, Lcom/motorola/camera/utility/Error;->mErrorDescription:I

    iget v1, p0, Lcom/motorola/camera/utility/Error;->mStorage:I

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x0

    iget p0, p0, Lcom/motorola/camera/utility/Error;->mSensor:I

    or-int/2addr p0, v0

    return p0
.end method
