.class public final Lcom/motorola/camera/device/callables/MediaStatusListener$Status;
.super Ljava/lang/Object;
.source "MediaStatusListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/device/callables/MediaStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation


# instance fields
.field public final mExtra:I

.field public final mTYPE:I

.field public final mWhat:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;->mTYPE:I

    .line 3
    iput p2, p0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;->mWhat:I

    .line 4
    iput p3, p0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;->mExtra:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Status{mTYPE="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;->mTYPE:I

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero1;->stringValueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mWhat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;->mWhat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;->mExtra:I

    const/16 v1, 0x7d

    .line 3
    invoke-static {v0, p0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
