.class public final Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;
.super Ljava/lang/Object;
.source "IntArrayListAttribute.java"


# instance fields
.field public final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final record(Landroid/os/Bundle;Lcom/motorola/camera/analytics/SynchronizedBundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;->mName:Ljava/lang/String;

    .line 2
    iget-object v1, p2, Lcom/motorola/camera/analytics/SynchronizedBundle;->mLock:[B

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object p2, p2, Lcom/motorola/camera/analytics/SynchronizedBundle;->mSessionValues:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/analytics/Attributes/IntArrayListAttribute;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
