.class public final Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;
.super Ljava/lang/Object;
.source "CameraStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/device/CameraStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraStatusHolder"
.end annotation


# instance fields
.field public mIsLinked:Z

.field public mIsMaster:Z

.field public mNeedCloseAfterError:Z

.field public mOpen:I

.field public mPreview:I

.field public mSession:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:I

    .line 3
    iput v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mSession:I

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:I

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 6
    iput v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:I

    .line 7
    iput v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mSession:I

    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget v0, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:I

    iput v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:I

    .line 10
    iget v0, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mSession:I

    iput v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mSession:I

    .line 11
    iget v0, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:I

    iput v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:I

    .line 12
    iget-boolean v0, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mIsMaster:Z

    iput-boolean v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mIsMaster:Z

    .line 13
    iget-boolean v0, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mIsLinked:Z

    iput-boolean v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mIsLinked:Z

    .line 14
    iget-boolean p1, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mNeedCloseAfterError:Z

    iput-boolean p1, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mNeedCloseAfterError:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "CameraStatusHolder{mOpen="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:I

    invoke-static {v1}, Lcom/motorola/camera/device/CameraStateManager$Status$EnumUnboxingLocalUtility;->stringValueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mSession:I

    invoke-static {v1}, Lcom/motorola/camera/device/CameraStateManager$Status$EnumUnboxingLocalUtility;->stringValueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:I

    invoke-static {v1}, Lcom/motorola/camera/device/CameraStateManager$StreamStatus$EnumUnboxingLocalUtility;->stringValueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsMaster="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mIsMaster:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsLinked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mIsLinked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mNeedCloseAfterError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mNeedCloseAfterError:Z

    const/16 v1, 0x7d

    .line 3
    invoke-static {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/states/AlwaysAwareStates$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
