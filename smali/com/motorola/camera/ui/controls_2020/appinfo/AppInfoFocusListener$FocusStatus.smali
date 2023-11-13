.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener$FocusStatus;
.super Ljava/lang/Object;
.source "AppInfoFocusListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FocusStatus"
.end annotation


# instance fields
.field public final isMoving:Z

.field public final isSuccess:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener$FocusStatus;->isMoving:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener$FocusStatus;->isSuccess:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener$FocusStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener$FocusStatus;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener$FocusStatus;->isMoving:Z

    iget-boolean v3, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener$FocusStatus;->isMoving:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener$FocusStatus;->isSuccess:Z

    iget-boolean p1, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener$FocusStatus;->isSuccess:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener$FocusStatus;->isMoving:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener$FocusStatus;->isSuccess:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, p0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "FocusStatus(isMoving="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener$FocusStatus;->isMoving:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener$FocusStatus;->isSuccess:Z

    const/16 v1, 0x29

    .line 3
    invoke-static {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/states/AlwaysAwareStates$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
