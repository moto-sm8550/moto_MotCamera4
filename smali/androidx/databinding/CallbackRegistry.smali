.class public Landroidx/databinding/CallbackRegistry;
.super Ljava/lang/Object;
.source "CallbackRegistry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/CallbackRegistry$NotifierCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation
.end field

.field public mFirst64Removed:J

.field public mNotificationLevel:I

.field public final mNotifier:Landroidx/databinding/CallbackRegistry$NotifierCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
            "TC;TT;TA;>;"
        }
    .end annotation
.end field

.field public mRemainderRemoved:[J


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
            "TC;TT;TA;>;)V"
        }
    .end annotation

    sget-object v0, Landroidx/databinding/PropertyChangeRegistry;->NOTIFIER_CALLBACK:Landroidx/databinding/PropertyChangeRegistry$1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    .line 4
    iput-object v0, p0, Landroidx/databinding/CallbackRegistry;->mNotifier:Landroidx/databinding/CallbackRegistry$NotifierCallback;

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/databinding/CallbackRegistry;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    .line 3
    :try_start_1
    iput-wide v2, v1, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    .line 4
    iput-object v0, v1, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    const/4 v0, 0x0

    .line 5
    iput v0, v1, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/ArrayList;

    .line 7
    iget-object v2, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Landroidx/databinding/CallbackRegistry;->isRemoved(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9
    iget-object v3, v1, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 10
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :cond_1
    monitor-exit p0

    return-object v1

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public final isRemoved(I)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x40

    const/4 v6, 0x0

    if-ge p1, v5, :cond_1

    shl-long/2addr v2, p1

    .line 1
    iget-wide p0, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    and-long/2addr p0, v2

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    return v4

    .line 2
    :cond_1
    iget-object p0, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    if-nez p0, :cond_2

    return v6

    .line 3
    :cond_2
    div-int/lit8 v7, p1, 0x40

    sub-int/2addr v7, v4

    .line 4
    array-length v8, p0

    if-lt v7, v8, :cond_3

    return v6

    .line 5
    :cond_3
    aget-wide v7, p0, v7

    .line 6
    rem-int/2addr p1, v5

    shl-long p0, v2, p1

    and-long/2addr p0, v7

    cmp-long p0, p0, v0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v4, v6

    :goto_1
    return v4
.end method

.method public final declared-synchronized notifyCallbacks(Ljava/lang/Object;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sender",
            "arg",
            "arg2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    .line 2
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    const/4 v8, -0x1

    if-nez v0, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    array-length v0, v0

    add-int/2addr v0, v8

    .line 4
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroidx/databinding/CallbackRegistry;->notifyRemainder(Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v4, v0, 0x40

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .line 5
    invoke-virtual/range {v1 .. v7}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;IIIJ)V

    .line 6
    iget p1, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    add-int/2addr p1, v8

    iput p1, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    .line 8
    array-length p1, p1

    add-int/2addr p1, v8

    :goto_1
    if-ltz p1, :cond_2

    .line 9
    iget-object p2, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v2, p2, p1

    cmp-long p2, v2, v0

    if-eqz p2, :cond_1

    add-int/lit8 p2, p1, 0x1

    mul-int/lit8 p2, p2, 0x40

    .line 10
    invoke-virtual {p0, p2, v2, v3}, Landroidx/databinding/CallbackRegistry;->removeRemovedCallbacks(IJ)V

    .line 11
    iget-object p2, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    aput-wide v0, p2, p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 12
    :cond_2
    iget-wide p1, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0, v2, p1, p2}, Landroidx/databinding/CallbackRegistry;->removeRemovedCallbacks(IJ)V

    .line 14
    iput-wide v0, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final notifyCallbacks(Ljava/lang/Object;IIIJ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "sender",
            "arg",
            "arg2",
            "startIndex",
            "endIndex",
            "bits"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;IIJ)V"
        }
    .end annotation

    const-wide/16 v0, 0x1

    :goto_0
    if-ge p3, p4, :cond_1

    and-long v2, p5, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 16
    iget-object v2, p0, Landroidx/databinding/CallbackRegistry;->mNotifier:Landroidx/databinding/CallbackRegistry$NotifierCallback;

    iget-object v3, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Landroidx/databinding/CallbackRegistry$NotifierCallback;->onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;I)V

    :cond_0
    const/4 v2, 0x1

    shl-long/2addr v0, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final notifyRemainder(Ljava/lang/Object;II)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sender",
            "arg",
            "arg2",
            "remainderIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;I)V"
        }
    .end annotation

    const/16 v0, 0x40

    if-gez p3, :cond_0

    .line 1
    iget-object p3, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2
    iget-wide v6, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;IIIJ)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v7, v1, p3

    add-int/lit8 v1, p3, 0x1

    mul-int/lit8 v5, v1, 0x40

    .line 4
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v5, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 p3, p3, -0x1

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/CallbackRegistry;->notifyRemainder(Ljava/lang/Object;II)V

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    .line 6
    invoke-virtual/range {v2 .. v8}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;IIIJ)V

    :goto_0
    return-void
.end method

.method public final removeRemovedCallbacks(IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startIndex",
            "removed"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x40

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-wide/high16 v2, -0x8000000000000000L

    :goto_0
    if-lt v0, p1, :cond_1

    and-long v4, p2, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    ushr-long/2addr v2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setRemovalBit(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    const/16 v0, 0x40

    const-wide/16 v1, 0x1

    if-ge p1, v0, :cond_0

    shl-long v0, v1, p1

    .line 1
    iget-wide v2, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    goto :goto_1

    .line 2
    :cond_0
    div-int/lit8 v3, p1, 0x40

    add-int/lit8 v3, v3, -0x1

    .line 3
    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    if-nez v4, :cond_1

    .line 4
    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int/2addr v4, v0

    new-array v4, v4, [J

    iput-object v4, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    goto :goto_0

    .line 5
    :cond_1
    array-length v4, v4

    if-gt v4, v3, :cond_2

    .line 6
    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int/2addr v4, v0

    new-array v4, v4, [J

    .line 7
    iget-object v5, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    array-length v6, v5

    const/4 v7, 0x0

    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iput-object v4, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    .line 9
    :cond_2
    :goto_0
    rem-int/2addr p1, v0

    shl-long v0, v1, p1

    .line 10
    iget-object p0, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v4, p0, v3

    or-long/2addr v0, v4

    aput-wide v0, p0, v3

    :goto_1
    return-void
.end method
