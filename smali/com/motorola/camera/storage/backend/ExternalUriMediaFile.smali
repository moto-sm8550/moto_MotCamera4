.class public Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;
.super Ljava/lang/Object;
.source "ExternalUriMediaFile.kt"

# interfaces
.implements Lcom/motorola/camera/storage/MediaFile;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExternalUriMediaFile.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExternalUriMediaFile.kt\ncom/motorola/camera/storage/backend/ExternalUriMediaFile\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,133:1\n1#2:134\n*E\n"
.end annotation


# instance fields
.field public final externalUri:Landroid/net/Uri;

.field public isFinished:Z

.field public writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->externalUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;
    .locals 1

    instance-of v0, p0, Lcom/motorola/camera/storage/SharedMediaFile;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/motorola/camera/storage/SharedMediaFile;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final asTemporaryFileMediaFile()Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;
    .locals 1

    instance-of v0, p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public delete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :cond_0
    :try_start_1
    iput-object v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    iput-boolean v1, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->isFinished:Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v2

    .line 4
    :try_start_2
    iput-object v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    :goto_0
    iput-boolean v1, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->isFinished:Z

    throw v0
.end method

.method public final finish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->isFinished:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    iput-object v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->isFinished:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->externalUri:Landroid/net/Uri;

    return-object p0
.end method

.method public final getWriteFd()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->isFinished:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const-string v0, "rw"

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->openFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p0

    return p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "isFinished is true"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getWriteFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->isFinished:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const-string v0, "rw"

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->openFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    const-string v0, "getWriteParcelFileDescriptor().fileDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "isFinished is true"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isFinished()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->isFinished:Z

    return p0
.end method

.method public openFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3

    const-string v0, "Failed to open "

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "getInstance()"

    .line 2
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->externalUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 5
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->externalUri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 7
    new-instance v1, Ljava/io/FileNotFoundException;

    .line 8
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->externalUri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public final openReadParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->isFinished:Z

    if-eqz v0, :cond_0

    const-string v0, "r"

    .line 2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->openFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "isFinished is false"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toMemento()Lcom/motorola/camera/storage/MediaFile$Memento;
    .locals 8

    .line 1
    new-instance v7, Lcom/motorola/camera/storage/MediaFile$Memento;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3
    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->isFinished:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->externalUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/storage/MediaFile$Memento;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/net/Uri;Lcom/motorola/camera/storage/MediaFilePath;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ExternalUriMediaFile(externalUri="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->externalUri:Landroid/net/Uri;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isFinished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-boolean v1, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->isFinished:Z

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", writeParcelFileDescriptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
