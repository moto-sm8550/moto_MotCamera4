.class public final Landroidx/room/util/CopyLock;
.super Ljava/lang/Object;
.source "CopyLock.java"


# static fields
.field public static final sThreadLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mCopyLockFile:Ljava/io/File;

.field public final mFileLevelLock:Z

.field public mLockChannel:Ljava/nio/channels/FileChannel;

.field public final mThreadLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/room/util/CopyLock;->sThreadLocks:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/io/File;

    const-string v1, ".lck"

    .line 3
    invoke-static {p1, v1}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/room/util/CopyLock;->mCopyLockFile:Ljava/io/File;

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 6
    sget-object p2, Landroidx/room/util/CopyLock;->sThreadLocks:Ljava/util/HashMap;

    monitor-enter p2

    .line 7
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 9
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iput-object v0, p0, Landroidx/room/util/CopyLock;->mThreadLock:Ljava/util/concurrent/locks/Lock;

    .line 12
    iput-boolean p3, p0, Landroidx/room/util/CopyLock;->mFileLevelLock:Z

    return-void

    :catchall_0
    move-exception p0

    .line 13
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final unlock()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/util/CopyLock;->mLockChannel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    :cond_0
    iget-object p0, p0, Landroidx/room/util/CopyLock;->mThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
